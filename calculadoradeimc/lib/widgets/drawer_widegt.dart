import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
          
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color> [
                Colors.blue,
                Colors.blueAccent,

              ],
            )
          ),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2017/07/02/19/24/dumbbells-2465478_960_720.jpg',
                      width: 150,
                      height: 80,
                      fit: BoxFit.cover,
                      
                      ),
                  ),
                ),
                Text('Calculadora de IMC',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )
              ],
            ),
          ),
          
        ),
        
        Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey),),
          ),
          child: ListTile(

            leading: Icon(Icons.accessibility,
             color: Colors.blue,
            ),
            title: Text('IMC'),
            trailing: Icon(Icons.arrow_right,
             color: Colors.black,

            ),
            onTap: (){

            },
            
          ),
        ),
         
        Container(
           decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey)),
          ),
          child: ListTile(
            leading: Icon(Icons.ballot_outlined,
             color: Colors.blue,
            ),
            title: Text('Historico de IMC'),
             trailing: Icon(Icons.arrow_right,
              color: Colors.black,
             
             ),
            onTap: (){
              
            },
          ),
        ),
         
      ],
      
    );
  }
}