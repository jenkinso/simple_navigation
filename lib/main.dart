import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter 1.0',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'Flutter Navigator 1.0 Home Page'),
        '/pages/1': (context) => const Page1(),
        '/pages/2': (context) => const Page2(),
      },
    ),
  );
}

//INFO: The possible page transitions are
//a) Home Page -> Page 1
//b) Home Page -> Page 2
//c) Page 1 -> Home Page
//d) Page 1 -> Page 2
//e) Page 2 -> Page 1
//f) Page 2 -> Home Page

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
                Navigator.pushNamed(context, '/pages/1');
              },
              child: Text("Go To Page 1"),
            ),
            TextButton(
              onPressed: () {
                // demonstrating using MaterialPageRoute rather than pushNamed()
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Page2())
                );
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
                Navigator.pushNamed(context, '/pages/2');
              },
              child: Text('Go to Page 2'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
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
                Navigator.pop(context); // button text says 'Go Back' => so popping to Page1 or MyHomePage
              },
              child: Text('Go Back'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text('E.T Go Home'),
            ),
          ],
        ),
      ),
    );
  }
}