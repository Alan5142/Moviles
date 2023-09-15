import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Pagina 3'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop('٩(◕‿◕｡)۶');
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              child: const Text(
                '٩(◕‿◕｡)۶',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop('ʕ •̀ ω •́ ʔ');
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              child: const Text(
                'ʕ •̀ ω •́ ʔ',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop('¯\\_(ツ)_/¯');
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              child: const Text(
                '¯\\_(ツ)_/¯',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      );
}
