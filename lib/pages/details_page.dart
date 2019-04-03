

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

class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}

class LinearElementos {
  final String year;
  final int sales;

  LinearElementos(this.year, this.sales);
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
      new ClicksPerYear('Ctc', _counter, Colors.green),//_counter
    ];

      var data2 = [
      new ClicksPerYear('Ca', 40, Colors.red),
      new ClicksPerYear('Mg',  50, Colors.yellow),
      new ClicksPerYear('Ctc', _counter, Colors.green),//_counter
    ];

    //   var data3 = [
    //   new LinearSales(2019, 40, Colors.red),
    //   new LinearSales(2018,  50, Colors.yellow),
    //   new LinearSales(2017, _counter, Colors.green),//_counter
    // ];
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

    
    //     var series3 = [
    //   new charts.Series(
    //     domainFn: (LinearSales clickData, _) => clickData.year,
    //     measureFn: (LinearSales clickData, _) => clickData.sales,
    //     colorFn: (LinearSales clickData, _) => clickData.color,
    //     id: 'Sales',
    //     data: data3,
    //   ),
    // ];


    

    // var chart = new charts.BarChart<ClicksPerYear>(
    //   series,
    //   animate: true,
    // );

 var chart =new charts.BarChart(
      series,
      animate: true,
      barGroupingType: charts.BarGroupingType.stacked,
      // vertical: false,
    );

    var chart3 =new charts.LineChart(
      _createSampleData(),
      defaultRenderer:
            new charts.LineRendererConfig(includeArea: true, stacked: true),
      animate: true,
      
    );


    var chart4 =new charts.PieChart(
      _createSampleDataPizza(),
       defaultRenderer: new charts.ArcRendererConfig(arcRendererDecorators: [
          new charts.ArcLabelDecorator(
              labelPosition: charts.ArcLabelPosition.outside)
        ]),
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
      barGroupingType: charts.BarGroupingType.stacked,
      vertical: false,
    );

   var chartWidget2 = new Padding(
      padding: new EdgeInsets.all(32.0),
      child: new SizedBox(
        height: 130,
        child: chart2,
      ),
    );





   var chartWidget3 = new Padding(
      padding: new EdgeInsets.all(32.0),
      child: new SizedBox(
        height: 130,
        child: chart3,
      ),
    );

   var chartWidget4 = new Padding(
      padding: new EdgeInsets.all(32.0),
      child: new SizedBox(
        height: 130,
        child: chart4,
      ),
    );


    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body:LayoutBuilder(
  builder: (BuildContext context, BoxConstraints viewportConstraints) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: viewportConstraints.maxHeight,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              // A fixed-height child.
              // color: Colors.yellow,
              // height: 120.0,
              child:    SizedBox(
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
            ),
                 Container(
              // Another fixed-height child.

              // color: Colors.green,
              // height: 120.0,
   child:SizedBox(
          height: 250,
  child:   Card(
            
           child:  Column(
          

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           
            new Text(
              'Expectativa para 2020',
            ),
            // new Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.display1,
            // ),
            chartWidget4,
          ],
        )
        ),
)
            ),
            Container(
              // Another fixed-height child.
              // color: Colors.green,
              // height: 120.0,
   child:SizedBox(
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
            ),
              Container(
              // Another fixed-height child.

              // color: Colors.green,
              // height: 120.0,
   child:SizedBox(
          height: 250,
  child:   Card(
            
           child:  Column(
          

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           
            new Text(
              'Expectativa para 2020',
            ),
            // new Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.display1,
            // ),
            chartWidget3,
          ],
        )
        ),
)
            )
          ],
        ),
      ),
    );
  },
) 
      
     ,
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }


static List<charts.Series<LinearSales, int>> _createSampleData() {
    final myFakeDesktopData = [
      new LinearSales(0, 5),
      new LinearSales(1, 25),
      new LinearSales(2, 100),
      new LinearSales(3, 75),
    ];

    var myFakeTabletData = [
      new LinearSales(0, 10),
      new LinearSales(1, 50),
      new LinearSales(2, 200),
      new LinearSales(3, 150),
    ];

    var myFakeMobileData = [
      new LinearSales(0, 15),
      new LinearSales(1, 75),
      new LinearSales(2, 300),
      new LinearSales(3, 225),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Desktop',
        // colorFn specifies that the line will be blue.
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        // areaColorFn specifies that the area skirt will be light blue.
        areaColorFn: (_, __) =>
            charts.MaterialPalette.blue.shadeDefault.lighter,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: myFakeDesktopData,
      ),
      new charts.Series<LinearSales, int>(
        id: 'Tablet',
        // colorFn specifies that the line will be red.
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        // areaColorFn specifies that the area skirt will be light red.
        areaColorFn: (_, __) => charts.MaterialPalette.red.shadeDefault.lighter,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: myFakeTabletData,
      ),
      new charts.Series<LinearSales, int>(
        id: 'Mobile',
        // colorFn specifies that the line will be green.
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        // areaColorFn specifies that the area skirt will be light green.
        areaColorFn: (_, __) =>
            charts.MaterialPalette.green.shadeDefault.lighter,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: myFakeMobileData,
      ),
    ];
  }

  static List<charts.Series<LinearElementos, String>> _createSampleDataPizza() {
    final data = [
      new LinearElementos('Cálcio', 100),
      new LinearElementos('Magnésio', 75),
      new LinearElementos('CTC', 25),
      new LinearElementos('N', 100),
    ];

    return [
      new charts.Series<LinearElementos, String>(
        id: 'Sales',
        domainFn: (LinearElementos sales, _) => sales.year,
        measureFn: (LinearElementos sales, _) => sales.sales,
        data: data,
        // Set a label accessor to control the text of the arc label.
        labelAccessorFn: (LinearElementos row, _) => '${row.year}: ${row.sales}',
      )
    ];
  }
}

















