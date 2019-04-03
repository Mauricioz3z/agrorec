
import 'package:agrorecflutter/pages/Cultura/Cultura.dart';
import 'package:flutter/material.dart';

class CulturaListItem extends StatefulWidget{

  final Cultura cultura;

  CulturaListItem(Cultura cultura)
      : cultura = cultura,
        super(key: new ObjectKey(cultura));

  @override
  CulturaListItemState createState() {
    return new CulturaListItemState(cultura);
  }
}
class CulturaListItemState extends State<CulturaListItem> {

  final Cultura cultura;

  CulturaListItemState(this.cultura);


  @override
  Widget build(BuildContext context) {

 return Center(
  child: Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
   new ListTile(
        onTap:()=>Navigator.of(context).pushNamed('/home'),
        leading: new CircleAvatar(
          backgroundColor: Colors.blue,
          child: new Image(image: new AssetImage(cultura.avatarImage)),
        ),
        title: new Row(
          children: <Widget>[
            new Expanded(child: new Text(cultura.name)),
            // new Checkbox(value: cultura.isCheck, onChanged: (bool value) {
            //   setState(() {
            //     cultura.isCheck = value;
            //   });
            // })
            
          ],
        ),
          subtitle: Text('V% : 70'),
    ),
        // ButtonTheme.bar( // make buttons use the appropriate styles for cards
        //   child: ButtonBar(
        //     children: <Widget>[
        //       FlatButton(
        //         child: const Text('BUY TICKETS'),
        //         onPressed: () { /* ... */ },
        //       ),
        //       FlatButton(
        //         child: const Text('LISTEN'),
        //         onPressed: () { /* ... */ },
        //       ),
        //     ],
        //   ),
        // ),
      ],
    ),
  ),
);



    

  }
}












