import 'package:flutter/material.dart';
import 'package:stardisplay/starRating.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double rating = 3.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Star Rating"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: StarRating(
                rating: rating,
                onRatingChanged: (rating) =>
                    setState(() => this.rating = rating),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
