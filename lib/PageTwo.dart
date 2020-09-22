import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/HomePage.dart';

class PageTwo extends StatelessWidget {
 const PageTwo({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 15.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                //Center Row contents horizontally,
                children: <Widget>[
                  Container(
                    width: 220,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            color: Colors.black,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                            },
                          ),
                          Center(
                              child: Row(children: [
                            Text("2",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                            Text(" of 10",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    color: Colors.grey))
                          ]))
                        ]),
                  ),
                ],
              )),
          Center(
            child: Container(
              width: 360,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: LinearProgressIndicator(
                  backgroundColor: new Color.fromRGBO(245, 248, 247, 1),
                  valueColor: new AlwaysStoppedAnimation<Color>(
                      new Color.fromRGBO(73, 176, 230, 1)),
                  value: 2 / 10,
                ),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 22.0, top: 20.0),
              child: Row(children: <Widget>[
                Text("Which one of the \nfollowing is the \ngreatest circle?",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 29.0))
              ])),
          _getButton("Arctic Circle", null,null),
          _getButton(
            "Equator",
            new Color.fromRGBO(73, 176, 230, 1),
            BorderSide(width: 2, color: new Color.fromRGBO(73, 176, 230, 1)),
          ),
          _getButton("Tropic of cancer",null,null),
          _getButton("Tropic of capricon",null,null),
          Container(
            padding: EdgeInsets.only(left: 25, top: 50.0, right: 25),
            height: 120,
            child: Container(
              decoration: new BoxDecoration(
                  color: new Color.fromRGBO(56, 90, 186, 1),
                  borderRadius: new BorderRadius.circular(10.0)),
              child: OutlineButton(
                child: Text("Next",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontFamily: '',
                    )),
                onPressed: () {
                  // Navigate to second route when tapped.
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
              ),
            ),
          ),
        ]));
  }

  Widget _getButton(String textName, Color color, BorderSide borderSide) {
    if (color == null) {
      color = Colors.black;
    }
    return Container(
        padding: EdgeInsets.only(top: 20.0, left: 22.0),
        height: 80,
        child: Row(children: <Widget>[
          Container(
            width: 360.0,
            child: OutlineButton(
              padding: EdgeInsets.only(left: 10.0),
              child: Center(
                  child: Container(
                      child: Row(children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 20.0)),
                Text(textName,
                    style: TextStyle(
                      color: color,
                      fontSize: 18.0,
                      fontFamily: '',
                    ))
              ]))),
              onPressed: () {
                // Navigate to second route when tapped.
              },
              borderSide: borderSide,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)),
            ),
          ),
        ]));
  }
}
