import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final String iconImagePath;
  final String buttonText;

  const MyButton({
    Key? key,
  required this.iconImagePath,
  required this.buttonText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
              children: [
                //icon
                Container(
                  height: 80,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(color:Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                  BoxShadow(
                    color:Colors.grey.shade400,
                    blurRadius: 20,
                    spreadRadius: 10,
                    )]),
                  child:Center(
                  child: Center(child:Image.asset(iconImagePath)),
                  ),
                  ),
                  SizedBox(height: 12,),
                  //text
                  Text(buttonText,
                  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),)
              ],
            );
  }
}