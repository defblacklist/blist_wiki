import 'package:blist_wiki/admin/dosya_islemleri/item_icon_upload.dart';
import 'package:blist_wiki/admin/dosya_islemleri/item_list_upload.dart';
import 'package:blist_wiki/admin/dosya_islemleri/item_names_upload.dart';
import 'package:blist_wiki/admin/dosya_islemleri/item_proto_upload.dart';
import 'package:blist_wiki/admin/dosya_islemleri/mob_drop_upload.dart';
import 'package:blist_wiki/admin/dosya_islemleri/mob_names_upload.dart';
import 'package:blist_wiki/admin/dosya_islemleri/mob_proto_upload.dart';
import 'package:blist_wiki/admin/dosya_islemleri/refine_proto_upload.dart';
import 'package:blist_wiki/admin/dosya_islemleri/special_item_upload.dart';
import 'package:blist_wiki/components/listeler.dart';
import 'package:blist_wiki/components/widget.dart';
import 'package:blist_wiki/sabitler/renkler.dart';
import 'package:flutter/material.dart';

class AdminPanelDosyaIslem extends StatefulWidget {
  const AdminPanelDosyaIslem({ Key? key }) : super(key: key);

  @override
  State<AdminPanelDosyaIslem> createState() => _AdminPanelDosyaIslemState();
}

class _AdminPanelDosyaIslemState extends State<AdminPanelDosyaIslem> {

  DosyaListeleri _dosyaListeleri = DosyaListeleri();
  String kategoriSecim = 'item_proto.txt';

  menuGorevi(){
    if(kategoriSecim == 'item_proto.txt'){
      return const ItemProtoUpload();
    }else if(kategoriSecim == 'item_names.txt'){
      return const ItemNamesUpload();
    }else if(kategoriSecim == 'item_list.txt'){
      return const ItemListUpload();
    }else if(kategoriSecim == 'item icon'){
      return const ItemIconUpload();
    }else if(kategoriSecim == 'mob_proto.txt'){
      return const MobProtoUpload();
    }else if(kategoriSecim == 'mob_names.txt'){
      return const MobNamesUpload();
    }else if(kategoriSecim == 'mob_drop_item.txt'){
      return const MobDropItemUpload();
    }else if(kategoriSecim == 'special_item_group.txt'){
      return const SpecialItemGroupUpload();
    }else if(kategoriSecim == 'refine_proto.txt'){
      return const RefineProtoUpload();
    }

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Dosya İşlemleri', style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
          const SizedBox(height: 16),

          Container(
            width: MediaQuery.of(context).size.width,
            //height: 750,
            decoration: BoxDecoration(
              color: adminColorLight,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [

                //Kategori Alan
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _dosyaListeleri.dosyaList.map((dosyalar) {
                      return GestureDetector(
                        onTap: (){
                          setState(() {
                            kategoriSecim = dosyalar;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                          child: kategoriButon(dosyalar, yaziColor)
                        ),
                      );
                    }).toList(),                  
                  ),
                ),

                const Divider(),
                const SizedBox(height: 20),

                menuGorevi(),

                const SizedBox(height: 20),

              ],
            ),
            
          ),


          
        ],
      ),
    );
  }


}


