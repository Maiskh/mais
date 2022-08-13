import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project/Home_secreeen.dart';
import 'package:project/bag.dart';
import 'package:project/item/candy.dart';
import 'package:project/item/chips.dart';
import 'package:project/item/chocolate.dart';
import 'package:project/item/fruits.dart';
import 'package:project/item/vegetable.dart';

class product_secreen extends StatefulWidget {
  product_secreen({Key? key}) : super(key: key);

  @override
  State<product_secreen> createState() => _product_secreenState();
}

class _product_secreenState extends State<product_secreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 194, 228, 154),
              actions: [
                IconButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => card(),
                      ),
                    );
                    print('hi from the icon');
                  },
                  icon: Icon(Icons.shopping_bag_rounded),
                ),
              ],
              centerTitle: true,
              title: Text('Home Market',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            drawer: Drawer(
              backgroundColor: Color.fromARGB(255, 194, 228, 154),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(20)),
                  Title(
                      color: Colors.white,
                      child: Text(
                        'account manage',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30),
                      )),
                  IconButton(
                    padding: EdgeInsets.only(),
                    icon: Icon(
                      color: Colors.white,
                      Icons.account_box_rounded,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    padding: EdgeInsets.only(),
                    icon: Icon(
                      color: Colors.white,
                      Icons.notifications,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    padding: EdgeInsets.only(),
                    icon: Icon(
                      color: Colors.white,
                      Icons.account_balance_wallet_rounded,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    padding: EdgeInsets.only(),
                    icon: Icon(
                      color: Colors.white,
                      Icons.help,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    color: Colors.white,
                    padding: EdgeInsets.only(),
                    icon: Icon(
                      Icons.settings,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            body: Center(
              child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Column(children: [
                    Padding(padding: EdgeInsets.all(20)),
                    Text(
                      'welcome dear customr',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 194, 228, 154),
                          fontSize: 40),
                    ),
                    Text(
                      'Our Items',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 194, 228, 154),
                          fontSize: 40),
                    ),
                    Icon(
                      Icons.arrow_downward_outlined,
                      color: Color.fromARGB(255, 211, 142, 137),
                    ),
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.all(8.0)),
                        Text(
                          'Fruits',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 194, 228, 154),
                              fontSize: 40),
                        ),
                        IconButton(
                          color: Color.fromARGB(255, 211, 142, 137),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => fruits(),
                              ),
                            );
                          },
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                        Text(
                          'Vegetable',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 194, 228, 154),
                              fontSize: 40),
                        ),
                        IconButton(
                          color: Color.fromARGB(255, 211, 142, 137),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => vegetable(),
                              ),
                            );
                          },
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                        Text(
                          'Candy',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 194, 228, 154),
                              fontSize: 40),
                        ),
                        IconButton(
                          color: Color.fromARGB(255, 211, 142, 137),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => candy(),
                              ),
                            );
                          },
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                        Text(
                          'Chocolate',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 194, 228, 154),
                              fontSize: 40),
                        ),
                        IconButton(
                          color: Color.fromARGB(255, 211, 142, 137),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => chocolate(),
                              ),
                            );
                          },
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                        Text(
                          'Chips',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 194, 228, 154),
                              fontSize: 40),
                        ),
                        IconButton(
                          color: Color.fromARGB(255, 211, 142, 137),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => chips(),
                              ),
                            );
                          },
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ],
                    ),
                  ])),
            )));
  }
}

class product extends StatelessWidget {
  const product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return product_secreen();
  }
}
