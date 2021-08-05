import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ///Index Stack
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
                Center(
                  child: IndexedStack(
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

            ///Bottom Sheet
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Bottom Sheet ',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext c) {
                        return Wrap(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          'Login ',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    height: 2.0,
                                  ),

                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.85,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,

                                      children: [
                                        Row(
                                          children: const <Widget>[
                                            Expanded(
                                              child: Card(
                                                color: Color(
                                                    0xff3c5899),
                                                child: ListTile(
                                                  leading: Icon(Icons.facebook, color: Colors.white,),
                                                  title: Text('Login with Facebook ', style: TextStyle(color: Colors.white),),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: const <Widget>[
                                            Expanded(
                                              child: Card(

                                                color: Color(
                                                    0xffde4b39),
                                                child: ListTile(
                                                  // leading: Icon(Icons./, color: Colors.white,),
                                                  leading: IconButton(
                                                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                                    icon: FaIcon(FontAwesomeIcons.google, color: Colors.white,),
                                                    onPressed: null,
                                                  ),

                                                  title: Text('Login with Google ', style: TextStyle(color: Colors.white),),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: const <Widget>[
                                            Expanded(
                                              child: Card(

                                                color: Color(
                                                    0xff64ccf1),
                                                child: ListTile(
                                                  // leading: Icon(Icons./, color: Colors.white,),
                                                  leading: IconButton(
                                                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                                    icon: FaIcon(FontAwesomeIcons.twitter, color: Colors.white,),
                                                    onPressed: null,
                                                  ),

                                                  title: Text('Login with twitter ', style: TextStyle(color: Colors.white),),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),


                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text("Bottom Sheet"),
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
