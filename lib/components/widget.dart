// ignore_for_file: prefer_const_constructors
import 'package:blist_wiki/sabitler/renkler.dart';
import 'package:flutter/material.dart';

Container aramaButon(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.04,
    width: MediaQuery.of(context).size.width * 0.12,
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        color: Colors.white,
      ),
    ),

    child: Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: const [
          Icon(Icons.search, color:Colors.white),
          SizedBox(width: 10),
          Text('Ara...', textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
        ],
      ),
    ),
                            
  );
}

Container kategoriContainer(BuildContext context, String kategoriAd) {
  return Container(
    color: Colors.black,
    padding: EdgeInsets.all(6),
    width: MediaQuery.of(context).size.width*0.15,
    child: Row(
      children: [
        Text(kategoriAd, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        Spacer(),
        Icon(Icons.arrow_drop_down, color: Colors.white),
      ],
    ),
  );
}

InputDecoration inputDecorationWidget(String isim) {
  return InputDecoration(
    hintText: isim,
    fillColor: Colors.blueGrey.shade100,
    filled: true,
    labelStyle: TextStyle(fontSize: 12),
    contentPadding: EdgeInsets.only(left:30),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blueGrey.shade100),
      borderRadius: BorderRadius.circular(15),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blueGrey.shade100),
      borderRadius: BorderRadius.circular(15),
    ),
  );
}

Container butonContainer(String yazi) {
  return Container(
    alignment: Alignment.center,
    padding: EdgeInsets.symmetric(vertical: 15),
    decoration: BoxDecoration(color: adminColorDark, borderRadius: BorderRadius.circular(10)),
    child: Text(yazi, style: TextStyle(color: Colors.white),),
  );
}

Container girisHataWidget(String hataisim){
  // ignore: avoid_unnecessary_containers
  return Container(
    child: Column(
      children: [
        Text(hataisim, style: TextStyle(fontSize: 12, color: Colors.red, fontFamily: 'Nexa Bold'),),
        SizedBox(height: 10,)
      ],
    ),
  );
}

Container kategoriButon(String isim, Color renk) {
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: renk,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Text(isim, style: TextStyle(color: Colors.black, fontSize: 16)),
  );
}

Future<dynamic> showDialogBasarili(BuildContext context) {
  return showDialog(context: context,
    builder: (context) => AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/resimler/basarili.png', height: 50, width: 50,),
          const SizedBox(height: 10),
          const Text('İşlem Başarılı!', textAlign: TextAlign.center, style: TextStyle(color: Colors.green)),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: butonContainer('Tamam'),
            ),
          )
        ],
      ),
    ),
  );
}
