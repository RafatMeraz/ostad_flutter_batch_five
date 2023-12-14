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
      backgroundColor: Color(0xFF10C419),
      appBar: AppBar(
        leading: Icon(Icons.home, color: Colors.black54, size: 32,),
        title: Text('Home', style: TextStyle(
          color: Colors.black
        ),),
        backgroundColor: Colors.yellow,
        elevation: 5,
      ),
      // body: Center(
      //   child: Text(
      //     'Hello ostad. We are going to complete the flutter skjds kjdkksj dksjd j',
      //     textAlign: TextAlign.center,
      //     maxLines: 3,
      //     style: TextStyle(
      //       color: Colors.white,
      //       fontSize: 32,
      //       fontWeight: FontWeight.bold,
      //       // backgroundColor: Colors.grey,
      //       decoration: TextDecoration.underline,
      //       wordSpacing: 4,
      //       letterSpacing: 5,
      //       overflow: TextOverflow.ellipsis
      //     ),
      //   ),
      // ),
      body: Center(
        // child: Image.network(
        //   'https://mdbootstrap.com/docs/standard/plugins/dummy/dummy.jpg',
        // ),
        child: Image.asset(
          'images/uncle-bob.jpg',
          height: 600,
          width: 300,
          fit: BoxFit.scaleDown,
          // color: Colors.grey,
          // repeat: ImageRepeat.repeatY,
        ),
      ),
    );
  }
}
