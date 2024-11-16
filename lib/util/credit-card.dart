import 'package:flutter/material.dart';

class Credit_card extends StatelessWidget {
  Credit_card({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Card(
        elevation: 15,
        child: Container(
          height: 230,
          width: 370,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Colors.black,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 6,
                  blurRadius: 10,
                  offset: Offset(0, 4)
                )
              ]
              ),

              
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("\$1200" , style: TextStyle(fontSize: 35 , fontWeight: FontWeight.bold , color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text('VISA' , style: TextStyle(fontSize: 40 , fontWeight: FontWeight.w300 , color: Colors.white), ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("1234 5678 **** ****" , style: TextStyle(fontSize: 25 , color: Colors.white),),
                        )
                      ],
                    ),
                    SizedBox(
                      height:10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text('credit-card' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold , color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text('9:24' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w300 , color: Colors.white), ),
                        )
                      ],
                    )
                ],
              ),




              ),
        ),
    );
  }
}
