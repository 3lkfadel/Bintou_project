import'package:flutter/material.dart';
import 'package:premier_projet_flutter/page/home.dart';
void main(){
runApp(const MyAPP());
}

class MyAPP extends StatelessWidget{
  const MyAPP({super.key}) ;

  @override
  Widget build (BuildContext context){
    return  const MaterialApp(
      title: 'DBYBOOKS',
      color: Colors.purple,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
  );
}
}

