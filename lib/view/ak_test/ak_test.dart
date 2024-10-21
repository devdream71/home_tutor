import 'package:flutter/material.dart';

Widget customBuildDropDown(String hint){
return Container(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(5),
    border: Border.all(color: Colors.grey)
  ),
  child: DropdownButton<String>(
    hint: Text(hint),
    underline:const SizedBox(),
    isExpanded: true,
    icon: const Icon(Icons.arrow_drop_down),
    items: ["OP1", "OP2", "OP3"].map((String value){
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value));
    }).toList(),
    onChanged: (newValue){
      //new value 
    }
  ),
);
}

Widget customTutorCard (){
  return const Card (
    margin: EdgeInsets.symmetric(vertical: 8
    ), child: Padding(padding: EdgeInsets.all(8.0),
    
    child: Row(
      children: [],
    ),
    ),
    
  );
}