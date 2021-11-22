import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_movie/app/core/widgets/index.dart';
import 'package:search_movie/app/services/index.dart';

class EditCard extends StatelessWidget {
  final Top250DataDetail card;

  const EditCard(this.card, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MovieCard(card),
          TextButton(
            onPressed: () => Navigator.of(context).pop('like'),
            child: const Text('Send like'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop('dislike'),
            child: const Text('Send dislike'),
          )
        ],
      ),
    );
  }
}
