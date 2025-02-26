import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  const MisIconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Frida Abril Cisneros Hernadez"),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          centerTitle: true,
          backgroundColor: Color(0xff081b84),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .start, // Alinea el contenido en la parte superior
            children: <Widget>[
              SizedBox(height: 20), // Espacio adicional en la parte superior
              Text(
                "Frida Abril Cisneros Hernadez mat:22308051281162",
                style: TextStyle(fontSize: 20, color: Color(0xff0c0c0c)),
              ),
              SizedBox(
                height: 30, // Espacio entre el texto y los iconos
              ),
              // Primera fila
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Centra los iconos en la fila
                children: <Widget>[
                  IconWithLabel(
                      icon: Icons.access_alarms,
                      label: 'Alarma',
                      color: Colors.yellow),
                  IconWithLabel(
                      icon: Icons.people,
                      label: 'persona',
                      color: Color(0xffe52d20)),
                  IconWithLabel(
                      icon: Icons.access_time,
                      label: 'Hora',
                      color: Color(0xff4659b2)),
                ],
              ),
              // Segunda fila
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Centra los iconos en la fila
                children: <Widget>[
                  IconWithLabel(
                      icon: Icons.abc_outlined,
                      label: 'Abc',
                      color: Color(0xffd950c2)),
                  IconWithLabel(
                      icon: Icons.accessibility,
                      label: 'Personal',
                      color: Color(0xffcd8cc2)),
                  IconWithLabel(
                      icon: Icons.account_balance_rounded,
                      label: 'Lugar',
                      color: Color(0xff82b3e0)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
} // fin clase mis iconos

class IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color; // Nuevo parámetro para el color del icono

  const IconWithLabel(
      {required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.all(8.0), // Espacio alrededor de cada icono y texto
      child: Column(
        children: <Widget>[
          Icon(icon, size: 50, color: color), // Icono con color personalizado
          SizedBox(height: 8), // Espacio entre el icono y el texto
          Text(label, style: TextStyle(fontSize: 15.0)), // Subtítulo
        ],
      ),
    );
  }
}
