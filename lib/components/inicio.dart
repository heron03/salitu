import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salitu/constantes.dart';

class Inicio extends StatefulWidget {
  Inicio();

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
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
                Container(
                  height: 80,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      circleCategorias(
                        FontAwesomeIcons.stethoscope,
                        'Clínico Geral',
                      ),
                      circleCategorias(
                        FontAwesomeIcons.tooth,
                        'Odontologia',
                      ),
                      circleCategorias(
                        FontAwesomeIcons.brain,
                        'Psicologia',
                      ),
                      circleCategorias(
                        FontAwesomeIcons.appleWhole,
                        'Nutrição',
                      ),
                      circleCategorias(
                        FontAwesomeIcons.crutch,
                        'Fisioterapia',
                      ),
                      circleCategorias(
                        FontAwesomeIcons.dumbbell,
                        'Educação Física',
                      ),
                      circleCategorias(
                        FontAwesomeIcons.heart,
                        'Cardiologia',
                      ),
                      circleCategorias(
                        FontAwesomeIcons.eye,
                        'Oculista',
                      ),
                      circleCategorias(
                        FontAwesomeIcons.plus,
                        'Mais Categorias',
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 325,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      cardComImagem(
                        'img/medico.png',
                        Color(0xFF180CCC),
                        'Melhores Médicos da Sua Região',
                        '/components/lista_medicos',
                        context,
                      ),
                      cardComImagem(
                        'img/paciente.png',
                        Color(0xFF0D36D6),
                        'Meu Hitórico de Saúde',
                        '/components/minha_saude',
                        context,
                      ),
                      cardComImagem(
                        'img/hospital.png',
                        Colors.blue[800],
                        'Buscar Clinicas médicas',
                        '',
                        context,
                      ),
                      cardComImagem(
                        'img/remedios.png',
                        Color(0xFF0DA0D6),
                        'Meus Remédios',
                        '/components/lista_remedios',
                        context,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house),
              label: 'Início',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.heart,
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
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Icon(icone),
      ),
      Text(textoCard, textScaleFactor: 0.8)
    ],
  );
}

InkWell cardComImagem(localImagem, corCard, textoCard, proximaTela, context) {
  return InkWell(
    onTap: () =>  Navigator.of(context).pushNamed(
        proximaTela,
      ),
    child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: corCard,
    ),
    width: 230.0,
    height: 200,
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
    ),
  );
}
