import 'package:agrorecflutter/pages/details_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(

   
    body:
     new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/bg3.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child:  /* add child content here */
Padding(

  padding: EdgeInsets.all(8.0),

  child: Column(
       
       mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      new Container(
      margin: const EdgeInsets.only(bottom: 30),
 
        
     child:  Image.asset('assets/agro.png',width:200)
   
      ), 

      
  ButtonTheme(
    height: 50,
minWidth: double.infinity,
 child:
 new Container(
    margin: const EdgeInsets.only(bottom: 10.0),
    child :  RaisedButton(
              
             color: Colors.green,
              textColor:Colors.white,  
              onPressed:(){Navigator.of(context).pushNamed('/home'); }, child: Text('Calagem'))
    
 )
 

  ),
  ButtonTheme(
     height: 50,
  minWidth: double.infinity,
 child:
   new Container(
    margin: const EdgeInsets.only(bottom: 10.0),
   child:  RaisedButton(
            
            color: Colors.blue,
              textColor:Colors.white,  
              onPressed:(){Navigator.of(context).pushNamed('/settings'); }, child: Text('Adubação')
              
              )
    
    )

  ),

  ButtonTheme(
     height: 50,
minWidth: double.infinity,
 child:
  new Container(
    margin: const EdgeInsets.only(bottom: 10.0),
    child: RaisedButton(
            
            color: Colors.orange,
              textColor:Colors.white,  
              onPressed:(){Navigator.of(context).pushNamed('/settings'); }, child: Text('Cotação'))
    
    )
 

  ),

  ButtonTheme(
     height: 50,
minWidth: double.infinity,
 child:
  new Container(
    margin: const EdgeInsets.only(bottom: 10.0),
    child: RaisedButton(
            
            color: Colors.red,
              textColor:Colors.white,  
              onPressed:(){Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=>DetailsPage(
                        msg:"Esta mensagem veio da página inicial!"
                      )  

              )); }, child: Text('Detalhes'))
    
    )
 

  ),


      ],
    )
)


      ),

      


    

    );
  }
}
