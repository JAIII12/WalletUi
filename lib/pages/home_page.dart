import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletui/util/my_button.dart';
import 'package:walletui/util/my_card.dart';
import 'package:walletui/util/my_listed_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Page controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(onPressed:() {},
      backgroundColor: Colors.pink[300],
      child: Icon(Icons.monetization_on,
      size: 32),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            IconButton(
              onPressed: (){},
            icon: Icon(Icons.home,
            size: 32,
            color: Colors.pink[200],),
            ),
             IconButton(
              onPressed: (){},
            icon: Icon(Icons.settings,
            size: 32
            ),
            ),
          
          ],),
        ),

      ),
      body: SafeArea(
        child: Column(
          children: [
            // App bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text(
                        "My ",
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'cards',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  // Plus button
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(color: Colors.grey[400], shape: BoxShape.circle),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),

            // Cards
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
            SizedBox(height: 25),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800,
              ),
            ),
            SizedBox(height: 25),

            // Buttons -> Send, Pay, Bills
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                    iconImagePath: 'lib/icons/send money.png',
                    buttonText: 'Send',
                  ),
                  MyButton(
                    iconImagePath: 'lib/icons/credit card.png',
                    buttonText: 'Pay',
                  ),
                  MyButton(
                    iconImagePath: 'lib/icons/bill.png',
                    buttonText: 'Bills',
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),

            // Stats + Transaction
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Column(
                children: [
                  // Statistics
                  MyListedTile(iconImagePath: 'lib/icons/statistics.png', 
                  titleText: 'Statistics', 
                  titleSubTitle: 'Payment and Income'
                   ),

                  // Transaction

                    MyListedTile(iconImagePath: 'lib/icons/transaction.png', 
                  titleText: 'Transaction', 
                  titleSubTitle: 'Transaction History'
                   ),


                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
