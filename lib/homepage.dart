import 'package:flutter/material.dart';
import 'package:newgame/const/consts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var characters = 'abcdefghijklmnopqrstuvwxyz'.toUpperCase();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text('Hangman: The Game'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                      flex: 4,
                      child: Container(
                        color: Colors.amber,
                      )),
                  Expanded(
                      child: Container(
                    color: Colors.green,
                  ))
                ],
              )),
          Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 7,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: characters.split("").map((e) {
                    return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColours.BigColour),
                        onPressed: () {},
                        child: Text(
                          e,
                          style: TextStyle(fontSize: 20),
                        ));
                  }).toList(),
                ),
              ))
        ],
      ),
    );
  }
}
