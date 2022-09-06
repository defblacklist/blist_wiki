import 'package:flutter/material.dart';

class SilahlarSayfa extends StatefulWidget {
  const SilahlarSayfa({ Key? key }) : super(key: key);

  @override
  State<SilahlarSayfa> createState() => _SilahlarSayfaState();
}

class _SilahlarSayfaState extends State<SilahlarSayfa> {

  bool savasciSecildi = true;
  bool ninjaSecildi = false;
  bool suraSecildi = false;
  bool samanSecildi = false;
  bool lycanSecildi = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // ignore: sized_box_for_whitespace
        Container(
          width: MediaQuery.of(context).size.width,
          child: Image.asset('assets/resimler/banner.png', fit: BoxFit.fill,)
        ),

        const Divider(
          color: Colors.black,
        ),

        // Karakter Iconları
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [

              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      savasciSecildi = true;
                      ninjaSecildi = false;
                      suraSecildi = false;
                      samanSecildi = false;
                      lycanSecildi = false;
                    });
                  },
                  child: savasciSecildi == false ? Image.asset('assets/resimler/karakter/savasci_1.png') : Image.asset('assets/resimler/karakter/savasci_2.png'),
                ),
              ),

              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      savasciSecildi = false;
                      ninjaSecildi = true;
                      suraSecildi = false;
                      samanSecildi = false;
                      lycanSecildi = false;
                    });
                  },
                  child: ninjaSecildi == false ? Image.asset('assets/resimler/karakter/ninja_1.png') : Image.asset('assets/resimler/karakter/ninja_2.png'),
                ),
              ),

              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      savasciSecildi = false;
                      ninjaSecildi = false;
                      suraSecildi = true;
                      samanSecildi = false;
                      lycanSecildi = false;
                    });
                  },
                  child: suraSecildi == false ? Image.asset('assets/resimler/karakter/sura_1.png') : Image.asset('assets/resimler/karakter/sura_2.png'),
                ),
              ),

              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      savasciSecildi = false;
                      ninjaSecildi = false;
                      suraSecildi = false;
                      samanSecildi = true;
                      lycanSecildi = false;
                    });
                  },
                  child: samanSecildi == false ? Image.asset('assets/resimler/karakter/saman_1.png') : Image.asset('assets/resimler/karakter/saman_2.png'),
                ),
              ),

              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      savasciSecildi = false;
                      ninjaSecildi = false;
                      suraSecildi = false;
                      samanSecildi = false;
                      lycanSecildi = true;
                    });
                  },
                  child: lycanSecildi == false ? Image.asset('assets/resimler/karakter/lycan_1.png') : Image.asset('assets/resimler/karakter/lycan_2.png'),
                ),
              ),

            ],
          ),
        ),

        const Divider(
          color: Colors.black,
        ),

        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            //color: Colors.red,
            border: Border.all(color: Colors.white),
          ),
          child: Column(
            children: [
              // Item Isim - Lv
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  children: const[
                    Text('Zehir Kılıcı', style: TextStyle(color: Colors.white)),
                    Spacer(),
                    Text('Lv. 75', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),

              const Divider(color: Colors.white),
              // Item Detay
              Row(
                children: const[
                  
                ],
              ),
            ],
          ),



          
        ),


      ],
    );
  }
}

