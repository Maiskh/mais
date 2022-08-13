import 'package:project/bag.dart';
import 'package:project/product_secreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class fruits extends StatefulWidget {
  fruits({Key? key}) : super(key: key);

  @override
  State<fruits> createState() => _fruitsState();
}

class _fruitsState extends State<fruits> {
  List fruits = ["oranges","limes","strawberries","raspberries","watermelons"];
  List price1=['3JD','1.50JD','2JD','3JD','4.60JD'];
   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 194, 228, 154),
              leading:IconButton(
        padding: EdgeInsets.only(),
        icon: Icon(
          Icons.arrow_back,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    
               
            ),
            drawer: Drawer(),

          body:  ListView.builder(
              itemBuilder: (BuildContext, index) {
                return Container(
                  padding: EdgeInsets.all(30),
                  margin: EdgeInsets.all(30),
                  color: Color.fromARGB(255, 194, 228, 154),
                  
                  
                  child: ListTile(
                    
                  
                    title: Text("${fruits[index]}",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        subtitle: Text("${price1[index]}",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        leading: IconButton(
                  color: Color.fromARGB(255, 211, 142, 137),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => card(),
                      ),
                    );
                    print('hi from the icon');
                  },
                  icon: Icon(Icons.add),
                  
                ),
                        
                  ),

                  
                );
              },
            ),
        )    );
  }
}

