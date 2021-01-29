import 'package:flutter/material.dart';

class BotaoWidget extends StatelessWidget {
   final Function()  onPressed;

   BotaoWidget(this.onPressed);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 36),
      child: RaisedButton(
        color: Colors.blue,
        child: Text('Calcular',
        style: TextStyle(
          color: Colors.white,
          )
        ),
        onPressed: onPressed,
        
      ),
    );
  }
}