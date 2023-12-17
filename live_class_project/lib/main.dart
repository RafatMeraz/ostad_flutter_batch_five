import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo app',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home',),
        elevation: 5,
      ),
      // body: Column(
      //   children: [
      //     // Vertically
      //     Text('Hello'),
      //     Text('World'),
      //   ],
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          // Horizontally arrange
          Text('Hello'),
          Text('World'),
          Text('World'),
          Image.asset(
            'images/uncle-bob.jpg',
            width: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('sdfd'),
              Text('alsk fkfl skd'),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('sdfsdf'),
              Text('sdfsdf'),
              Text('sdfsdf'),
              Text('sdfsdf'),
              Text('sdfsdf'),
            ],
          ),
          // Text('Hello from ostad'),
          RichText(text: TextSpan(
            text: 'Hello ',
            style: TextStyle(
                color: Colors.pink,
              fontSize: 24
              ),
            children: [
              TextSpan(
                text: 'from',
                style: TextStyle(
                  color: Colors.black54
                )
              ),
              TextSpan(
                text: ' Ostad',
                style: TextStyle(
                  fontSize: 12
                )
              ),
            ]
          ),
          ),
          RichText(text: TextSpan(
            text: 'Please accept the ',
            style: TextStyle(
                color: Colors.pink,
              fontSize: 24
              ),
            children: [
              TextSpan(
                text: 'term and condition',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                )
              ),
              TextSpan(
                text: ' for use the app.',
              ),
            ]
          ),
          ),
          ElevatedButton(
            onPressed: () {
              // showAboutDialog(context: context,);
              // showDialog(context: context, builder: (context) {
              //   return AlertDialog(
              //     title: Text('Message'),
              //     content: Text('Hello, welcome to app'),
              //     actions: [
              //       ElevatedButton(onPressed: () {}, child: Text('cancel'),),
              //     ],
              //   );
              // });

              showModalBottomSheet(
                  isDismissible: false,
                  backgroundColor: Colors.yellow,
                  barrierColor: Colors.pink.shade300,
                  context: context,
                  builder: (_) {
                    return Column(
                      children: [
                        Text('Message'),
                        Text('Hello world'),
                      ],
                    );
              });
            },
            child: Text('Tap here'),
          ),
        ],
      ) ,
    );
  }
}
