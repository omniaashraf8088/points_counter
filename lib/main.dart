import 'package:bussines_card_app/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BussinesCard());
}

class BussinesCard extends StatelessWidget {
  const BussinesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: const Text(
            'Bussines Card',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            const CircleAvatar(
              radius: 102,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/profile girle.jpeg'),
              ),
            ),
            const Text(
              'Omnia Ashraf',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Rubik Doodle Shadow',
                  fontSize: 32),
            ),
            const Text(
              'Flutter Dev',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Rubik Doodle Shadow',
                  fontSize: 32),
            ),
            const Divider(
              color: Colors.greenAccent,
              indent: 50,
              endIndent: 50,
              thickness: 4,
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('(+02)52484563'),
            ),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text('Enter ur email@com'),
            ),
            Builder(
              builder: (context) {
                return ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: const Text('Enter'));
              }
            )
          ],
        ),
      ),
    );
  }
}
