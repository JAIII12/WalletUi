import 'package:flutter/material.dart';

class MyListedTile extends StatelessWidget {

  final String iconImagePath;
  final String titleText;
  final String titleSubTitle;

const MyListedTile({
  Key? key,
  required this.iconImagePath,
  required this.titleText,
  required this.titleSubTitle,
}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // Icon
              Container(
                height: 80,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(color: Colors.white),
                child: Image.asset(iconImagePath),
              ),
              SizedBox(width: 20),
              // Text and statistics info
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titleText,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    titleSubTitle,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ); // <-- Missing semicolon and closing parenthesis added here
  }
}
