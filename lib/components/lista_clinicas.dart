import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salitu/constantes.dart';

class ListaClinicas extends StatefulWidget {
  ListaClinicas();

  @override
  _ListaClinicasState createState() => _ListaClinicasState();
}

class _ListaClinicasState extends State<ListaClinicas> {
  int _selectedIndex = 0;
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
        appBar: AppBar(
          title: Text('Salitu'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20.0),
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    FontAwesomeIcons.locationDot,
                    size: 16,
                    color: Colors.blueAccent[400],
                  ),
                  Text(
                    'Marilia / SP',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blueAccent[400],
                    ),
                  ),
                ],
              ),
            ),
          ),
          titleTextStyle: TextStyle(
            color: Colors.blueAccent[400],
            fontSize: 30,
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search_outlined,
                color: Colors.blueAccent[400],
              ),
              onPressed: () {
                Navigator.maybeOf(context).pop();
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.commentMedical,
                color: Colors.blueAccent[400],
              ),
              onPressed: () {
                Navigator.maybeOf(context).pop();
              },
            ),
          ],
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                cardClinicas(
                  FontAwesomeIcons.houseMedical,
                  'Cl??nica M??dica e Odontologia de Mar??lia',
                  'Cl??nico Geral e Odontologia',
                  'Rua Brasil 50',
                ),
                cardClinicas(
                  FontAwesomeIcons.houseMedical,
                  'Cl??nica M??dica e Odontologia de Mar??lia',
                  'Cl??nico Geral e Odontologia',
                  'Rua Brasil 50',
                ),
                cardClinicas(
                  FontAwesomeIcons.houseMedical,
                  'Cl??nica M??dica e Odontologia de Mar??lia',
                  'Cl??nico Geral e Odontologia',
                  'Rua Brasil 50',
                ),
                cardClinicas(
                  FontAwesomeIcons.houseMedical,
                  'Cl??nica M??dica e Odontologia de Mar??lia',
                  'Cl??nico Geral e Odontologia',
                  'Rua Brasil 50',
                ),
                cardClinicas(
                  FontAwesomeIcons.houseMedical,
                  'Cl??nica M??dica e Odontologia de Mar??lia',
                  'Cl??nico Geral e Odontologia',
                  'Rua Brasil 50',
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.houseMedical),
              label: 'In??cio',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.solidHeart,
              ),
              label: 'Minha Sa??de',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.solidUser,
              ),
              label: 'ListaMedicos',
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

Card cardClinicas(icone, nomeMedico, especializacao, local) {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>
      [
        ListTile(
          leading: Icon(icone, size: 35,),
          title: Text(nomeMedico),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(especializacao),
              Text(local),
            ],
          ),
        ),
      ],
    ),
  );
}
