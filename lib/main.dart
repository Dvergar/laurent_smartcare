import 'package:flutter/material.dart';
import 'package:gs_bluetooth/bloc_temp.dart';
import 'package:gs_bluetooth/chart_temp.dart';
import 'package:gs_bluetooth/bloc_bluetooth.dart';


class CONST
{
  static const SERVER_IP = "192.168.1.10";
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff94e6fc),
      ),
      home: MyHomePage(title: 'Lorenzo Smartcare'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  BlocTemp blocTemp;
  BlocBluetooth blocBluetooth;

  @override
  void initState() {
    this.blocBluetooth = BlocBluetooth();
    this.blocTemp = BlocTemp();
    blocTemp.update();
    super.initState();
  }

  @override
  void dispose() {
    blocBluetooth.dispose();
    blocTemp.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Text("Temperatures",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.grey)),
            ),
            StreamBuilder(
              stream: blocTemp.stream,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) return Text('Loading chart...');

                return TempChart(datas: snapshot.data);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Bluetooth LE devices scanned",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            StreamBuilder(
              stream: blocBluetooth.stream,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) return Text('Loading bluetooth...');
                return ListView.separated(
                  shrinkWrap: true,
                  itemCount: blocBluetooth.devices.length,
                  separatorBuilder: (context, index) => Divider(
                        color: Colors.black,
                      ),
                  itemBuilder: (context, index) {
                    print(blocBluetooth.devices);
                    return Center(child: Text(blocBluetooth.devices[index]));
                  },
                );
              },
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
