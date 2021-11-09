import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_movie/app/core/widgets/index.dart';

class EditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const MovieCard(),
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
