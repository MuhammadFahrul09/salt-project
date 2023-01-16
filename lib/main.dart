import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:projact_salt_academy/homescreen.dart';

void main() async {
  runApp(SaltAcademy());
}

class SaltAcademy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class TiketAduan extends StatelessWidget {
  const TiketAduan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiket Aduan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite,
              size: 40,
            ),
            Text('yeay terimakasih'),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16))),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text(
                'Mulai Belanja',
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.brown),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  void initState() {
    username.text = ""; //innitail value of text field
    password.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Icons on TextField"),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                  controller: username,
                  decoration: InputDecoration(
                    labelText: "Username",
                    icon: Icon(Icons.people), //icon at head of input
                  )),
              TextField(
                  controller: password,
                  decoration: InputDecoration(
                      icon: Icon(Icons.lock), //icon at head of input
                      //prefixIcon: Icon(Icons.people), //you can use prefixIcon property too.
                      labelText: "Password",
                      suffixIcon:
                          Icon(Icons.remove_red_eye) //icon at tail of input
                      )),
            ],
          ),
        ));
  }
}
