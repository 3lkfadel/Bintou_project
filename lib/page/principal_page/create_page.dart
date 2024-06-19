import 'package:flutter/material.dart';

class create_page extends StatelessWidget {
  create_page({super.key});

  final List<String> genres = ['Action', 'Adventure', 'Comedy', 'Drama', 'Fantasy', 'Horror'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Écrire',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.save_alt),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    hintText: "Titre",
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: genres.map((genre) {
                    return ChoiceChip(
                      label: Text(genre),
                      selected: false,
                      onSelected: (bool selected) {},
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
                TextField(
                  maxLines: 10,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    hintText: "Écrivez votre roman ici...",
                    border: OutlineInputBorder(),
                  ),
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add_photo_alternate),
                  label: Text("Importer une image"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
