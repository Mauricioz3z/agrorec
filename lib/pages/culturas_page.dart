import 'package:agrorecflutter/pages/Cultura/Cultura.dart';
import 'package:agrorecflutter/pages/Cultura/CulturaListItem.dart';
import 'package:flutter/material.dart';

// class CulturasPage extends StatefulWidget {
//   CulturasPage({Key key, this.title}) : super(key: key);


//   final String title;

//   @override
//   _CulturasPageState createState() => _CulturasPageState();
// }

// class _CulturasPageState extends State<CulturasPage> {



//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(

   
//     body: Center(
//       child: Text('Páginas de culturas'),
//     ),

//     );
//   }
// }


class CulturasPage extends StatefulWidget {
  CulturasPage({Key key, this.cultura}) :super(key: key);
 
  final List<Cultura> cultura;
 
  @override
  _CulturasPageState createState() {
    return new _CulturasPageState();
  }
}
 
class _CulturasPageState extends State<CulturasPage> {
 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("cultura List"),
        ),
        body: new Container(
          padding: new EdgeInsets.all(8.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              new Expanded(child: new ListView(
                padding: new EdgeInsets.symmetric(vertical: 8.0),
                children: widget.cultura.map((Cultura cultura) {
                  
                  return new CulturaListItem(cultura);
                }).toList(),
              )),
              // new RaisedButton(onPressed: () {
              //   for (Cultura p in widget.cultura) {
              //     if (p.isCheck)
              //       print(p.name);
              //   }
              // },
              //   child: new Text('Save'),
              // )
            ],
          ),
        )
    );
  }
}