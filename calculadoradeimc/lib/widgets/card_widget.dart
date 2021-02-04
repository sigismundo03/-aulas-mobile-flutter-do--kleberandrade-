import 'package:flutter/material.dart';

class CardWidgwt extends StatelessWidget {

  final String imc;
  final String altura;
  final String peso;
  final String sexo;
  final String id;

  CardWidgwt(this.imc, this.altura, this.peso, this.sexo,this.id);

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 10,
          margin: EdgeInsets.all(08.0),
          child: ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text( imc),
            subtitle: ListTile(
              title: Text('Altura: $altura Peso: $peso'),
              subtitle: Text('Sexo: $sexo '),
            
            ),
          ),
          
        ),
      );
  }
}