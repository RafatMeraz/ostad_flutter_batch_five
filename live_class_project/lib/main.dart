import 'package:flutter/material.dart';

/// KISS - Keep It Simple, Stupid

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

/// Mutable
/// Immutable

// Widget - two types
// Stateless - Immutable
// Stateful - Mutable

/// Stateful - two component
/// Widget
/// State

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          },
          child: Text('Go to Home'),
        ),
      ),
    );
  }
}


class HomeScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
    print('init State');
    /// on start a screen
    /// 1
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    ///2
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    /// 4
    print('onUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  int count = 0;

  @override
  Widget build(BuildContext context) {
    /// 3
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text(count.toString(), style: TextStyle(
          fontSize: 32,
        ),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count = count + 1;
          print(count);

          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactived');
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }
}
