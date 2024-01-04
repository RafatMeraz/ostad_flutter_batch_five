import 'package:flutter/material.dart';

/// Flexible
/// Expanded
/// AspectRatio
/// SizedBox
/// FractionallySizedBox

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Home Screen'),
      ),
      body: Column(
        children: [
        /*  Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              color: Colors.purple,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              color: Colors.grey,
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              color: Colors.red,
            ),
          )*/
         /* SizedBox(
            width: 100,
            height: 100,
            child: Text('safjsdjfskdjf ksdkf jkdj fdj AD JSKJ S  SDJ SKDJK SJD S JKJS DSKD JKASKDJSK K JKSDJ S '),
          ),
          SizedBox(
            height: 500,
            width: 2000,
            child: FractionallySizedBox(
              heightFactor: 0.9,
              widthFactor: 0.7,
              alignment: Alignment.center,
              child: Text('sjf klsdjfjsdf jsdjf ksdjkf ls'),
            ),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: Text('sdfsdf'),
          )*/
          SizedBox(
            width: 100,
            child: AspectRatio(
              aspectRatio: 2/2,
              child: Container(
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
