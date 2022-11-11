import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.people_alt_outlined),
          onPressed: () {
            _personas.add(
              Persona('Raymundo', 'Montelongo', '20201314'),
            );
          },
        ),
        body: ListView.builder(
            
            itemCount: _personas.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(
                    _personas[index].name + ' ' + _personas[index].lastname),
                subtitle: Text(_personas[index].cuenta),
                leading: CircleAvatar(
                  child: Text(_personas[index].name.substring(0, 1)),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              );
            }),
      ),
    );
  }
}

class Persona {
  String name;
  String lastname;
  String cuenta;
  Persona(this.name, this.lastname, this.cuenta);
}

List<Persona> _personas = [
  Persona('Ángel', 'Rojas', '20177093'),
  Persona('Jaime', 'Juárez', '20177093'),
  Persona('Mario', 'Neri', '20177093'),
  Persona('René', 'Valencia', '20177093'),
];
