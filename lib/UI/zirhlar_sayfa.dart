import 'package:flutter/material.dart';

class ZirhlarSayfa extends StatelessWidget {
  const ZirhlarSayfa({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        // ignore: sized_box_for_whitespace
        Container(
          width: MediaQuery.of(context).size.width,
          child: Image.asset('assets/resimler/banner.png', fit: BoxFit.fill,)
        ),
        const SizedBox(height: 10),

        const Divider(
          color: Colors.black,
        ),

        const Text('TEST ZIRHLAR SAYFA BASLIK', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),

        const Divider(
          color: Colors.black,
        ),

        const SizedBox(height: 10),

        const Text('Test zırhlar sayfa icerik alanı. Bu alanda zırhlar sayfa içeriği bulunur.', style: TextStyle(color: Colors.white, fontSize: 14,),),


      ],
    );
  }
}