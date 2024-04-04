import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TennisLiveScoreScreen extends StatefulWidget {
  const TennisLiveScoreScreen({super.key, required this.docId});

  final String docId;

  @override
  State<TennisLiveScoreScreen> createState() => _TennisLiveScoreScreenState();
}

class _TennisLiveScoreScreenState extends State<TennisLiveScoreScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tennis live score'),
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(24),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('tennis')
                      .doc(widget.docId)
                      .snapshots(),
                  builder: (context,
                      AsyncSnapshot<DocumentSnapshot<Map<String, dynamic>>>
                          snapshot) {

                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    }

                    final playerOneScore = snapshot.data?.get('player1') ?? '0';
                    final playerTwoScore = snapshot.data?.get('player2') ?? '0';

                    return Row(
                      children: [
                        _buildPlayerScore(playerName: 'Player 1', score: playerOneScore),
                        const SizedBox(height: 50, child: VerticalDivider()),
                        _buildPlayerScore(playerName: 'Player 2', score: playerTwoScore),
                      ],
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlayerScore(
      {required final String playerName, required final String score}) {
    return Expanded(
      child: Column(
        children: [
          Text(
            score,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            playerName,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
