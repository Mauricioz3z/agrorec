

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;




class DetailsPage extends StatefulWidget {
  DetailsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DetailsPageState createState() => new _DetailsPageState();
}

class ClicksPerYear {
  final String year;
  final int clicks;
  final charts.Color color;

  ClicksPerYear(this.year, this.clicks, Color color)
      : this.color = new charts.Color(
            r: color.red, g: color.green, b: color.blue, a: color.alpha);
}

class _DetailsPageState extends State<DetailsPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var data = [
      new ClicksPerYear('Ca', 12, Colors.red),
      new ClicksPerYear('Mg', 13, Colors.yellow),
      new ClicksPerYear('Ctc', 11, Colors.green),//_counter
    ];

        var data2 = [
      new ClicksPerYear('Ca', 40, Colors.red),
      new ClicksPerYear('Mg',  50, Colors.yellow),
      new ClicksPerYear('Ctc', 60, Colors.green),//_counter
    ];

    var series = [
      new charts.Series(
        domainFn: (ClicksPerYear clickData, _) => clickData.year,
        measureFn: (ClicksPerYear clickData, _) => clickData.clicks,
        colorFn: (ClicksPerYear clickData, _) => clickData.color,
        id: 'Clicks',
        data: data,
      ),
    ];

        var series2 = [
      new charts.Series(
        domainFn: (ClicksPerYear clickData, _) => clickData.year,
        measureFn: (ClicksPerYear clickData, _) => clickData.clicks,
        colorFn: (ClicksPerYear clickData, _) => clickData.color,
        id: 'Clicks',
        data: data2,
      ),
    ];

    // var chart = new charts.BarChart<ClicksPerYear>(
    //   series,
    //   animate: true,
    // );
    var chart =new charts.BarChart(
      series,
      animate: true,
    );

    var chartWidget = new Padding(
      padding: new EdgeInsets.all(32.0),
      child: new SizedBox(
        height: 130,
        child: chart,
      ),
    );


  var chart2 =new charts.BarChart(
      series2,
      animate: true,
    );
   var chartWidget2 = new Padding(
      padding: new EdgeInsets.all(32.0),
      child: new SizedBox(
        height: 130,
        child: chart2,
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(

   child: Column(
   children: <Widget>[
   SizedBox(
          height: 250,
  child:   Card(
            
           child:  Column(
          

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           
            new Text(
              'Relátorio de performance do solo 2018',
            ),
            // new Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.display1,
            // ),
            chartWidget,
          ],
        )
        ),
),
   SizedBox(
          height: 250,
  child:   Card(
            
           child:  Column(
          

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           
            new Text(
              'Relátorio de performance do solo 2019',
            ),
            // new Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.display1,
            // ),
            chartWidget2,
          ],
        )
        ),
)
   ]

   ), 

         
       

         
       
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}