import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: calculadoraIMC(),
    );
  }
}

class calculadoraIMC extends StatefulWidget {
  const calculadoraIMC({super.key});

  @override
  State<calculadoraIMC> createState() => _calculadoraIMCState();
}

class _calculadoraIMCState extends State<calculadoraIMC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        child: Column(
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                  border: Border.all(
                    width: 10,
                    color: Colors.blue,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
