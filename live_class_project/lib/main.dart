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
  TextEditingController searchTextFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              print('Tapped on hello button');
            },
            child: Text('Hello'),
            onLongPress: () {
              print('Long pressed on hello button');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              foregroundColor: Colors.black,
              // minimumSize: Size(300, 40),
              // maximumSize: Size(300, 80),
              // padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              padding: EdgeInsets.only(left: 32, top: 16, right: 32, bottom: 30),
              elevation: 5,
              shadowColor: Colors.black,
              textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              )
            ),
          ),
          TextButton(
            onPressed: () {
              print('Pressed on text button');
            },
            child: Text('Text button'),
            style: TextButton.styleFrom(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.add),),
          ),
          Row(),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              controller: searchTextFieldController,
              onTap: () {
                print('sdfasdf');
              },
              keyboardType: TextInputType.emailAddress,
              onChanged: (String input) {
                print(input);
              },
              textInputAction: TextInputAction.done,
              onSubmitted: (String value) {
                print(searchTextFieldController.text);
                searchTextFieldController.clear();
              },
              obscureText: false,
              decoration: InputDecoration(
                enabled: true,
                hintText: 'Enter your name',
                label: Text('Name'),
                // prefixIcon: Icon(Icons.add),
                // prefix: Icon(Icons.add),
                // suffixIcon: Icon(Icons.remove_red_eye_outlined),
                // suffix: Text('df'),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.amber,
                      width: 10,
                      style: BorderStyle.solid,
                    ),
                  ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber,
                    width: 10,
                    style: BorderStyle.solid,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepOrangeAccent,
                    width: 10,
                    style: BorderStyle.solid,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 3,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              print('tapped on container');
            },
            child: Container(
              // color: Colors.red,
              // margin: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              margin: EdgeInsets.only(left: 16, right: 32, bottom: 10, top: 24),
              padding: EdgeInsets.all(32),
              width: 500,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(32)
                ),
                border: Border.all(
                  color: Colors.green,
                  width: 10,
                  style: BorderStyle.solid
                ),
                // shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    offset: Offset(4, 8), // Shadow position
                  ),
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 7,
                    offset: Offset(4, 8), // Shadow position
                  ),
                  BoxShadow(
                    color: Colors.green,
                    blurRadius: 5,
                    offset: Offset(4, 8), // Shadow position
                  ),
                ]
              ),
              alignment: Alignment.center,
              child: Icon(Icons.android),
            ),
          ),

          InkWell(
              onTap: () {
                print('on tapped on text');
              },
              splashColor: Colors.red,
              highlightColor: Colors.green,
              radius: 10,
              child: Text('sfadskjf')),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
