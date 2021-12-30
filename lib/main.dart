import 'package:flutter/material.dart';
import 'package:app2/getStart.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:app2/config.dart';

void main() async {
  runApp(myapp());
}
class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: home_page(),
    );
  }
}

//343434
class home_page extends StatefulWidget {
  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: ThemeData(fontFamily: 'GE_ar'),
        home: new SplashScreen(
          seconds: 5,
          routeName: "/",
          navigateAfterSeconds: GetStart(),
          title: new Text(
            'مرحبا بكم في تطبيق المطعم',
            style: new TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          /*image: new Image.network(
          'https://flutter.io/images/catalog-widget-placeholder.png'),*/
          backgroundColor: primaryColor,
          styleTextUnderTheLoader: new TextStyle(),
          photoSize: 100.0,
          onClick: () => print("restaurant"),
          loaderColor: Colors.white,
        ));
  }
}
