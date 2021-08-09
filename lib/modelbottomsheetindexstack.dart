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
  bool visibilityVariable = true;
  bool visibilityVariableStack = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Index Stack"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: visibilityVariable,
                      child: ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                            // backgroundColor: Colors.black45,
                            // elevation:2.0,
                            // isScrollControlled = true,
                            context: context,

                            builder: (BuildContext c) {

                              return Container(
                                color: Colors.transparent,
                                height: 280.0,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    decoration:  const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:  BorderRadius.only(
                                            topLeft: Radius.circular(30.0),
                                            topRight: Radius.circular(30.0))),
                                    child: Wrap(
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: const [
                                                Padding(
                                                  padding: EdgeInsets.all(16.0),
                                                  child: Text(
                                                    'Index Stack Controller',
                                                    style: TextStyle(
                                                        fontSize: 20.0,
                                                        fontWeight: FontWeight.bold),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(left: 28.0,right: 28.0),
                                              child: Divider(
                                                height: 8.0,
                                                thickness: 3.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: InkWell(
                                                          child: const Padding(
                                                            padding:
                                                                EdgeInsets.all(8.0),
                                                            child: Card(
                                                              elevation: 10.0,
                                                              color: Colors.black87,
                                                              child: ListTile(
                                                                leading: Icon(
                                                                  Icons.amp_stories,
                                                                  color: Colors.white,
                                                                ),
                                                                title: Text(
                                                                  'Story ',
                                                                  style: TextStyle(
                                                                      color:
                                                                          Colors.white),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          onTap: () {
                                                            setState(() {
                                                              visibilityVariableStack =
                                                                  true;
                                                              index = 0;
                                                            });
                                                            Navigator.of(context).pop();
                                                          },
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: InkWell(
                                                          child: const Padding(
                                                            padding:
                                                                EdgeInsets.all(8.0),
                                                            child: Card(
                                                              elevation: 10.0,
                                                              color: Color(0xff3c5899),
                                                              child: ListTile(
                                                                leading: Icon(
                                                                  Icons.link,
                                                                  color: Colors.white,
                                                                ),
                                                                title: Text(
                                                                  'URL ',
                                                                  style: TextStyle(
                                                                      color:
                                                                          Colors.white),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          onTap: () {
                                                            setState(() {
                                                              visibilityVariableStack =
                                                                  true;
                                                              index = 1;
                                                            });
                                                            Navigator.of(context).pop();
                                                          },
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: InkWell(
                                                          child: const Padding(
                                                            padding:
                                                                EdgeInsets.all(8.0),
                                                            child: Card(
                                                              elevation: 10.0,
                                                              color: Colors.red,
                                                              child: ListTile(
                                                                leading: Icon(
                                                                  Icons
                                                                      .play_circle_outline,
                                                                  color: Colors.white,
                                                                ),
                                                                title: Text(
                                                                  'Youtube ',
                                                                  style: TextStyle(
                                                                    color: Colors.white,
                                                                    fontSize: 10.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          onTap: () {
                                                            setState(() {
                                                              visibilityVariableStack =
                                                                  true;
                                                              index = 2;
                                                            });
                                                            Navigator.of(context).pop();
                                                          },
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: InkWell(
                                                          child: const Padding(
                                                            padding:
                                                                EdgeInsets.all(8.0),
                                                            child: Card(
                                                              elevation: 10.0,
                                                              color: Colors.green,
                                                              child: ListTile(
                                                                leading: Icon(
                                                                  Icons.image,
                                                                  color: Colors.white,
                                                                ),
                                                                title: Text(
                                                                  'Image ',
                                                                  style: TextStyle(
                                                                    color: Colors.white,
                                                                    fontSize: 14.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          onTap: () {
                                                            setState(() {
                                                              visibilityVariableStack =
                                                                  true;
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
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: const Text("Modal Bottom Sheet"),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Visibility(
                    visible: visibilityVariableStack,
                    child: IndexedStack(
                      index: index,
                      children: <Widget>[
                        Row(
                          children: [
                            Container(
                              width: 300,
                              height: 300,
                              color: Colors.red,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // visibilityVariable = false;
                                  // setState(() {
                                  //   index = 0;
                                  // });
                                  // const Text(""),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        visibilityVariable = false;
                                        index = 0;
                                      });
                                      modelbuttonsheetfuns();
                                    },
                                    child: const Text("Go Back"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 300,
                              height: 300,
                              color: Colors.amber,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // visibilityVariable = false;
                                  // setState(() {
                                  //   index = 0;
                                  // });

                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        visibilityVariable = false;
                                        index = 0;
                                      });
                                      modelbuttonsheetfuns();
                                    },
                                    child: const Text("Go Back"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 300,
                              height: 300,
                              color: Colors.teal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // visibilityVariable = false;
                                  // setState(() {
                                  //   index = 0;
                                  // });

                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        visibilityVariable = false;
                                        index = 0;
                                      });
                                      modelbuttonsheetfuns();
                                    },
                                    child: const Text("Go Back"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 300,
                              height: 300,
                              color: Colors.black87,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // visibilityVariable = false;
                                  // setState(() {
                                  //   index = 0;
                                  // });

                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        visibilityVariable = false;
                                        index = 0;
                                      });
                                      modelbuttonsheetfuns();
                                    },
                                    child: const Text("Go Back"),
                                  ),
                                ],
                              ),
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
      ),
    );
  }

  void modelbuttonsheetfuns() {
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Index Stack Controller',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  height: 8.0,
                  thickness: 3.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Card(
                                  elevation: 10.0,
                                  color: Colors.black87,
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.amp_stories,
                                      color: Colors.white,
                                    ),
                                    title: Text(
                                      'Story ',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  visibilityVariableStack = true;
                                  index = 0;
                                });
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Card(
                                  elevation: 10.0,
                                  color: Color(0xff3c5899),
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.link,
                                      color: Colors.white,
                                    ),
                                    title: Text(
                                      'URL ',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  visibilityVariableStack = true;
                                  index = 1;
                                });
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Card(
                                  elevation: 10.0,
                                  color: Colors.red,
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.play_circle_outline,
                                      color: Colors.white,
                                    ),
                                    title: Text(
                                      'Youtube ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  visibilityVariableStack = true;
                                  index = 2;
                                });
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Card(
                                  elevation: 10.0,
                                  color: Colors.green,
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.image,
                                      color: Colors.white,
                                    ),
                                    title: Text(
                                      'Image ',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  visibilityVariableStack = true;
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
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
