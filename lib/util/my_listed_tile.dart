import 'package:flutter/material.dart';

class MyListedTile extends StatelessWidget {
  const MyListedTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        // Icon
                      Container(
                        height: 80,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(color: Colors.white),
                        child: Image.asset('lib/icons/statistics.png'),
                      ),

                      SizedBox(width: 20,),
                      // Text and statistics info
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Statistics',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'Payments and income',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      ],
                      ),
  }
}