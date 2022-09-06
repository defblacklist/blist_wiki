// ignore_for_file: prefer_const_constructors
import 'package:blist_wiki/UI/silahlar_sayfa.dart';
import 'package:blist_wiki/UI/zirhlar_sayfa.dart';
import 'package:blist_wiki/UI/anasayfa.dart';
import 'package:blist_wiki/components/listeler.dart';
import 'package:flutter/material.dart';
import 'package:blist_wiki/sabitler/renkler.dart';
import 'package:blist_wiki/components/widget.dart';

class TemaUI extends StatefulWidget {

  const TemaUI({ Key? key}) : super(key: key);

  @override
  State<TemaUI> createState() => _TemaUIState();
}

class _TemaUIState extends State<TemaUI> {

  final KategoriListeleri _kategoriListeleri = KategoriListeleri();

  bool ekipmanDropdownAcildi = false;
  bool sandikDropdownAcildi = false;
  bool bossDropdownAcildi = false;
  bool metinDropdownAcildi = false;
  bool zindanDropdownAcildi = false;
  bool sistemDropdownAcildi = false;
  bool eventDropdownAcildi = false;
  bool rehberDropdownAcildi = false;

  String? kategoriSecim;

  sayfaGorunumu(){
    switch (kategoriSecim) {
      case null:
        return Anasayfa();
      case 'Silahlar':
        return SilahlarSayfa();
      case 'Zırhlar':
        return ZirhlarSayfa();
      case 'Kasklar':
        return Anasayfa();
      case 'Bilezikler':
        return Anasayfa();
      case 'Kolyeler':
        return Anasayfa();
      case 'Küpeler':
        return Anasayfa();
      case 'Ayakkabılar':
        return Anasayfa();
      case 'Kalkanlar':
        return Anasayfa();
      case 'Kemerler':
        return Anasayfa();
      case 'Metin Sandıkları':
        return Anasayfa();
      case 'Patron Sandıkları':
        return Anasayfa();
      case 'Etkinlik Sandıkları':
        return Anasayfa();
      default:
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: bgColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
    
                // icerik alanı
                Container(
                  height: 655,
                  width: 1016,
                  decoration: BoxDecoration(
                    color: icerikColor,
                    border: Border.all(color: Colors.black, width: 1)
                  ),

                  child: Row(
                    children: [

                      // Sol Taraf
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                        
                                // Arama Buton
                                aramaButon(context),
                        
                                SizedBox(height: 18),
                        
                        
                                // Ekipmanlar
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      ekipmanDropdownAcildi == true ? ekipmanDropdownAcildi = false : ekipmanDropdownAcildi = true;
                                      sandikDropdownAcildi = false;
                                      bossDropdownAcildi = false;
                                      metinDropdownAcildi = false;
                                      zindanDropdownAcildi = false;
                                      sistemDropdownAcildi = false;
                                      eventDropdownAcildi = false;
                                      rehberDropdownAcildi = false;
                                    });
                                  },
                                  child: kategoriContainer(context, "Ekipmanlar"),
                                ),
                        
                                ekipmanDropdownAcildi == false ? Container() : 
                                Container(
                                  width: MediaQuery.of(context).size.width*0.15,
                                  color: Colors.black,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    children: _kategoriListeleri.ekipmanList.map((ekipmanlar) {
                                      return GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            kategoriSecim = ekipmanlar;
                                          });
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                                          child: Text(ekipmanlar, style: TextStyle(color: Colors.white, fontSize: 14)),
                                        ),
                                      );
                                    }).toList(),


                                  ),
                                ),
                        
                                SizedBox(height: 10),
                        
                                // Sandıklar
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      sandikDropdownAcildi == true ? sandikDropdownAcildi = false : sandikDropdownAcildi = true;
                                      ekipmanDropdownAcildi = false;
                                      bossDropdownAcildi = false;
                                      metinDropdownAcildi = false;
                                      zindanDropdownAcildi = false;
                                      sistemDropdownAcildi = false;
                                      eventDropdownAcildi = false;
                                      rehberDropdownAcildi = false;
                                    });
                                  },
                                  child: kategoriContainer(context, "Sandıklar"),
                                ),
                        
                                sandikDropdownAcildi == false ? Container() : 
                                Container(
                                  width: MediaQuery.of(context).size.width*0.15,
                                  color: Colors.black,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    children: _kategoriListeleri.sandikList.map((sandiklar) {
                                      return GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            kategoriSecim = sandiklar;
                                          });
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                                          child: Text(sandiklar, style: TextStyle(color: Colors.white, fontSize: 14)),
                                        ),
                                      );
                                    }).toList(),


                                  ),
                                ),
                        
                                SizedBox(height: 10),
                        
                                // Patronlar
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      bossDropdownAcildi == true ? bossDropdownAcildi = false : bossDropdownAcildi = true;
                                      ekipmanDropdownAcildi = false;
                                      sandikDropdownAcildi = false;
                                      metinDropdownAcildi = false;
                                      zindanDropdownAcildi = false;
                                      sistemDropdownAcildi = false;
                                      eventDropdownAcildi = false;
                                      rehberDropdownAcildi = false;
                                    });
                                  },
                                  child: kategoriContainer(context, "Patronlar"),
                                ),
                        
                                bossDropdownAcildi == false ? Container() : 
                                Container(
                                  height: 150,
                                  width: MediaQuery.of(context).size.width*0.15,
                                  color: Colors.black,
                                ),
                        
                                SizedBox(height: 10),
                        
                                // Metinler
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      metinDropdownAcildi == true ? metinDropdownAcildi = false : metinDropdownAcildi = true;
                                      ekipmanDropdownAcildi = false;
                                      sandikDropdownAcildi = false;
                                      bossDropdownAcildi = false;
                                      zindanDropdownAcildi = false;
                                      sistemDropdownAcildi = false;
                                      eventDropdownAcildi = false;
                                      rehberDropdownAcildi = false;
                                    });
                                  },
                                  child: kategoriContainer(context, "Metinler"),
                                ),
                        
                                metinDropdownAcildi == false ? Container() : 
                                Container(
                                  height: 150,
                                  width: MediaQuery.of(context).size.width*0.15,
                                  color: Colors.black,
                                ),
                        
                                SizedBox(height: 10),
                        
                                // Zindanlar
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      zindanDropdownAcildi == true ? zindanDropdownAcildi = false : zindanDropdownAcildi = true;
                                      ekipmanDropdownAcildi = false;
                                      sandikDropdownAcildi = false;
                                      bossDropdownAcildi = false;
                                      metinDropdownAcildi = false;
                                      sistemDropdownAcildi = false;
                                      eventDropdownAcildi = false;
                                      rehberDropdownAcildi = false;
                                    });
                                  },
                                  child: kategoriContainer(context, "Zindanlar"),
                                ),
                        
                                zindanDropdownAcildi == false ? Container() : 
                                Container(
                                  height: 150,
                                  width: MediaQuery.of(context).size.width*0.15,
                                  color: Colors.black,
                                ),
                        
                                SizedBox(height: 10),
                        
                                // Sistemler
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      sistemDropdownAcildi == true ? sistemDropdownAcildi = false : sistemDropdownAcildi = true;
                                      ekipmanDropdownAcildi = false;
                                      sandikDropdownAcildi = false;
                                      bossDropdownAcildi = false;
                                      metinDropdownAcildi = false;
                                      zindanDropdownAcildi = false;
                                      eventDropdownAcildi = false;
                                      rehberDropdownAcildi = false;
                                    });
                                  },
                                  child: kategoriContainer(context, "Sistemler"),
                                ),
                        
                                sistemDropdownAcildi == false ? Container() : 
                                Container(
                                  height: 150,
                                  width: MediaQuery.of(context).size.width*0.15,
                                  color: Colors.black,
                                ),
                        
                                SizedBox(height: 10),
                        
                                // Etkinlikler
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      eventDropdownAcildi == true ? eventDropdownAcildi = false : eventDropdownAcildi = true;
                                      ekipmanDropdownAcildi = false;
                                      sandikDropdownAcildi = false;
                                      bossDropdownAcildi = false;
                                      metinDropdownAcildi = false;
                                      zindanDropdownAcildi = false;
                                      sistemDropdownAcildi = false;
                                      rehberDropdownAcildi = false;
                                    });
                                  },
                                  child: kategoriContainer(context, "Etkinlikler"),
                                ),
                        
                                eventDropdownAcildi == false ? Container() : 
                                Container(
                                  height: 150,
                                  width: MediaQuery.of(context).size.width*0.15,
                                  color: Colors.black,
                                ),
                        
                                SizedBox(height: 10),
                        
                                // Rehber
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      rehberDropdownAcildi == true ? rehberDropdownAcildi = false : rehberDropdownAcildi = true;
                                      ekipmanDropdownAcildi = false;
                                      sandikDropdownAcildi = false;
                                      bossDropdownAcildi = false;
                                      metinDropdownAcildi = false;
                                      zindanDropdownAcildi = false;
                                      sistemDropdownAcildi = false;
                                      eventDropdownAcildi = false;
                                    });
                                  },
                                  child: kategoriContainer(context, "Rehber"),
                                ),
                        
                                rehberDropdownAcildi == false ? Container() : 
                                Container(
                                  height: 150,
                                  width: MediaQuery.of(context).size.width*0.15,
                                  color: Colors.black,
                                ),
                        
                        
                        
                        
                              ],
                        
                        
                            ),
                          ),
                        ),
                      ),
                      
                      // Sağ Taraf
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color:Colors.black),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: sayfaGorunumu(),
                        ),
                      ),
                    ],
                  
                  ),

                ),


    
              ],
            ),
          ),
        ),
      ),
    );
  }







}



