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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
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
          _getRowButtons("Science", Colors.blueAccent, Icons.gesture, "Social",
              Colors.pinkAccent, Icons.scanner),
          _getRowButtons("Teach", Colors.lightGreenAccent, Icons.terrain,
              "Gaming", Colors.blueAccent, Icons.gavel),
          _getRowButtons("History", Colors.pinkAccent, Icons.history,
              "Analytics", Colors.lightGreenAccent, Icons.account_balance),
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
                _getIconSurveys("icon/1.jpg", 'Food Survey', 4 / 15, "4/15"),
                _getIconSurveys(
                    "icon/2.jpg", 'Business Survey', 1 / 10, "1/10"),
                _getIconSurveys("icon/3.jpg", 'Travel Survey', 4 / 5, "4/5"),
              ],
            ),
          )
        ]));
  }

  Widget _getRowButtons(
    String textName1,
    Color color1,
    IconData icon1,
    String textName2,
    Color color2,
    IconData icon2,
  ) {
    return Container(
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
                  child: new Icon(icon1, color: Colors.white),
                  decoration: new BoxDecoration(
                      color: color1,
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
                Padding(padding: EdgeInsets.only(left: 10.0)),
                Text(textName1,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ))
              ]))),
              onPressed: () {
                // Navigate to second route when tapped.
              },
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 20.0)),
          Container(
              width: 170.0,
              height: 70.0,
              child: OutlineButton(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Center(
                      child: Container(
                          child: Row(children: <Widget>[
                    Container(
                      height: 30.0,
                      width: 30.0,
                      child: new Icon(icon2, color: Colors.white),
                      decoration: new BoxDecoration(
                          color: color2,
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10.0)),
                    Text(
                      textName2,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ]))),
                  onPressed: () {
                    // Navigate to second route when tapped.
                  },
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0))))
        ]));
  }

  Widget _getIconSurveys(
      String imgPath, String name, double percent, description) {
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
                        children: <Widget>[
                          Container(
                            width: 300,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    name,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    description,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ]),
                          ),
                          Center(
                              child: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Container(
                              width: 300,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: LinearProgressIndicator(
                                  backgroundColor: Colors.grey,
                                  valueColor: new AlwaysStoppedAnimation<Color>(
                                      Colors.blueAccent),
                                  value: percent,
                                ),
                              ),
                            ),
                          )),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
