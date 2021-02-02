import 'package:flutter/material.dart';


// ignore: must_be_immutable
class InputWidget extends StatelessWidget {
  final String label;
  final Function(String) oneChanged;
  final String Function(String) error;
  TextEditingController controller = TextEditingController();
  final String name;

  InputWidget(this.label, this.oneChanged, this.error, this.controller,this.name);

  @override
  Widget build(BuildContext context) {
    return Column(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
             controller: controller,
            
            onChanged:  oneChanged,
             keyboardType: TextInputType.number,
             decoration: InputDecoration(
               hintText: label,
              //  border: OutlineInputBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(20)),
              //  ),
              ),
              validator: error,
          ),
        ),
      ],
    );
  }
}