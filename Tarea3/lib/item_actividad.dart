import 'package:flutter/material.dart';

class ItemActividadModel {
  final Widget child;
  final String place;
  ItemActividadModel({required this.child, required this.place});
}

class ItemActividad extends StatelessWidget {
  final Widget? child;
  final int? day;
  final String? place;
  const ItemActividad(
      {super.key, required this.child, required this.day, required this.place});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 120,
            width: 120,
            child: child,
          ),
          Text("Day $day", style: TextStyle(fontSize: 11)),
          Text("$place"),
        ],
      ),
    );
  }
}
