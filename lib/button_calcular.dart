import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';

class ButtonCalcularIMC extends StatelessWidget {
  ButtonCalcularIMC({required this.onPressed});

  final Function onPressed;
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 60,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        child: Text(
          'Calcular',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
              side: BorderSide(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
