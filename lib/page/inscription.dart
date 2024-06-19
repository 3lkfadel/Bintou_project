

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:premier_projet_flutter/page/principal_page/principal_page!.dart';

class InscriptionPage extends StatelessWidget {
  const InscriptionPage({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 248, 247, 0.893),
        body: Column(
        children: [
          Flexible(
            flex: 6,
            child: PageView(
              children: [

              
                   Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
              SizedBox(height: 20),
            Text('Write your name',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Times New Roman',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
                SizedBox(height:10 ,),
                        Image.asset('assets/images/undraw_Profile_pic_re_iwgo.png'),

                         Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                 child:
                 
               const  Column(
                  children: [
                 Padding(
                  padding:  EdgeInsets.only(left: 20.8),
                  child: TextField(
                      decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Name',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ), 
                  ],
                 )

              ),
            ),
                      ]
              
            ),
                     Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
            SizedBox(height: 10),
            Text('Write your first name',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Times New Roman',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
                 SizedBox(height: 20,),
                 Image.asset('assets/Illustration/undraw_Profile_data_re_v81r.png'),
                 




                 
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
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
                    hintText: 'First Name',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
              ),
            ),]),
                      
              


                Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
            SizedBox(height: 10),
            Text('put your birthday date',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Times New Roman',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
                 SizedBox(height: 20,),
                 Image.asset('assets/Illustration/undraw_undraw_undraw_undraw_sign_up_ln1s_-1-_s4bc_-1-_ee41_(1)_kf4d.png'),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
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
                    hintText: 'Date of birth',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
              ),
              )] ),
             Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
            SizedBox(height: 10),
            Text('create your email and your password',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Times New Roman',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
              
                Image.asset('assets/images/undraw_Profile_pic_re_iwgo.png'),

                  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
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
                    hintText: 'Email',
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
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
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
            Column(
                
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                       const Padding(padding:EdgeInsets.only(top:20)),
                    
                    ElevatedButton(
                      style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.all(25)),
                        backgroundColor:MaterialStatePropertyAll(Color.fromARGB(255, 104, 148, 183)) ,),
                     onPressed: (){
                      
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> PrincipalPage ())
                      );
                     },
                     child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.arrow_forward),
                          SizedBox(width: 5),
                          Text('come on !'),
                        ],
                    
                                          
                     ),
              )  ]
              
                                       


            )
  
                
                



                                               
         ] )]),


                  

    )]),
               );
        
    
        
    

}
}
