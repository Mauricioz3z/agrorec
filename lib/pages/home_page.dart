import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
var controller = new MoneyMaskedTextController(decimalSeparator: '.');// new MaskedTextController(mask: '000.00');

  @override
  Widget build(BuildContext context) {
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
                 keyboardType:TextInputType.number, //TextInputType.numberWithOptions(decimal: false),
                decoration: new InputDecoration(
                  hintText: 'Ca da analise de solo',
                  labelText: 'Ca:'
                )
              ),
                 new TextFormField(
           
                keyboardType: TextInputType.number, 
                decoration: new InputDecoration(
                  hintText: 'Mg da analise de solo',
                  labelText: 'Mg:'
                )
              ),
              new TextFormField(
            
                keyboardType: TextInputType.number, 
                decoration: new InputDecoration(
                  hintText: 'CTC da analise de solo',
                  labelText: 'CTC:'
                )
              ),
              new TextFormField(
              
                keyboardType: TextInputType.number, 
                decoration: new InputDecoration(
                  hintText: 'V% da analise de solo',
                  labelText: 'V%:'
                )
              ),
              new TextFormField(
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
                child: new RaisedButton(
                  child: new Text(
                    'Gerar Resultado',
                    style: new TextStyle(
                      color: Colors.white
                    ),
                  ),
                  onPressed: () => null,
                  color: Colors.blue,
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
}
