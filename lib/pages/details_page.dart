import 'package:flutter/material.dart';

// class DetailsPage extends StatelessWidget {
 
//   final String title;

//   @override
//   _DetailsPageState createState() => _DetailsPageState();
// }

// class _DetailsPageState extends State<DetailsPage> {



//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(

   
//     body:Container(
//    color: Colors.cyan,
//       child: Center(
//       child: Text('Details pora!!!'),
//     ),

//     )   
//     );
//   }
// }


class DetailsPage extends StatelessWidget {
   
   final String msg;
   DetailsPage({Key key,@required this.msg }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(

   
    body:Container(
   color: Colors.cyan,
      child: Center(
      child: Text(msg),
    ),

    )   
    );

  }
}
