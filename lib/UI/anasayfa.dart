// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({ Key? key }) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // ignore: sized_box_for_whitespace
        Container(
          width: MediaQuery.of(context).size.width,
          child: Image.asset('assets/resimler/banner.png', fit: BoxFit.fill,)
        ),

        Divider(
          color: Colors.black,
        ),

        Text('TEST ANASAYFA BASLIK', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),

        Divider(
          color: Colors.black,
        ),

        Text('Test anasayfa icerik alanı. Bu alanda anasayfa içeriği bulunur.', style: TextStyle(color: Colors.white, fontSize: 14,),),


      ],
    );
  }

}



