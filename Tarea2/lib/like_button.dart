import 'package:flutter/material.dart';

typedef void OnLiked();

class LikeButton extends StatelessWidget {
  final int likes;
  final OnLiked onLiked;
  const LikeButton({super.key, this.likes = 0, required this.onLiked});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          color: Colors.indigo,
          icon: Icon(Icons.thumb_up),
          onPressed: onLiked,
        ),
        Text('$likes'),
      ],
    );
  }
}
