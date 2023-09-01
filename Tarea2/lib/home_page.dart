import 'package:flutter/material.dart';
import 'package:iteso_app/like_button.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isEmailPressed = false;

  bool _isPhonePressed = false;

  bool _isRoutePressed = false;

  int _likes = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(
              'https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg?w=2000'),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                ListTile(
                  title: Text('El ITESO'),
                  subtitle: Text('San Pedro Tlaquepaque, Jalisco'),
                  trailing: LikeButton(
                    likes: _likes,
                    onLiked: () {
                      setState(() {
                        _likes++;
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.mail),
                          iconSize: 50,
                          color: _getColor(_isEmailPressed),
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                              ..hideCurrentSnackBar()
                              ..showSnackBar(
                                SnackBar(
                                  content: Text('Enviar correo'),
                                  duration: Duration(seconds: 1),
                                ),
                              );
                            setState(() {
                              _isEmailPressed = !_isEmailPressed;
                            });
                          },
                        ),
                        Text('Correo')
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.phone),
                          color: _getColor(_isPhonePressed),
                          iconSize: 50,
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                              ..hideCurrentSnackBar()
                              ..showSnackBar(
                                SnackBar(
                                  content: Text('Hacer llamada'),
                                  duration: Duration(seconds: 1),
                                ),
                              );
                            setState(() {
                              _isPhonePressed = !_isPhonePressed;
                            });
                          },
                        ),
                        Text('Llamada')
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          color: _getColor(_isRoutePressed),
                          icon: Icon(Icons.directions),
                          iconSize: 50,
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                              ..hideCurrentSnackBar()
                              ..showSnackBar(
                                SnackBar(
                                  content: Text('Ver ruta'),
                                  duration: Duration(seconds: 1),
                                ),
                              );
                            setState(() {
                              _isRoutePressed = !_isRoutePressed;
                            });
                          },
                        ),
                        Text('Ruta')
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 64),
                Text(
                  """El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente) es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957. La institución forma parte del Sistema Universitario Jesuita (SUJ) que integra a ocho universidades en México. La universidad es nombrada como la Universidad Jesuita de Guadalajara.2​ """,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color _getColor(bool isPressed) {
    return isPressed ? Colors.indigo : Colors.black;
  }
}
