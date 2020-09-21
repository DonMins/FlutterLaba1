import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 15.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      width: 400,
                      child: Row(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.short_text),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.notifications_none),
                          padding: EdgeInsets.only(left: 300.0),
                          color: Colors.black,
                          onPressed: () {},
                        )
                      ]))
                ],
              )),
          Padding(
              padding: EdgeInsets.only(left: 22.0, top: 10.0),
              child: Row(children: <Widget>[
                Text("Todays Surveys",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 29.0))
              ])),
          Padding(
              padding: EdgeInsets.only(left: 22.0, top: 7.0),
              child: Row(children: <Widget>[
                Text(
                  "5 upcoming surveys",
                  style: TextStyle(color: Colors.grey),
                )
              ])),
          Container(
              padding: EdgeInsets.only(top: 15.0, left: 22.0),
              height: 70,
              child: Row(children: <Widget>[
                Container(
                  width: 170.0,
                  child: OutlineButton(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Center(
                        child: Container(
                            child: Row(children: <Widget>[
                      Container(
                        height: 30.0,
                        width: 30.0,
                        child: new Icon(Icons.gesture, color: Colors.white),
                        decoration: new BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: new BorderRadius.circular(5.0)),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10.0)),
                      Text("Science",
                          style: TextStyle(
                            color: Colors.black,
                          ))
                    ]))),
                    onPressed: null,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 20.0)),
                Container(
                    width: 170.0,
                    height: 70.0,
                    child: OutlineButton(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Center(
                            child: Container(
                                child: Row(children: <Widget>[
                          Container(
                            height: 30.0,
                            width: 30.0,
                            child: new Icon(Icons.scanner, color: Colors.white),
                            decoration: new BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: new BorderRadius.circular(5.0)),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10.0)),
                          Text(
                            "Social",
                            style: TextStyle(color: Colors.black),
                          )
                        ]))),
                        onPressed: null,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0))))
              ])),
          Container(
              padding: EdgeInsets.only(top: 15.0, left: 22.0),
              height: 70,
              child: Row(children: <Widget>[
                Container(
                  width: 170.0,
                  child: OutlineButton(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Center(
                        child: Container(
                            child: Row(children: <Widget>[
                      Container(
                        height: 30.0,
                        width: 30.0,
                        child: new Icon(Icons.terrain, color: Colors.white),
                        decoration: new BoxDecoration(
                            color: Colors.lightGreenAccent,
                            borderRadius: new BorderRadius.circular(5.0)),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10.0)),
                      Text("Teach",
                          style: TextStyle(
                            color: Colors.black,
                          ))
                    ]))),
                    onPressed: null,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 20.0)),
                Container(
                    width: 170.0,
                    height: 70.0,
                    child: OutlineButton(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Center(
                            child: Container(
                                child: Row(children: <Widget>[
                          Container(
                            height: 30.0,
                            width: 30.0,
                            child: new Icon(Icons.gavel, color: Colors.white),
                            decoration: new BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: new BorderRadius.circular(5.0)),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10.0)),
                          Text(
                            "Gaming",
                            style: TextStyle(color: Colors.black),
                          )
                        ]))),
                        onPressed: null,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0))))
              ])),
          Container(
              padding: EdgeInsets.only(top: 15.0, left: 22.0),
              height: 70,
              child: Row(children: <Widget>[
                Container(
                  width: 170.0,
                  child: OutlineButton(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Center(
                        child: Container(
                            child: Row(children: <Widget>[
                      Container(
                        height: 30.0,
                        width: 30.0,
                        child: new Icon(Icons.history, color: Colors.white),
                        decoration: new BoxDecoration(
                            color: Colors.pinkAccent,
                            borderRadius: new BorderRadius.circular(5.0)),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10.0)),
                      Text("History",
                          style: TextStyle(
                            color: Colors.black,
                          ))
                    ]))),
                    onPressed: null,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 20.0)),
                Container(
                    width: 170.0,
                    height: 70.0,
                    child: OutlineButton(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Center(
                            child: Container(
                                child: Row(children: <Widget>[
                          Container(
                            height: 30.0,
                            width: 30.0,
                            child: new Icon(Icons.account_balance,
                                color: Colors.white),
                            decoration: new BoxDecoration(
                                color: Colors.lightGreenAccent,
                                borderRadius: new BorderRadius.circular(5.0)),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10.0)),
                          Text(
                            "Analytics",
                            style: TextStyle(color: Colors.black),
                          )
                        ]))),
                        onPressed: null,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0))))
              ])),
          Padding(
              padding: EdgeInsets.only(left: 22.0, top: 30.0),
              child: Row(children: <Widget>[
                Text("All Surveys",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 29.0))
              ])),
          Container(
            height: MediaQuery.of(context).size.height - 300,
            child: ListView(
              children: [
                _getIconSurveys("icon/1.jpg", 'Food Survey'),
                _getIconSurveys("icon/2.jpg", 'Business Survey'),
                _getIconSurveys("icon/3.jpg", 'Travel Survey'),
              ],
            ),
          )
        ]));
  }

  Widget _getIconSurveys(String imgPath, String name) {
    return Padding(
        padding: EdgeInsets.only(left: 22, right: 10, top: 10),
        child: InkWell(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(

                  child: Row(
                    children: [
                      Hero(
                        tag: imgPath,
                        child: Image(
                          image: AssetImage(imgPath),
                          fit: BoxFit.cover,
                          height: 50.0,
                          width: 50.0,
                        ),
                      ),
                      SizedBox(width: 10),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}
