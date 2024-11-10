import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final IconData ?icon;
  final Color color;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
     this.icon,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,  
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),  
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 16.0, color: Colors.white),
          ),
           
         
        ],
      ),
    );
  }
}




