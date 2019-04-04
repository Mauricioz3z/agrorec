import 'package:agrorecflutter/custom_icons_icons.dart';

import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
var controllerCa = new MoneyMaskedTextController(decimalSeparator: '.');// new MaskedTextController(mask: '000.00');
var controllerMg = new MoneyMaskedTextController(decimalSeparator: '.');// new MaskedTextController(mask: '000.00');
var controllerCtc = new MoneyMaskedTextController(decimalSeparator: '.');// new MaskedTextController(mask: '000.00');
var controllerV = new MoneyMaskedTextController(decimalSeparator: '.');// new MaskedTextController(mask: '000.00');
var controllerprnt = new MoneyMaskedTextController(decimalSeparator: '.');

  String barcode = "";
  
 String ca ="";
 String mg ="";
 String ctc ="";
 String v  ="";

  @override
  Widget build(BuildContext context) {
    setState(() {
       controllerprnt.text="10000"; 
    });
  final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
     appBar: AppBar(
       automaticallyImplyLeading: false,
       title:Text('Calagem'),
     ),
   
    body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Form(
          key: this._formKey,
          child: new ListView(
            children: <Widget>[
              new TextFormField(
                controller:controllerCa,
                 keyboardType:TextInputType.number, //TextInputType.numberWithOptions(decimal: false),
                decoration: new InputDecoration(
                  hintText: 'Ca da analise de solo',
                  labelText: 'Ca:'
                )
              ),
                 new TextFormField(
                controller:controllerMg,
                keyboardType: TextInputType.number, 
                decoration: new InputDecoration(
                  hintText: 'Mg da analise de solo',
                  labelText: 'Mg:'
                )
              ),
              new TextFormField(
                controller: controllerCtc,
                keyboardType: TextInputType.number, 
                decoration: new InputDecoration(
                  hintText: 'CTC da analise de solo',
                  labelText: 'CTC:'
                )
              ),
              new TextFormField(
              controller:controllerV ,
                keyboardType: TextInputType.number, 
                decoration: new InputDecoration(
                  hintText: 'V% da analise de solo',
                  labelText: 'V%:'
                )
              ),
              new TextFormField(
                controller: controllerprnt,
                keyboardType: TextInputType.number, 
                decoration: new InputDecoration(
                  hintText: 'PRNT da analise de solo',
                  labelText: 'PRNT:',
                )
              ),
              // new TextFormField(
              //   obscureText: true, // Use secure text for passwords.
              //   decoration: new InputDecoration(
              //     hintText: 'Password',
              //     labelText: 'Enter your password'
              //   )
              // ),
              new Container(
                width: screenSize.width,
                child:Column(
                  children: <Widget>[


                RawMaterialButton(
      fillColor: Colors.green,
      splashColor: Colors.grey,
      textStyle: TextStyle(color: Colors.white),
      child: Row(
        mainAxisSize: MainAxisSize.max,
         
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
           Icon(MyFlutterApp.qrcode),Text('Ler Código')
           
           ],
      ),
      onPressed: ()=>{scan()},
    ),
  //  Padding(
  //               padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
  //               child: Text(barcode, textAlign: TextAlign.center,),
  //             ),

    
                RawMaterialButton(
      fillColor: Colors.blue,
      splashColor: Colors.grey,
      textStyle: TextStyle(color: Colors.white),
      child: Row(
        mainAxisSize: MainAxisSize.max,
         
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
           Icon(Icons.check),Text('Gerar Resultado')
           
           ],
      ),
      onPressed: ()=>{ },
    )
    
    
                  ]
                ),
          
                margin: new EdgeInsets.only(
                  top: 20.0

                ),
              )
            ],
          ),
        )
      ),
  
    );

  
  }

    Future scan() async {
    
    try {
      
      String barcode = await BarcodeScanner.scan();
        Map<String, dynamic> data = jsonDecode(barcode); 
        
      setState(() => this.barcode = "");
      setState(() => controllerCa.text = data['ca']);
      setState(() => controllerMg.text = data['mg']);
      setState(() => controllerCtc.text = data['ctc']);
      setState(() => controllerV.text= data['v']);


       
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException{
      setState(() => this.barcode = 'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }
}
