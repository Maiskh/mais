import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/product_secreen.dart';

class Home_Secreen extends StatefulWidget {
  Home_Secreen({Key? key}) : super(key: key);

  @override
  State<Home_Secreen> createState() => _Home_SecreenState();
}

class _Home_SecreenState extends State<Home_Secreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
              centerTitle: true,

      title: Text('Home Market',style: TextStyle(fontWeight:FontWeight.bold ))
      
      ,backgroundColor:  Color.fromARGB(255, 194, 228, 154),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              'https://images-platform.99static.com/J-HYk-wg1ssKemFaUVQcY_oIav8=/500x500/top/smart/99designs-contests-attachments/9/9296/attachment_9296502',
              width: 600,
              height: 600,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                visualDensity: VisualDensity.compact,
                onPrimary: Color.fromARGB(255, 143, 9, 9),
                padding: EdgeInsets.all(20),
                primary: Color.fromARGB(255, 194, 228, 154),
                elevation: 20
              ),
              onLongPress: () {
                print('long press');
              },
              child: Text('Go To Market', style: TextStyle(fontWeight:FontWeight.bold )),
              onPressed: () {
                 Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => product_secreen(),
            ),
          );
          print('Login Pressed');
              },
            ),

          ],
        ), //Column
      ),
    );
  }
}
