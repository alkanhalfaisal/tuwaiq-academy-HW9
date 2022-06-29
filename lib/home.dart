import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';

double price = 0;
List books = [];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7EDDC),
      appBar: AppBar(
        toolbarHeight: 170,
        centerTitle: false,
        backgroundColor: Colors.transparent,
        title: Text(
          "Book \nStore",
          style: GoogleFonts.aclonica(fontSize: 40, color: Colors.white),
        ),
        flexibleSpace: Image.asset(
          'assets/images/Unknown.webp',
          fit: BoxFit.cover,
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Expanded(
                        child: Container(
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: ListView.builder(
                            itemCount: dataShop.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 30),
                                    child: Column(
                                      children: [
                                        Text(dataShop[index]['id'].toString()),
                                        Text(
                                            'quantity:${dataShop[index]['quantity'].toString()}'),
                                        Text(
                                            dataShop[index]['name'].toString()),
                                        MaterialButton(
                                          onPressed: () {
                                            setState(() {
                                              price += dataShop[index]['price'];
                                              books.add(dataShop[index]['name']
                                                  .toString());
                                              dataShop[index]['quantity'] -= 1;
                                            });
                                          },
                                          child: Image.asset(
                                            dataShop[index]['imageurl'],
                                            height: 100,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                          //),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                              ),
                              height: 150,
                              width: 150,
                              child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text('Total price: ${price}'))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            height: 300,
                            width: 160,
                            child: Text(
                                'your books you want to buy price ${books}')),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Color(0xFFCCE0CA),
      //   selectedItemColor: Color.fromARGB(255, 0, 89, 97),
      //   unselectedItemColor: Color(0xFF565656),
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.add_box_rounded), label: 'Add'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.settings), label: 'settings'),
      //   ],
      // )
    );
  }
}

List dataShop = [
  {
    'id': 937,
    'name': 'product1',
    'price': 401,
    'descrip': 'here some word1',
    'imageurl': 'assets/images/Unknown.jpeg',
    'rate': 2.7,
    'quantity': 14
  },
  {
    'id': 899,
    'name': 'product2',
    'price': 301,
    'descrip': 'here some word1',
    'imageurl': 'assets/images/Unknown1.jpeg',
    'rate': 2.7,
    'quantity': 10
  },
  {
    'id': 781,
    'name': 'product3',
    'price': 211,
    'descrip': 'here some word1',
    'imageurl': 'assets/images/Unknown.jpeg',
    'rate': 2.7,
    'quantity': 12
  },
];

class Joke {
  final String createdAt;
  final String iconUrl;
  final String id;
  final String url;
  final String value;

  Joke(this.createdAt, this.iconUrl, this.id, this.url, this.value);
}
