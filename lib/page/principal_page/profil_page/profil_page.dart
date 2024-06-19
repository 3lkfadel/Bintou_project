import 'package:flutter/material.dart';
import 'package:premier_projet_flutter/page/principal_page/create_page.dart';
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Écrire', style: TextStyle(color: Colors.white)),
        actions: [
          CircleAvatar(
            backgroundImage:AssetImage("")
          ),
          SizedBox(width: 10),
        ],
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: EdgeInsets.all(15.0),
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.white10.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Continuer à écrire',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Titre par défaut - Écrivez votre titre',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '1 draft',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.white),
                  onPressed: () {
                    Navigator.push(context,
                     MaterialPageRoute(
                          builder: (context) =>  create_page()),
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          
          ListTile(
            leading: Icon(Icons.add, color: Colors.white),
            title: Text('Créer une nouvelle Histoire', style: TextStyle(color: Colors.white)),
            tileColor: Colors.black,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onTap: () {
             
            },
          ),
          SizedBox(height: 20),
          
          ListTile(
            leading: Icon(Icons.book, color: Colors.white),
            title: Text('Ressources utiles pour les Écrivains', style: TextStyle(color: Colors.white)),
            tileColor: Colors.black,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onTap: () {
             
            },
          ),
          SizedBox(height: 20),
          
          ListTile(
            leading: Icon(Icons.star, color: Colors.white),
            title: Text('Programmes & opportunités Wattpad', style: TextStyle(color: Colors.white)),
            tileColor: Colors.black,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onTap: () {
              print('Programmes & opportunités Wattpad');
            },
          ),
        ],
      ),
    );
  }
}