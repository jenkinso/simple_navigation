import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//INFO: The possible page transitions are
//a) Home Page -> Page 1
//b) Home Page -> Page 2
//c) Page 1 -> Home Page
//d) Page 1 -> Page 2
//e) Page 2 -> Page 1
//f) Page 2 -> Home Page

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 1.0',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Navigator 1.0 Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Home Page',
            ),
            TextButton(
              onPressed: () {
                //TODO: write the navigator code to go to Page 1
                //you can either create a MaterialPageRoute or use
                //named routes whichever you prefer
              },
              child: Text("Go To Page 1"),
            ),
            TextButton(
              onPressed: () {
                //TODO: write the navigator code to go to Page 2
                //you can either create a MaterialPageRoute or use
                //named routes whichever you prefer
              },
              child: Text("Go To Page 2"),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Page 1 Landing'),
            TextButton(
              onPressed: () {
                //TODO: write the navigator code to go to Page 2
                //you can either create a MaterialPageRoute or use
                //named routes whichever you prefer
              },
              child: Text('Go to Page 2'),
            ),
            TextButton(
              onPressed: () {
                //TODO: write the navigator code to go to Home Page
                //you can either create a MaterialPageRoute or use
                //named routes whichever you prefer
              },
              child: Text('E.T Go Home'),
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Page 2 Landing'),
            TextButton(
              onPressed: () {
                //TODO: write the navigator code to go to Page 1
                //you can either create a MaterialPageRoute or use
                //named routes whichever you prefer
              },
              child: Text('Go Back'),
            ),
            TextButton(
              onPressed: () {
                //TODO: write the navigator code to go to Home Page
                //you can either create a MaterialPageRoute or use
                //named routes whichever you prefer
              },
              child: Text('E.T Go Home'),
            ),
          ],
        ),
      ),
    );
  }
}