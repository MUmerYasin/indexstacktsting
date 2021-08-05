import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Index Stack"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Index Stack',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IndexedStack(
                  index: index,
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 300,
                          height: 100,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 300,
                          color: Colors.teal,
                        ),
                      ],
                    ),
                  ],
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (index == 2) {
                      setState(() {
                        index = 0;
                      });
                    } else {
                      setState(() {
                        index++;
                      });

                    }
                  },
                  child: const Text("Index Stack"),
                ),
              ],
            ),

          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
