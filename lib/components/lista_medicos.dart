import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salitu/constantes.dart';

class ListaMedicos extends StatefulWidget {
  ListaMedicos();

  @override
  _ListaMedicosState createState() => _ListaMedicosState();
}

class _ListaMedicosState extends State<ListaMedicos> {
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
                cardMedicos(
                  FontAwesomeIcons.heart,
                  'Dr José',
                  'Cardiologista',
                  'Rua Brasil 50',
                ),
                cardMedicos(
                  FontAwesomeIcons.heart,
                  'Dr Joaquim de Abreu',
                  'Cardiologista',
                  'Rua Brasil 50',
                ),
                cardMedicos(
                  FontAwesomeIcons.heart,
                  'Dra Maria',
                  'Cardiologista',
                  'Rua Brasil 50',
                ),
                cardMedicos(
                  FontAwesomeIcons.heart,
                  'Dra Roberta',
                  'Cardiologista',
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

Card cardMedicos(icone, nomeMedico, especializacao, local) {
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
