import 'package:project/bag.dart';
import 'package:project/product_secreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class chocolate extends StatefulWidget {
  chocolate({Key? key}) : super(key: key);

  @override
  State<chocolate> createState() => _chocolateState();
}

class _chocolateState extends State<chocolate> {
  List choco=['Reese’s','Hershey','Mars',"Cadbury",'Oreo'];
  List price3=['1JD','1.20JD','0.50JD','0.75JD','0.25JD'];
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
            drawer: Drawer(),body: 
            ListView.builder(
              itemBuilder: (BuildContext, index) {
                return Container(
                  padding: EdgeInsets.all(30),
                  margin: EdgeInsets.all(30),
                  color: Color.fromARGB(255, 194, 228, 154),
                  
                  
                  child: ListTile(
                    
                  
                    title: Text("${choco[index]}",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        subtitle: Text("${price3[index]}",
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

