import 'package:flutter/material.dart';
import 'package:tcc01/pages/nova_iniciativa.dart';
import 'package:tcc01/pages/pagina_lista_iniciativas.dart';
import 'package:tcc01/widgets/avatar_circulo.dart';
import 'package:tcc01/widgets/hamburger_menu.dart';

class MainPage extends StatefulWidget {
  final dynamic titulo;

  const MainPage({super.key, this.titulo});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 1;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> _widgetOptions = <Widget>[
    Padding(padding: EdgeInsets.all(12.0), child: NovaIniciativa()),
    Padding(padding: EdgeInsets.all(12.0), child: PaginaListaIniciativas()),
    Text('Finalizados', style: optionStyle),
    Text('Rascunho', style: optionStyle),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return GestureDetector(
              child: HamburgerMenu(),
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: Center(child: _widgetOptions[_selectedIndex]),
      drawer: Drawer(
        backgroundColor: Color(0xFF253334),
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  AvatarCirculo(pathImagem: 'assets/images/userAvatar.jpg'),
                  SizedBox(height: 10),
                  Text(
                    "Visitante",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Novo', style: TextStyle(color: Colors.white)),
              selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                _onItemTapped(0);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Em andamento',
                style: TextStyle(color: Colors.white),
              ),
              selected: _selectedIndex == 1,
              onTap: () {
                // Update the state of the app
                _onItemTapped(1);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Finalizados',
                style: TextStyle(color: Colors.white),
              ),
              selected: _selectedIndex == 2,
              onTap: () {
                // Update the state of the app
                _onItemTapped(2);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Rascunho',
                style: TextStyle(color: Colors.white),
              ),
              selected: _selectedIndex == 3,
              onTap: () {
                // Update the state of the app
                _onItemTapped(3);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
