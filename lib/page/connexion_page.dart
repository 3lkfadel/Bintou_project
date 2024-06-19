import 'package:flutter/material.dart';

import 'package:premier_projet_flutter/page/inscription.dart';
import 'package:premier_projet_flutter/page/librarypage.dart';
import 'package:premier_projet_flutter/page/principal_page/principal_page!.dart';


class ConnexionPage extends StatefulWidget {
  const ConnexionPage({super.key});

  @override
  State<ConnexionPage> createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Container(

          child: SafeArea(
              child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          SizedBox(height: 20),
            Text('Hi!, you are in the connexion page!',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Times New Roman',
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                )),
                SizedBox(height: 20,),
                        Image.asset('assets/Illustration/undraw_Key_points_re_u903.png'),
            SizedBox(
              height: 10,
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 120, 212, 248),
                  border: Border.all(
                    color: Color.fromARGB(255, 120, 212, 248),
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.8),
                  child: TextField(
                      decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'username',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 120, 212, 248),
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.8),
                  child: TextField(
                      decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(padding: const EdgeInsets.all(10),
            child: ElevatedButton(onPressed: (){
               Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PrincipalPage()),
                    );
            }, 
            style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    
                  )
            ), child: Text('Login',
              style: TextStyle(
                color: Colors.white, 
                fontSize: 16.0,
              ),),),
            ),
             
            
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                
                    Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text( 'you do not  have an account?',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
               ] ),
                
                GestureDetector(onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  InscriptionPage()),
                    );
                } ,
                    child: const Text(
                  'Register now',
                  style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'Times New Roman',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                )])])))));
          
    
}}