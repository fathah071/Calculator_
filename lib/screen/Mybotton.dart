import 'package:flutter/material.dart';

// creating Stateless Widget for buttons
class MyButton extends StatelessWidget {

  // declaring variables

  final textColor;
  final String buttonText;
  final buttontapped;

  //Constructor
  MyButton({ this.textColor, required this.buttonText, this.buttontapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: Padding(
        padding: const EdgeInsets.all(0.2),
        child: ClipRRect(

            child: Container(

              decoration: BoxDecoration(
                  color:Color.fromRGBO(33, 32, 32, 1 ),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Text(buttonText,
                  style: TextStyle(fontSize: 30,color:textColor),),
              ),
            )
        ),
      ),
    );
  }
}