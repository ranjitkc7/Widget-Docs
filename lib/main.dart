import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container Example"),
          titleTextStyle: TextStyle(
            color: Colors.pinkAccent,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: const Color.fromARGB(255, 44, 52, 56),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.lightGreen, width: 1),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.lightGreen,
                      // spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    "Hello Ranjit K.C.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
