import 'package:flutter/material.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 1, 46, 4),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                IconData(0xe4b6, fontFamily: 'MaterialIcons'),
                color: Colors.white,
              ),
              onPressed: () {
                print("Salam");
              },
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                // İkinci menü simgesine tıklandığında yapılacak işlev
              },
            ),
            IconButton(
              icon: Icon(
                IconData(0xf1ea, fontFamily: 'MaterialIcons'),
                color: Colors.white,
              ),
              onPressed: () {
                // Üçüncü menü simgesine tıklandığında yapılacak işlev
              },
            ),
          ],
        ),
        body: Center(
          child: Text("WhatsApp-a xosh gelmisiniz"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(IconData(0xe153, fontFamily: 'MaterialIcons')),
              label: 'Söhbətlər',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Yelilənmələr',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'İcmalar',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconData(0xe126, fontFamily: 'MaterialIcons')),
              label: 'Zənglər',
            ),
          ],
          selectedFontSize: 15,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 1, 46, 4),
        ),
      ),
    );
  }
}
