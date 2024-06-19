import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String image;
  final String title;
  final String auth;
  final double rating;
  final int tomes;

  const DetailsPage({
    super.key,
    required this.image,
    required this.title,
    required this.auth,
    required this.rating,
    required this.tomes,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: 
        [
          IconButton(onPressed: (){}, icon: Icon(Icons.share),),
         ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Image.asset(image),
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Times New Roman',
                color: Color.fromARGB(255, 0, 16, 16),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              auth,
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Times New Roman',
                color: Color.fromARGB(255, 0, 16, 16),
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Text(
                    '$rating',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Tomes: $tomes',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text("Start Reading"),
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue),
                        side: MaterialStateProperty.all<BorderSide>(
                          BorderSide(color: Colors.lightBlue),
                        ),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 10),
              child: ListView.builder(
                shrinkWrap: true, 
                physics: NeverScrollableScrollPhysics(), 
                itemCount: tomes,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0), 
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ListTile(
                        title: Text('Tome ${index + 1}'),
                        onTap: (){},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
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
