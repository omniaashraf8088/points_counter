import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
     int teamA =0;
     int teamB =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title:const Text(
          'Points Counter',
          style:  TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(fontSize: 25),
                      ),
                       Text(
                        '$teamA',
                        style: TextStyle(fontSize: 100),
                      ),
                      ElevatedButton(
                        style:
                        ElevatedButton.styleFrom(primary: Colors.deepOrange),
                        onPressed: (){
                          setState(() {
                            teamA+=1;
                          });
                        },
                        child: const Text(
                          'Add 1 Piont',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style:
                        ElevatedButton.styleFrom(primary: Colors.deepOrange),
                        onPressed: () {
                          setState(() {
                            teamA+=2;
                          });
                        },
                        child: const Text(
                          'Add 2 Piont',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style:
                        ElevatedButton.styleFrom(primary: Colors.deepOrange),
                        onPressed: () {
                          setState(() {
                            teamA+=3;
                          });
                        },
                        child: const Text(
                          'Add 3 Piont',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                 const SizedBox(
                   height: 500,
                   child: VerticalDivider(
                     color: Colors.orangeAccent,
                     thickness: 5,
                     indent: 30,
                     endIndent: 10,
                   ),
                 ),
                SizedBox(
                  height: 500,
                  child:Column(
                    children: [
                       const Text(
                        'Team B',
                        style: TextStyle(fontSize: 25),
                      ),
                       Text(
                        '$teamB',
                        style: TextStyle(fontSize: 100),
                      ),
                      ElevatedButton(
                        style:
                        ElevatedButton.styleFrom(primary: Colors.deepOrange),
                        onPressed: () {
                          setState(() {
                            teamB+=1;
                          });
                        },
                        child: const Text(
                          'Add 1 Piont',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style:
                        ElevatedButton.styleFrom(primary: Colors.deepOrange),
                        onPressed: () {
                          setState(() {
                            teamB+=2;
                          });
                        },
                        child: const Text(
                          'Add 2 Piont',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style:
                        ElevatedButton.styleFrom(primary: Colors.deepOrange),
                        onPressed: () {
                          setState(() {
                            teamB+=3;
                          });
                        },
                        child: const Text(
                          'Add 3 Piont',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(8),
                primary: Colors.orangeAccent,
              ),
              onPressed: () {
                setState(() {
                  teamA=0;
                  teamB=0;
                });
              },
              child: const Text('Reset'),
            ),
          ),
          const SizedBox(height: 40,)
        ],
      ),
    );
  }
}
