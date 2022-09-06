import 'package:blist_wiki/admin/cp_anasayfa.dart';
import 'package:blist_wiki/admin/cp_dosyaislem.dart';
import 'package:blist_wiki/admin/cp_ustalan.dart';
import 'package:blist_wiki/sabitler/renkler.dart';
import 'package:flutter/material.dart';

class AdminPanel extends StatefulWidget {
  const AdminPanel({ Key? key}) : super(key: key);

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {

  String menuSecimi = 'anasayfa';

  menuGorevi(){
    if(menuSecimi == 'anasayfa'){
      return const AdminPanelAnasayfa();
    }else if(menuSecimi == 'kullanici_islemleri'){
      return Container();
    }else if(menuSecimi == 'sistem'){
      return Container();
    }else if(menuSecimi == 'dosya_islemleri'){
      return const AdminPanelDosyaIslem();
    }else if(menuSecimi == 'sayfalar'){
      return Container();
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
            decoration: const BoxDecoration(
              color: adminColorDark,
            ),
        
            child: Row(
              children: [
                
                // Sol Taraf
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.topCenter,
                    color: adminColorLight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        DrawerHeader(
                          child: Image.asset('assets/resimler/metin2-logo.png'),
                        ),

                        ListTile(
                          onTap: (){
                            setState(() {
                              menuSecimi = 'anasayfa';
                            });
                          },
                          horizontalTitleGap: 0.0,
                          leading: const Icon(Icons.home, color: Colors.white54, size:18),
                          title: const Text('Anasayfa', style: TextStyle(color: Colors.white54)),
                        ),

                        ListTile(
                          onTap: (){
                            setState(() {
                              menuSecimi = 'kullanici_islemleri';
                            });
                          },
                          horizontalTitleGap: 0.0,
                          leading: const Icon(Icons.person, color: Colors.white54, size:18),
                          title: const Text('Kullanıcı İşlemleri', style: TextStyle(color: Colors.white54)),
                        ),     
                        
                        ListTile(
                          onTap: (){
                            setState(() {
                              menuSecimi = 'sistem';
                            });
                          },
                          horizontalTitleGap: 0.0,
                          leading: const Icon(Icons.settings, color: Colors.white54, size:18),
                          title: const Text('Sistem', style: TextStyle(color: Colors.white54)),
                        ), 
          
                        ListTile(
                          onTap: (){
                            setState(() {
                              menuSecimi = 'dosya_islemleri';
                            });
                          },
                          horizontalTitleGap: 0.0,
                          leading: const Icon(Icons.settings, color: Colors.white54, size:18),
                          title: const Text('Dosya İşlemleri', style: TextStyle(color: Colors.white54)),
                        ),

                        ListTile(
                          onTap: (){
                            setState(() {
                              menuSecimi = 'sayfalar';
                            });
                          },
                          horizontalTitleGap: 0.0,
                          leading: const Icon(Icons.view_array, color: Colors.white54, size:18),
                          title: const Text('Sayfalar', style: TextStyle(color: Colors.white54)),
                        ),


                      ],
                    ),
                  ),
                ),

                // Sag Taraf
                Expanded(
                  flex: 6,
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        // Ust alan
                        const AdminPanelUstAlan(),


                        menuGorevi(),
                      ],
                    ),
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