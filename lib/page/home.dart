import 'package:flutter/material.dart';
import 'package:premier_projet_flutter/page/connexion_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(right: 5),
      height: 9,
      width: currentPage == index ? 50 : 15,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.blue : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  void onPageChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  Widget buildPage({required String text, required String imagePath, double textSize = 35}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        Text(
          text,
          style: TextStyle(
            fontSize: textSize,
            fontFamily: 'Times New Roman',
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Flexible(
            flex: 6,
            child: PageView(
              controller: _pageController,
              onPageChanged: onPageChanged,
              children: [
                buildPage(
                  text: 'Welcome!',
                  imagePath: "assets/Illustration/undraw_Bookshelves_re_lxoy.png",
                  textSize: 40,
                ),
                buildPage(
                  text: 'Are you bored?',
                  imagePath: "assets/Illustration/undraw_Meeting_re_i53h.png",
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/Illustration/undraw_Profile_data_re_v81r.png",
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Come read with me!',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Times New Roman',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 104, 148, 183),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ConnexionPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Let's go!",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => buildDot(index: index),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

