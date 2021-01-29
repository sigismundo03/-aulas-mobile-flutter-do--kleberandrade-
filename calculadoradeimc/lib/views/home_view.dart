import 'package:calculadoradeimc/controllers/imc_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/input_widget.dart';
import '../widgets/botao_widget.dart';

class HomeView extends StatelessWidget {
  final ImcController imcController = Get.put(ImcController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Text('Calculadora de IMC'),
          actions: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () {
           imcController. resetFields();
          },
        )
      ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InputWidget("Peso(KG)", imcController.getPeso,  imcController.validatorPeso, ),
                InputWidget("Altura(cm)", imcController.getAltura,  imcController.validatoraltura,),
                SizedBox(height: 12,),
              GetX<ImcController>(
                builder: ( snapshot) {
                  return Text( snapshot.result.value, 
             
                     textAlign: TextAlign.center,
        
                   );
                }
              ),
                BotaoWidget(imcController.calculateImc),
              ],
            ),

        ),
    );
  }
}