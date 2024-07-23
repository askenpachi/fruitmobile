import 'package:flutter/material.dart';
import 'package:tugas_uiddg/main.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 29, 29),
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0x00ffffff),
        leading: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Color.fromARGB(255, 255, 255, 255)),
            onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  ),
                }),
        actions: <Widget>[
          IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Stack(children: [
        Container(
          margin: EdgeInsets.only(top: 300),
          alignment: Alignment.bottomCenter,
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                child: Text(
                  'F  R  U  I  T',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.orange),
                ),
              ),
              Container(
                child: Text(
                  'Pineapple',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 285,
                height: 285,
                child: Image.asset(
                  'assets/image/b2.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [],
                  ),
                  Column(
                    children: [],
                  ),
                  Column(
                    children: [],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
