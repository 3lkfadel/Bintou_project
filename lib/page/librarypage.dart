import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
     
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Bibliothèque'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Lectures en Cours'),
              Tab(text: 'Archiviées'),
              Tab(text: 'Listes de Lectures'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ReadingInProgressPage(),
            ArchivedPage(),
            ReadingListPage(),
          ],
        ),
      ),
    );
  }
}

class ReadingInProgressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        BookCard(title: 'A Lie in Church', author: 'Julie Ever'),
        BookCard(title: 'Un Fou et Un Ange', author: 'Auteur Inconnu'),
        
      ],
    );
  }
}

class ArchivedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        BookCard(title: 'COMMENT SE FAIRE DES ENNEMIES', author: 'Julie Ever'),
        BookCard(title: 'LIE TO LIE ', author: 'Auteur Inconnu'),
        
      ],
    );
  }
}

class ReadingListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        BookCard(title: 'BERSEK', author: 'Julie Ever'),
        BookCard(title: 'VIRAL HIT', author: 'Auteur Inconnu'),
        
      ],
    );
  }
}

class BookCard extends StatelessWidget {
  final String title;
  final String author;

  BookCard({required this.title, required this.author});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.book),
        title: Text(title),
        subtitle: Text(author),
      ),
    );
  }
}
