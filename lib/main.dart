import 'package:flutter/material.dart';
import 'package:tugas_uiddg/Hal2.dart';
import 'package:tugas_uiddg/Hal1.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Toko buah',
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Page2(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0x00ffffff),
        leading: IconButton(
            icon: Icon(Icons.menu,
                color: const Color.fromARGB(225, 255, 255, 255)),
            onPressed: () => {}),
        actions: <Widget>[
          IconButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2()),
              ),
            },
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
      ),
      body: Container(
        alignment: AlignmentDirectional.center,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                child: Image.asset('assets/image/b1.png'),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recommended Fruits',
                          style: TextStyle(
                              color: const Color.fromARGB(225, 255, 255, 255),
                              fontSize: 21,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BuahWidget(),
                              BuahWidget(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        onTap: _onItemTapped,
      ),
    );
  }
}
