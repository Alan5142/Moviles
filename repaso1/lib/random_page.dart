import 'dart:math';

import 'package:flutter/material.dart';

class RandomGeneratorPage extends StatefulWidget {
  final String pageOneText;
  const RandomGeneratorPage({super.key, required this.pageOneText});

  @override
  State<RandomGeneratorPage> createState() => _RandomGeneratorPageState();
}

class _RandomGeneratorPageState extends State<RandomGeneratorPage> {
  int _randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.lightBlue, Colors.white],
          ),
        ),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Genere numero random',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.deepPurple,
                    fontFamily: 'Vampire Wars'),
              ),
              Text(
                '$_randomNumber',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              // Color white
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      var rng = Random();
                      _randomNumber = rng.nextInt(1000);
                    });
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  child: const Text('Generar',
                      style: TextStyle(color: Colors.black))),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pop('${widget.pageOneText} $_randomNumber');
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: const Text('Guardar',
                    style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
