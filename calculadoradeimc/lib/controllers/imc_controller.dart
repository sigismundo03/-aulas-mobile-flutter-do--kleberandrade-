import 'package:calculadoradeimc/models/pessoa_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImcController extends GetxController {
 var historicodepeso = List<Pessoa>().obs;
  Pessoa pessoa  = Pessoa();
  var color  = Color(1).obs; 
  var selectionsBotoes = List.generate(2, (_)=> false).obs;
 var result = 'Informe seus dados'.obs;
 var controllerpeso = TextEditingController().obs;
 var controlleraltura = TextEditingController().obs;


 void getPeso(String peso){
   this.pessoa.peso = peso;
 }
 void getAltura(String altura) =>   this.pessoa.altura = altura;
 
 
 String validatorPeso(String peso){
   return peso.isEmpty ? "Insira seu peso!": null;
 } 

  String validatoraltura(String altura){
   return altura.isEmpty ? "Insira sua altura!": null;
 } 
 void selections(int index){
   selectionsBotoes[index] =!selectionsBotoes[index];

   for( int i = 0; i < selectionsBotoes.length; i++){
      if(index != i){
        selectionsBotoes[i] = false;  
      }
      
   }
  
  }
 void limpsToggleButtons(){
    for( int i = 0; i < selectionsBotoes.length; i++){
     
        selectionsBotoes[i] = false;  
      
      
   }
 }

 void resetFields() {
   result.value = 'Informe seus dados';
   controllerpeso.value.text = '';
   controlleraltura.value.text = '';
   color.value = Colors.black;
   this.pessoa.peso = controllerpeso.value.text;
  this.pessoa.altura =controlleraltura.value.text;
  limpsToggleButtons();
 } 

 void calculateImc(){
     if(this.pessoa.peso.isNotEmpty && this.pessoa.altura.isNotEmpty && (selectionsBotoes[0] || selectionsBotoes[1]) ){
        double weight = double.parse(this.pessoa.peso);
        double height = double.parse(this.pessoa.altura) / 100.0;
        double imc = weight / (height * height);
        resultado(imc);
     }else{
       Get.snackbar(
        'Error',
        ' Dados  invalidos!',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        
      );
     }
    
 }

 void resultado( double imc ){
    result.value = "IMC = ${imc.toStringAsPrecision(2)}\n";
    
    if (imc < 18.6){
      result.value += "Abaixo do peso";
      color.value = Colors.amber;
      
    }else if (imc < 25.0){
        result.value += "Peso ideal";
        color.value = Colors.green;
    }else if (imc < 30.0){
      result.value += "Levemente acima do peso";
      color.value = Colors.blue;
    }else if (imc < 35.0){
        result.value += "Obesidade Grau I";
        color.value = Colors.redAccent;
    } else if (imc < 40.0){
       result.value += "Obesidade Grau II";
       color.value = Colors.red;
    }else{
       result.value += "Obesidade Grau IIII";
       color.value = Colors.redAccent[700];
       
    }
      
    sexo();
    addPessoa();
   
 }

 void addPessoa(){
    historicodepeso.add(pessoa);
 }


void sexo(){
      for( int i = 0; i < selectionsBotoes.length; i++){
      if(selectionsBotoes[i]){
        if(i == 0){
          pessoa.sexo ='Fermino';
        }else{
          pessoa.sexo ='Masculino';

        }  
      }
      
   }
    }

}