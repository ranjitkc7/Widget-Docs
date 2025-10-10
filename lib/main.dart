import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomeScreen(), // 👈 Use a separate widget for the home screen
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Example"),
        titleTextStyle: const TextStyle(
          color: Colors.pinkAccent,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: const Color.fromARGB(255, 44, 52, 56),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
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
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.blueAccent, Colors.purpleAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.limeAccent, width: 1),
                ),
                child: const Center(
                  child: Text(
                    "Hello",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                color: Colors.redAccent,
                padding: const EdgeInsets.all(20),
                child: Container(
                  color: Colors.black,
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.yellow,
                    alignment: Alignment.center,
                    child: Container(
                      height: 25,
                      width: 25,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Container(
                        height: 12.5,
                        width: 12.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 120,
                height: 50,
                color: Colors.amberAccent,
                alignment: Alignment.bottomLeft,
                child: const Text("Hello", style: TextStyle(fontSize: 20)),
              ),
              const SizedBox(height: 10),
              const Text(
                "I am Ranjit K.C.",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontFamily: "Times New Roman",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  wordSpacing: 1,
                  decoration: TextDecoration.underline,
                  decorationColor: Color.fromARGB(255, 11, 231, 7),
                  shadows: [
                    Shadow(
                      color: Colors.amberAccent,
                      blurRadius: 5,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  print("Button Clicked Successfully");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 8,
                ),
                child: const Text("Click Me"),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  print("Text Button Clicked Successfully");
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.purple,
                  padding: const EdgeInsets.all(10),
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                child: const Text("Text Button"),
              ),
              IconButton(
                onPressed: () {
                  print("Icon Button Clicked Successfully");
                },
                icon: const Icon(Icons.favorite),
                color: Colors.red,
                iconSize: 30,
                tooltip: "Like",
              ),
              const SizedBox(height: 10),
              Image.asset(
                "assets/dogImage.jpg",
                width: 400,
                height: 200,
                fit: BoxFit.cover,
                semanticLabel: "Dog Image",
              ),
              const SizedBox(height: 10),
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage("assets/goatImg.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(Icons.home, size: 40),
                  Icon(Icons.search, size: 40),
                  Icon(Icons.settings, size: 40),
                  Icon(Icons.person, size: 40),
                ],
              ),
              const SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [Text("Top"), Text("Middle"), Text("Bottom")],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 8,
                ),
                child: const Text("Go to Second Screen"),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pinkAccent,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 8,
          ),
          child: const Text("Go Back"),
        ),
      ),
    );
  }
}
