import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletui/util/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //page controller
  final _controller=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(children: [
          //app bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("My ",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold)
                ),
                Text(
                  'cards',
                  style: TextStyle(fontSize: 28),
                ),
                  ],
                ),

                //plus button
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color:Colors.grey[400], 
                    shape: BoxShape.circle),
                  child: Icon(Icons.add)),
              ],
            ),
          ),

          SizedBox(height: 25),

          //cards
      Container(
      height: 200,
      child: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
            MyCard(
              balance: 5250.20,
              cardNumber: 123456,
              expiryMonth: 10,
              expiryYear: 25,
              color: Colors.deepPurple[300],
            ),
            MyCard(
              balance: 325.50,
              cardNumber: 145456,
              expiryMonth: 03,
              expiryYear: 26,
              color: Colors.blue[300],
            ),
            MyCard(
              balance: 700,
              cardNumber: 892234,
              expiryMonth: 09,
              expiryYear: 27,
              color: Colors.green[300],
            ),
        ],
      ),
      ),

      SizedBox(height: 25,),

      SmoothPageIndicator(
        controller: _controller,
       count: 3,
       effect: ExpandingDotsEffect(
        activeDotColor: Colors.grey.shade800,
       ),),

       SizedBox(height: 25,),
          //3 buttons -> send //pay // bill
          Row(children: [
            //send buuton
            Column(
              children: [
                //icon
                Container(
                  height: 100,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(color:Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                  BoxShadow(
                    color:Colors.grey.shade600,
                    blurRadius: 10,
                    )]),
                  child:Center(
                  child: Center(child:Image.asset('lib/icons/send money.png')),
                  ),
                  ),
                  SizedBox(height: 12,),
                  //text
                  Text('send',
                  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),)
              ],
            ) 

            //pay button

            //bills button

          ],)
        
          //column-> stats +transaction
        ],),
      ),
    );
  }
}