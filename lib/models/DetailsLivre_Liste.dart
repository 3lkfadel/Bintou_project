class Livre {
 String image;
 String name;
 String autor;
 double rating;
 int tomes;

 Livre({required this.image, required this.rating, required this.name, required this.autor,required this.tomes}); 

}

List<Livre> demoLivre = [
  Livre(image: "assets/images/image3.jpg", rating: 2.5, name: "Un homme ça ne pleure pas", autor: "FAIZA GUENE", tomes: 3),
  Livre(image: "assets/images/soeurs sang image.jpg", rating: 2.5, name: "j'aurai aimé...", autor: "Lya", tomes: 12),
  Livre(image: "assets/images/image DemonSlayer.png", rating: 2.5, name: "Demon Slayer", autor: "Koroharu Gotouge", tomes: 12),
  Livre(image: "assets/images/bersek.jpg", rating: 2.5, name: "Bersek", autor: "Koroharu Gotouge", tomes: 3),
  Livre(image: "assets/images/parasite.jpg", rating: 2.5, name: "parasite", autor: "Koroharu Gotouge", tomes: 1),
  Livre(image: "assets/images/Naruto.jpg", rating: 2.5, name: "Naruto", autor: "Koroharu Gotouge", tomes: 12),
];
