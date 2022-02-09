import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
        appBar: AppBar(
          title: const Text("Stack and positioned"),
          leading: const Icon(Icons.menu),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.topRight,
            overflow: Overflow.visible,
            children: [
              Container(
                width: 250,
                height: 250,
                color: Colors.teal,
              ),
              const Positioned(
                top: -30,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.orangeAccent,
                    child: Icon(Icons.holiday_village),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
