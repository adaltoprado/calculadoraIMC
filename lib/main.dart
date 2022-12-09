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
      home: const CalculadoraIMC(),
    );
  }
}

class CalculadoraIMC extends StatefulWidget {
  const CalculadoraIMC({super.key});

  @override
  State<CalculadoraIMC> createState() => _CalculadoraIMCState();
}

class _CalculadoraIMCState extends State<CalculadoraIMC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
                border: Border.all(
                  width: 10,
                  color: Colors.green,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '24.22',
                    style: TextStyle(fontSize: 42, color: Colors.green),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Peso Normal',
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text('Seu peso'),
                    Container(
                      width: 75,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            suffixText: 'Kg'),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 22),
                Column(
                  children: [
                    Text('Sua altura'),
                    Container(
                      width: 75,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            suffixText: 'M'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 22),
            Container(
              width: 200,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Calcular',
                  style: TextStyle(
                    color: Colors.white,
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
