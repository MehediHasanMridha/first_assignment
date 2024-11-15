import 'package:flutter/material.dart';

void main() {
  runApp(HelloWorld());
}

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyClass();
  }
}

class MyClass extends StatelessWidget {
  const MyClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        //add center title
        title: Text('My Profile', style: TextStyle(color: Colors.black)),
        backgroundColor: Color.fromARGB(255, 255, 192, 1),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.black,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            color: Colors.black,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.phone),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(children: [
            CircleAvatar(
              backgroundColor: Color(0xffeaddff),
              radius: 80.0,
              //add icon image in the circle
              child: Image.asset(
                'assets/images/icecream.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Ice cream is very delicious right?",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            )
          ]),
          Column(children: [
            CircleAvatar(
                backgroundColor: Color(0xffeaddff),
                radius: 80.0,
                //add icon image in the circle
                child: Center(
                  child: Image.asset(
                    'assets/images/code.png',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                )),
            Text(
              "Programming is not boring if you love it",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            )
          ]),
          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            CircleAvatar(
              backgroundColor: Color(0xffeaddff),
              radius: 80.0,
              //add icon image in the circle
              child: Image.asset(
                'assets/images/drop.png',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            Center(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "if you submit directly copy from chatgpt then it will work",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ))
          ]),
        ],
      )),
    ));
  }
}
