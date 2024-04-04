import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:live_class_project/tennis_live_score_screen.dart';

class OngoingMatchesScreen extends StatefulWidget {
  const OngoingMatchesScreen({super.key});

  @override
  State<OngoingMatchesScreen> createState() => _OngoingMatchesScreenState();
}

class _OngoingMatchesScreenState extends State<OngoingMatchesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ongoing matches'),
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('tennis').snapshots(),
          builder: (context,
              AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }
            return ListView.separated(
              itemCount: snapshot.data?.docs.length ?? 0,
              itemBuilder: (context, index) {
                DocumentSnapshot doc = snapshot.data!.docs[index];
                return ListTile(
                  title: Text(doc.get('name')),
                  subtitle: Text(doc.id),
                  trailing: const Icon(Icons.arrow_forward_outlined),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TennisLiveScoreScreen(
                          docId: doc.id,
                        ),
                      ),
                    );
                  },
                );
              },
              separatorBuilder: (_, __) => const Divider(),
            );
          }),
    );
  }
}
