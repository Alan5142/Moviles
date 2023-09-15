import 'package:flutter/material.dart';
import 'package:repaso1/buttons_page.dart';
import 'package:repaso1/random_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _pageTwoText;
  String? _pageThreeText;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tarea 1'),
        ),
        body: Column(
          children: [
            const Text(
              'Bienvenidos',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Matisse EB',
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset('assets/images/dash_dart.png'),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Seleccione la accion a realizar',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (ctx) {
                                return AlertDialog(
                                  title: const Text('Ingrese datos'),
                                  content: TextField(
                                    controller: _controller,
                                    maxLength: 10,
                                    decoration: const InputDecoration(
                                      hintText: 'Ingrese palabra',
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('Cancelar'),
                                    ),
                                    TextButton(
                                      onPressed: () async {
                                        Navigator.of(context).pop();
                                        final result =
                                            await Navigator.of(context)
                                                .push<String>(
                                          MaterialPageRoute(
                                            builder: (ctx) {
                                              return RandomGeneratorPage(
                                                pageOneText: _controller.text,
                                              );
                                            },
                                          ),
                                        );

                                        setState(() {
                                          _pageTwoText = result;
                                          _controller.clear();
                                        });
                                      },
                                      child: const Text('Aceptar'),
                                    ),
                                  ],
                                );
                              });
                        },
                        child: const Text('Pagina 2'),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          final result =
                              await Navigator.of(context).push<String>(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const ButtonsPage();
                              },
                            ),
                          );

                          setState(() {
                            _pageThreeText = result;
                          });
                        },
                        child: const Text('Pagina 3'),
                      ),
                    ],
                  ),
                  Text('Pg. 2 => ${_pageTwoText ?? ''}',
                      textAlign: TextAlign.center),
                  Text('Pg. 3 => ${_pageThreeText ?? ''}',
                      textAlign: TextAlign.center),
                ],
              ),
            )
          ],
        ));
  }
}
