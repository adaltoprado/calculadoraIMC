import 'package:calculadora_imc/alert_message.dart';
import 'package:calculadora_imc/infoIMC.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'button_calcular.dart';

class CalculadoraIMC extends StatefulWidget {
  const CalculadoraIMC({super.key});

  @override
  State<CalculadoraIMC> createState() => _CalculadoraIMCState();
}

class _CalculadoraIMCState extends State<CalculadoraIMC> {
  late TextEditingController pesoController;
  late TextEditingController alturaController;

  double? imc;
  late String classificacao;
  late Color corResultado;

  @override
  void initState() {
    pesoController = TextEditingController(text: '');
    alturaController = TextEditingController(text: '');
    super.initState();
  }

  @override
  void dispose() {
    pesoController.dispose();
    alturaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // ignore: sized_box_for_whitespace
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            imc == null
                ? AlertMessage()
                : infoIMC(
                    corResultado: corResultado,
                    imc: imc!,
                    classificacao: classificacao,
                  ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text('Seu peso'),
                    SizedBox(height: 8),
                    Container(
                      width: 75,
                      child: TextField(
                        controller: pesoController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          ),
                          suffixText: 'Kg',
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 22),
                Column(
                  children: [
                    Text('Sua altura'),
                    SizedBox(height: 8),
                    Container(
                      width: 75,
                      child: TextField(
                        controller: alturaController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          ),
                          suffixText: 'M',
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 22),
            ButtonCalcularIMC(
              onPressed: () {
                try {
                  double peso = double.parse(pesoController.text);
                  double altura = double.parse(alturaController.text);
                  setState(() {
                    imc = peso / (altura * altura);
                    classificacao = getClassificacaoIMC(imc!);
                    corResultado = getCorIMC(imc!);
                  });
                } on Exception {
                  setState(() {
                    imc = null;
                    pesoController.text = '';
                    alturaController.text = '';
                    classificacao = '';
                    String corResultado = '';
                  });
                  print('Digite valores válidos!');
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  String getClassificacaoIMC(double imc) {
    if (imc <= 18.5) {
      return 'Abaixo do Peso';
    } else if (imc > 18.5 && imc <= 24.9) {
      return 'Peso Adequado';
    } else if (imc >= 25 && imc <= 29.9) {
      return 'Sobrepeso';
    } else if (imc > 30 && imc <= 34.9) {
      return 'Obesidade Grau I';
    } else if (imc >= 35 && imc <= 39.9) {
      return 'Obesidade Grau II';
    } else if (imc >= 40) {
      return 'Obesidade Extrema';
    }
    throw '';
  }

  Color getCorIMC(double imc) {
    if (imc <= 18.5) {
      return Colors.blue;
    } else if (imc > 18.5 && imc <= 24.9) {
      return Colors.green;
    } else if (imc >= 25 && imc <= 29.9) {
      return Colors.yellowAccent;
    } else if (imc > 30 && imc <= 34.9) {
      return Colors.orange;
    } else if (imc >= 35 && imc <= 39.9) {
      return Colors.red;
    } else if (imc >= 40) {
      return Colors.redAccent;
    }
    throw '';
  }
}
