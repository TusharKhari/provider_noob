import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_literals_to_create_immutables,prefer_const_constructors_in_immutables, camel_case_types,prefer_const_constructors

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding : const EdgeInsets.symmetric(vertical: 30),
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.indigo,
            Colors.pink
          ],
          begin: Alignment.topLeft, 
          end: Alignment.bottomRight
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 150,
              backgroundImage: NetworkImage(
                'https://i0.wp.com/soonbyyou.tv/wp-content/uploads/2016/10/Jessica-Schechter-Headshot-Rep.-2015.jpg?fit=2429%2C3236&ssl=1'
              ),
              
            ),
            Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Text(
                  'Jessica Schechter',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic
                  ),
                  ),
                Text(
                  'age : NA',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic
                  ),
                  ),
                Text(
                  'live in new york',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic
                  ),
                  ),
              ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}