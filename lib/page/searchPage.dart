import 'package:flutter/material.dart';
import 'package:premier_projet_flutter/models/DetailsLivre_Liste.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Livre> displayedBooks = demoLivre;
  TextEditingController searchController = TextEditingController();

  void filterBooks(String query) {
    List<Livre> filteredBooks = demoLivre.where((livre) {
      return livre.name.toLowerCase().contains(query.toLowerCase()) ||
             livre.autor.toLowerCase().contains(query.toLowerCase());
    }).toList();

    setState(() {
      displayedBooks = filteredBooks;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
               automaticallyImplyLeading: false,

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recherche",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                  
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                  hintText: "Rechercher par titre ou auteur",
                ),
                onChanged: filterBooks,
              ),
            ),
            
            Expanded(
              child: ListView.builder(
                itemCount: displayedBooks.length,
                itemBuilder: (context, index) {
                  Livre livre = displayedBooks[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: Image.asset(
                        livre.image,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      title: Text(livre.name),
                      subtitle: Text(livre.autor),
                      trailing: Text('Tomes: ${livre.tomes}'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
