import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salitu/constantes.dart';

class MinhaSaude extends StatefulWidget {
  MinhaSaude();

  @override
  _MinhaSaudeState createState() => _MinhaSaudeState();
}

class _MinhaSaudeState extends State<MinhaSaude> {
  int _selectedIndex = 1;
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
          title: Text('Minha Saúde'),
          titleTextStyle: TextStyle(
            color: Colors.blueAccent[400],
            fontSize: 30,
          ),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Histórico de Consultas',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                cardHistorico(),
                cardHistorico(),
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
                FontAwesomeIcons.user,
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

Container cardComImagem(localImagem, corCard, textoCard) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: corCard,
    ),
    margin: EdgeInsets.all(5),
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Image.asset(
            localImagem,
            alignment: Alignment.topRight,
            height: 250,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4),
          child: Text(
            textoCard,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ],
    ),
  );
}

Column cardHistorico() {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(left: 10),
        child: Row(
          children: <Widget>[
            Text(
              'Sex. 29 Abril 2022',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(5, 3, 5, 20),
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              ListTile(
                title: const Text('Médico José Roberto'),
                subtitle: Text(
                  'Cardiologista',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Exames de Rotina pressão',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    child: const Text('Exames'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    child: const Text('Receitas'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
