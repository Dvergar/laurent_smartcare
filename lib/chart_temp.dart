import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class Temperature {
  final int hour;
  final int value;

  Temperature(this.hour, this.value);
}

class TempChart extends StatefulWidget {
  final List<int> datas;
  TempChart({this.datas, Key key}) : super(key: key);

  @override
  _TempChartState createState() => _TempChartState();
}

class _TempChartState extends State<TempChart> {
  List<Temperature> prettyDatas = List();
  List<charts.Series<Temperature, int>> getDatas() {
    widget.datas
        .asMap()
        .forEach((index, temp) => prettyDatas.add(Temperature(index, temp)));

    return [
      charts.Series<Temperature, int>(
        id: 'Temperatures',
        domainFn: (tempData, _) => tempData.hour,
        measureFn: (tempData, _) => tempData.value,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        data: prettyDatas,
      )
    ];
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: SizedBox(
        height: 200,
        child: charts.LineChart(getDatas(),
            animate: false,
            primaryMeasureAxis: new charts.NumericAxisSpec(
                tickProviderSpec:
                    new charts.BasicNumericTickProviderSpec(zeroBound: false))),
      ),
    );
  }
}
