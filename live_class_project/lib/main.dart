import 'package:flutter/material.dart';

/// Orientation Builder
/// Layout Builder
/// MediaQuery
/// Wrap
/// Const uses before widget

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

    // print(MediaQuery.of(context).orientation);
    // print(MediaQuery.of(context).size.height);
    // print(MediaQuery.of(context).size.width);
    // print(MediaQuery.of(context).size.aspectRatio);
    // print(MediaQuery.of(context).size.flipped);
    // print(MediaQuery.of(context).size.longestSide);
    // print(MediaQuery.of(context).size.shortestSide);
    // print(MediaQuery.of(context).displayFeatures);
    // print(MediaQuery.of(context).devicePixelRatio);
    //
    // print(MediaQuery.sizeOf(context));
    // print(MediaQuery.orientationOf(context));
    // print(MediaQuery.devicePixelRatioOf(context));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
     /* body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Scrollbar(
                thickness: 3,
                radius: Radius.circular(30),
                interactive: true,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  // scrollDirection: Axis.vertical,
                  child: Row(
                    children: [
                      Text('asdfsdfsdfsdfasdfsdf ksadflilsdkf lskd lfk'),
                      Text('asdfsdfsdfsdfasdf'),
                      Text('asdfsdfsdfsdfasdfsdf ksadflilsdkf lskd lfk'),
                    ],
                  ),
                ),
              ),
              const Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 10,
                children: [
                  Text('asdfsdfsdfsdfasdfsdf ksad'),
                  Text('saf'),
                  Text('asdfsdfsdfsdfasdfsdf ksadflilsdkf lskd lfk'),
                ],
              ),

              OrientationBuilder(
                builder: (context, orientation) {
                  print(orientation);
                  if (orientation == Orientation.portrait) {
                    return const Text('Screen looks good');
                  } else if (orientation == Orientation.landscape){
                    return const Text('Screen is too wider');
                  } else {
                    return const Text('Unknown');
                  }
                },
              ),
            ],
          ),
        ),
      ),*/
      body: LayoutBuilder(
        builder: (context, constraints) {
          print(constraints);
          if (constraints.maxWidth < 300) {
            return Text('Tiny device');
          } else if (constraints.maxWidth < 500) {
            return Text('Normal device');
          } else if (constraints.maxWidth < 700) {
            return Text('Tablet device');
          } else if (constraints.maxWidth < 1200) {
            return Text('Laptop device');
          } else {
            return Text('Too large');
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
