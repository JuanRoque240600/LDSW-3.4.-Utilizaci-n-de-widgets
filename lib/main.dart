import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white10),
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: Scaffold(
        body: Row(
          children: <Widget>[
            // Content of my Row

            //Item 1/4
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.red,
              child: const Text.rich(
                TextSpan(
                  text: 'Hello', // default text style
                  children: <TextSpan>[
                    TextSpan(
                        text: ' beautiful ',
                        style: TextStyle(fontStyle: FontStyle.italic)),
                    TextSpan(
                        text: 'world',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),

            //Item 2/4
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.yellow,
              child: const Text.rich(
                TextSpan(
                  text: 'Hello', // default text style
                  children: <TextSpan>[
                    TextSpan(
                        text: ' beautiful ',
                        style: TextStyle(fontStyle: FontStyle.italic)),
                    TextSpan(
                        text: 'world',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),

            //Item 3/4
            SizedBox(
              width: 250,
              height: 250,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.white,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.black.withAlpha(0),
                          Colors.black12,
                          Colors.black45
                        ],
                      ),
                    ),
                    child: const Text(
                      'Foreground Text',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                ],
              ),
            ),

            //Item 4/4
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.green,
              child: const Text.rich(
                TextSpan(
                  text: 'Hello', // default text style
                  children: <TextSpan>[
                    TextSpan(
                        text: ' beautiful ',
                        style: TextStyle(fontStyle: FontStyle.italic)),
                    TextSpan(
                        text: 'world',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
