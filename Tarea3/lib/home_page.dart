import 'package:flutter/material.dart';
import 'package:info_lugar/info_lugar.dart';
import 'package:info_lugar/item_actividad.dart';

class HomePage extends StatelessWidget {
  final List<ItemActividadModel> activities = [
    ItemActividadModel(
        child: Image.asset('assets/images/tokyo.jpg', fit: BoxFit.cover),
        place: "Tokyo"),
    ItemActividadModel(
        child: Image.asset('assets/images/kyoto.jpg', fit: BoxFit.cover),
        place: "Kyoto"),
    ItemActividadModel(
        child: Image.asset('assets/images/osaka.jpg', fit: BoxFit.cover),
        place: "Osaka"),
    ItemActividadModel(
        child: Image.asset('assets/images/nara.jpg', fit: BoxFit.cover),
        place: "Nara"),
    ItemActividadModel(
        child: Image.asset('assets/images/kusatsu.jpg', fit: BoxFit.cover),
        place: "Kusatsu"),
  ];
  HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reserva tu hotel'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset('assets/images/tokyo.jpg',
                      fit: BoxFit.cover,
                      height: constraints.maxHeight * 0.25,
                      width: constraints.maxWidth),
                ),
              ),
              // para poder poner column o listview en stack hay que encerrarlas en positioned y anclarla a todos lados
              Positioned(
                top: 64,
                bottom: 0,
                left: 0,
                right: 0,
                child: ListView(
                  children: [
                    InfoLugar(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Details"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.grey[200],
                          ),
                        ),
                        Text("Walkthrough Flight Detail"),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: activities.length,
                        itemBuilder: (BuildContext context, int index) {
                          Widget child = activities[index].child;
                          String place = activities[index].place;
                          return ItemActividad(
                              child: child, place: place, day: index + 1);
                        },
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..removeCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(
                              content: Text("Reservacion en progreso"),
                            ),
                          );
                      },
                      child: Text(
                        "Start booking",
                        style: TextStyle(color: Colors.grey[200]),
                      ),
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
