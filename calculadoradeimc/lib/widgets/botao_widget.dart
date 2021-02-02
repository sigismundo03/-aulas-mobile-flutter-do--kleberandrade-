import 'package:flutter/material.dart';

class BotaoWidget extends StatelessWidget {
  final Function() onPressed;

  BotaoWidget(this.onPressed);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        top: 0.0,
        bottom: 0.0,
        right: 16.0,
        left: 16.0,
      ),
     
      child: RaisedButton(
        elevation: 6,
        padding: EdgeInsets.all(15.0),
        
        color: Colors.blue,
        child: Text('Calcular',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
        onPressed: onPressed,
      ),
    );
  }
}
