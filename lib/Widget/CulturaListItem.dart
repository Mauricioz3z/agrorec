
import 'package:agrorecflutter/Widget/Cultura.dart';
import 'package:flutter/material.dart';

class CulturaListItem extends StatefulWidget {
  // CulturasPage({Key key, this.title, this.cultura}) : super(key: key);




  final Cultura cultura;

  CulturaListItem(Cultura cultura)
      : cultura = cultura,
        super(key: new ObjectKey(cultura));

  @override
  _CulturaListItemState createState() => _CulturaListItemState(cultura);
}






class _CulturaListItemState extends State<CulturaListItem> {
 final Cultura cultura;
_CulturaListItemState(this.cultura);

  @override
  Widget build(BuildContext context) {

return new ListTile(
        onTap:null,
        leading: new CircleAvatar(
          backgroundColor: Colors.blue,
          child: new Image(image: new AssetImage(cultura.avatarImage)),
        ),
        title: new Row(
          children: <Widget>[
            new Expanded(child: new Text(cultura.name)),
            new Checkbox(value: cultura.isCheck, onChanged: (bool value) {
              setState(() {
                cultura.isCheck = value;
              });
            })
          ],
        )
    );
  }
}
