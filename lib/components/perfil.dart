import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salitu/constantes.dart';

class Perfil extends StatefulWidget {
  Perfil();

  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  int _selectedIndex = 2;
  void _onItemTapped(int index) {
    setState(() {
      Navigator.of(context).pushNamed(
        navbarNavigator[index],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 50, 10, 20),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Heron José',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ),
                Divider(indent: 16),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Mensagens'),
                ),
                Divider(indent: 16),
                ListTile(
                  leading: Icon(FontAwesomeIcons.capsules),
                  title: Text('Remédios'),
                  onTap: () => Navigator.of(context).pushNamed(
                    '/components/lista_remedios',
                  ),
                ),
                Divider(indent: 16),
                ListTile(
                  leading: Icon(Icons.calendar_view_month),
                  title: Text('Calendario'),
                ),
                Divider(indent: 16),
                ListTile(
                  leading: Icon(FontAwesomeIcons.gear),
                  title: Text('Configurações'),
                ),
                Divider(indent: 16),
                ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text('Notificações'),
                ),
                Divider(indent: 16),
                ListTile(
                  leading: Icon(
                    FontAwesomeIcons.locationDot,
                  ),
                  title: Text('Endereços'),
                ),
                Divider(indent: 16),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.houseMedical),
              label: 'Início',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.solidHeart,
              ),
              label: 'Minha Saúde',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.solidUser,
              ),
              label: 'Perfil',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blueAccent[300],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

Column circleCategorias(icone, textoCard) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 1, top: 1, right: 5, bottom: 1),
        width: 60.0,
        height: 60.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Icon(icone),
      ),
      Text(textoCard, textScaleFactor: 0.8)
    ],
  );
}
