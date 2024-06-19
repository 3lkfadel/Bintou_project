import 'package:flutter/material.dart';
import 'package:premier_projet_flutter/PageAccueil.dart';
import 'package:premier_projet_flutter/page/principal_page/profil_page/profil_page.dart';
import "package:premier_projet_flutter/page/searchPage.dart";

class PrincipalPage extends StatefulWidget {
  const PrincipalPage({super.key});

  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
 int _currentIndex = 0;
  
  var _page = [
    PageAccueil(),
   SearchPage(),
   ProfilePage(),
   

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: _page[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            color: Colors.white,),
            label: 'Home',
          ),
          
              BottomNavigationBarItem(
                 icon:Icon(Icons.search,
                 color: Colors.white,),
                 label: 'research',
              ),
              BottomNavigationBarItem(
            icon: Icon(Icons.person,
            color: Colors.white,),
            label: 'profil',
          ),


        ],
        onTap: (value) {
          setState(() {
            _currentIndex=value;
          });
        },
      ),
    );
  }
}
