import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ModelBottomSheetIndexStackC extends StatefulWidget {
  const ModelBottomSheetIndexStackC({Key? key}) : super(key: key);

  @override
  _ModelBottomSheetIndexStackCState createState() =>
      _ModelBottomSheetIndexStackCState();
}

class _ModelBottomSheetIndexStackCState
    extends State<ModelBottomSheetIndexStackC> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Index Stack"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:CrossAxisAlignment.center,
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
                                Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: InkWell(
                                            child: const Card(
                                              color: Color(0xff3c5899),
                                              child: ListTile(
                                                leading: Icon(
                                                  Icons.amp_stories,
                                                  color: Colors.white,
                                                ),
                                                title: Text(
                                                  'Story ',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            onTap: () {
                                              setState(() {
                                                index = 0;
                                              });
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ),
                                         Expanded(
                                          child: InkWell(
                                            child: const Card(
                                              color: Color(0xff3c5899),
                                              child: ListTile(
                                                leading: Icon(
                                                  Icons.link,
                                                  color: Colors.white,
                                                ),
                                                title: Text(
                                                  'URL ',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            onTap: () {
                                              setState(() {
                                                index = 1;
                                              });
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  <Widget>[
                                        Expanded(
                                          child: InkWell(
                                            child: const Card(
                                              color: Color(0xff3c5899),
                                              child: ListTile(
                                                leading: Icon(
                                                  Icons.play_circle_outline,
                                                  color: Colors.white,
                                                ),
                                                title: Text(
                                                  'Youtube ',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            onTap: () {
                                              setState(() {
                                                index = 2;
                                              });
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ),
                                        Expanded(
                                          child: InkWell(
                                            child: const Card(
                                              color: Color(0xff3c5899),
                                              child: ListTile(
                                                leading: Icon(
                                                  Icons.image,
                                                  color: Colors.white,
                                                ),
                                                title: Text(
                                                  'Image ',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            onTap: () {
                                              setState(() {
                                                index = 3;
                                              });
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ),
                                      ],
                                    ),


                                  ],
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text("Modal Bottom Sheet"),
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
                            height: 200,
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
                      Row(
                        children: [
                          Container(
                            width: 250,
                            height: 300,
                            color: Colors.pinkAccent,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
