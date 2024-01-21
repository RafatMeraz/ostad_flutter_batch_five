import 'package:flutter/material.dart';
import 'package:live_class_project/water_consume.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<WaterConsume> waterConsumeList = [];
  final TextEditingController _noOfGlassesTEController =
      TextEditingController(text: '1');
  final TextEditingController _noteTEController =
      TextEditingController(text: 'Morning');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'Water Tracker',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(100),
                    onTap: () {
                      if (_noOfGlassesTEController.text.trim().isEmpty) {
                        _noOfGlassesTEController.text = '1';
                      }
                      final noOfGlasses = _noOfGlassesTEController.text.trim();
                      int value = int.tryParse(noOfGlasses) ?? 1;
                      // waterConsumeList.add(WaterConsume(
                      //     value, DateTime.now(), _noteTEController.text));
                      waterConsumeList.insert(
                          0,
                          WaterConsume(
                              value, DateTime.now(), _noteTEController.text));
                      setState(() {});
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          border: Border.all(
                            color: Colors.deepOrange,
                            width: 4,
                          ),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Text(
                        'Tap to Add',
                        style: TextStyle(
                            // color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 50,
                        child: TextField(
                          controller: _noOfGlassesTEController,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      SizedBox(
                        width: 200,
                        child: TextField(
                          controller: _noteTEController,
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListView.builder(
                itemCount: waterConsumeList.length,
                shrinkWrap: true,
                primary: false,
                // reverse: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(waterConsumeList[index].noOfGlass.toString()),
                    ),
                    title: Text(waterConsumeList[index].note),
                    subtitle: Text(
                        DateFormat.yMEd().add_jms().format(waterConsumeList[index].time),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete_outline),
                      onPressed: () {
                        waterConsumeList.removeAt(index);
                        setState(() {});
                      },
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
