import 'package:flutter/material.dart';

class ButtonCalcularIMC extends StatelessWidget {
  const ButtonCalcularIMC({super.key, required this.onPressed});

  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 60,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
              side: const BorderSide(color: Colors.black),
            ),
          ),
        ),
        child: const Text(
          'Calcular',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
