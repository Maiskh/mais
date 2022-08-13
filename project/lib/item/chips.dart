import 'package:project/bag.dart';
import 'package:project/item/candy.dart';
import 'package:project/product_secreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class chips extends StatefulWidget {
  chips({Key? key}) : super(key: key);

  @override
  State<chips> createState() => _chipsState();
}

class _chipsState extends State<chips> {
  List chips=['Lay''s''','Popchips','SunChips',"Doritos ",'Pringles'];
  List price5=['0.30JD','1.20JD','1JD','0.40JD','1.60JD'];
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
      centerTitle: false,
      title: Text(
        'Back',
        style: Theme.of(context).textTheme.bodyText2,
      ), 
      
               
            ),
            drawer: Drawer(),
             body: ListView.builder(
              itemBuilder: (BuildContext, index) {
                return Container(
                  padding: EdgeInsets.all(30),
                  margin: EdgeInsets.all(30),
                  color: Color.fromARGB(255, 194, 228, 154),
                  
                  
                  child: ListTile(
                    
                  
                    title: Text("${chips[index]}",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        subtitle: Text("${price5[index]}",
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

