// import 'package:agrorecflutter/Widget/Cultura.dart';
// import 'package:flutter/material.dart';

// class CulturasPage extends StatefulWidget {
//   // CulturasPage({Key key, this.title, this.cultura}) : super(key: key);



//   final String title;
//   final Cultura cultura;

//   CulturasPage(Cultura cultura, this.title)
//       : cultura = cultura,
//         super(key: new ObjectKey(cultura));

//   @override
//   _CulturasPageState createState() => _CulturasPageState(cultura);
// }






// class _CulturasPageState extends State<CulturasPage> {
//  final Cultura cultura;
// _CulturasPageState(this.cultura);

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//   appBar: new AppBar(
//           title: new Text("cultura List"),
//         ),
   
//     body: Center(
//       child: Text('Culturas pora!!!'),
//     ),

//     );
//   }
// }

import 'package:agrorecflutter/Widget/CulturaListItem.dart';
import 'package:flutter/material.dart';
import 'package:agrorecflutter/Widget/Cultura.dart';

class CulturaPage extends StatefulWidget {
  CulturaPage({Key key, this.cultura}) :super(key: key);
 
  final List<Cultura> cultura;
 
  @override
  _CulturaPageState createState() {
    return new _CulturaPageState();
  }
}
 
class _CulturaPageState extends State<CulturaPage> {
 
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
              new RaisedButton(onPressed: () {
                for (Cultura p in widget.cultura) {
                  if (p.isCheck)
                    print(p.name);
                }
              },
                child: new Text('Save'),
              )
            ],
          ),
        )
    );
  }
}

void main() {
  runApp(new MaterialApp(
    title: 'Demo App',
    home: new CulturaPage(cultura:
      [
        new Cultura('Tanzania','assets/culturas/tanzania.png',false),
        new Cultura('Flour','assets/person.png',false),
        new Cultura('Chocolate chips','assets/person.png',false),
   
      ],),
  ));
}