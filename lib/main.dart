import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
     debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String tittle = "Tap the screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(tittle),
        centerTitle: true,
      ),
      body: GestureDetector(
          onTap: (){
            setState(() {
              tittle = DateTime.now().toIso8601String();
            });
          },




        child: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}
