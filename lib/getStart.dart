import 'package:app2/config.dart';
import 'package:app2/tips.dart';
import 'package:flutter/material.dart';

class GetStart extends StatefulWidget {
  @override
  _GetStartState createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height / 3;
    return Scaffold(
      body: new Container(

          child: Column(

        children: <Widget>[
          new Container(
            height: myheight * 2,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("images/tip0.png"), fit: BoxFit.fill)),
          ),
          new Container(
            height: myheight,
            padding: EdgeInsets.only(
              right: 15.0,
              left: 15,
            ),
            decoration: BoxDecoration(
                color: primaryColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                  )
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: ListView(
              children: <Widget>[
                Column(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "اشهى المأكولات",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(

                        "افضل المأكولات تجدونها في مطعمنا العديد من المأكولات لدينا",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Tips();
                          }));
                        },
                        child: Container(
                            padding: EdgeInsets.only(
                                left: 30.0, right: 30.0, top: 5.0, bottom: 5.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              "ابدأ من هنا",
                              style: TextStyle(fontSize: 20.0),
                            )),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
