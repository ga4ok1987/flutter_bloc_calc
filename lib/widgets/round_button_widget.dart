import 'package:flutter/material.dart';
import 'package:new_calc_bloc/common/styles.dart';



class RoundButtonWidget extends StatelessWidget {
   RoundButtonWidget({required this.text, required this.onPressed});

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,

      child: Text(
        text,

      ),
    );
  }
}
