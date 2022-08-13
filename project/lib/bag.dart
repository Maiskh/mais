import 'package:project/product_secreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class card extends StatefulWidget {
  card({Key? key}) : super(key: key);

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 194, 228, 154),
        leading: IconButton(
          padding: EdgeInsets.only(),
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: false,
        title: Text(
          'Back',
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
      drawer: Drawer(),
      body:  Column(children: [
Padding(padding:EdgeInsets.all(20),),

            

                
                
                    Text(
                  '       your basket:',
                  textAlign: TextAlign.center,
                  
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 194, 228, 154),
                      fontSize: 40),
                  
                ),        ]
      ),
    ));
  }
}
