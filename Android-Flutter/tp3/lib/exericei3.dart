import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('jamel miraoui'),
        ),
        body: Center(
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 292,
                        color: Colors.red,
                        child: Center(
                          child: Text("1",style: TextStyle(color: Colors.white,fontSize: 24),),
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 100,
                        color: Color.fromARGB(255, 218, 137, 16),
                        child: Center(
                          child: Text("2",style: TextStyle(color: Colors.white,fontSize: 24),),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 146,
                      color: Colors.green,
                      child: Center(
                        child: Text("3",style: TextStyle(color: Colors.white,fontSize: 24),),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 146,
                              color: Colors.purple,
                              child: Center(
                                child: Text("4",style: TextStyle(color: Colors.white,fontSize: 24),),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 100,
                              color: Color.fromARGB(255, 218, 137, 16),
                              child: Center(
                                child: Text("5",style: TextStyle(color: Colors.white,fontSize: 24),),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 246,
                              color: Colors.blue,
                              child: Center(
                                child: Text("6",style: TextStyle(color: Colors.white,fontSize: 24),),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
