import 'package:flutter/material.dart';
import 'package:wallet_ui/util/credit-card.dart';
import 'package:wallet_ui/util/send-rec.dart';
import 'package:wallet_ui/util/transactions.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text('Samosa Bank' , style: TextStyle(fontSize: 28 , fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Icon(Icons.person ,size:37 ,),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            //cards
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Credit_card(),
                  Credit_card(),
                  Credit_card(),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            // button send , receive nav pannel,
            SendRec(),
            

            //RECENT TRANSACTION
            
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                // Left aligned Text with 30 units of padding on the left side
              Padding(
                 padding: const EdgeInsets.only(left: 10), // Adjust this for more indentation
                child: Text(
                  'Recent Transactions:',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
             ),
            ),
      // Spacer to push the Icon to the right
            Spacer(),
      // Right aligned Icon with 30 units of padding to the right
              Padding(
            padding: const EdgeInsets.only(right: 10), // Adjust this for more indentation
              child: Icon(Icons.menu),
               ),
    ],
  ),
),
          
    Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
        TransactionItem(),
        TransactionItem(),
        TransactionItem(),    
        TransactionItem(),    
        TransactionItem(),    
        
          ],
        ),
      ),
    )

    

            
            
            

          ],
        ),
      ),



  bottomNavigationBar: BottomNavigationBar(
  currentIndex: 0, // You can manage this based on the selected index
  onTap: (index) {
    // Handle tab change
  },
  selectedItemColor: Colors.blue,  // Set color for the selected icon
  unselectedItemColor: Colors.black,  // Set color for unselected icons
  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Search',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.scanner),
      label: 'Scanner',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.list),
      label: 'List',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Settings',
    ),
  ],
),

    );
  }
}