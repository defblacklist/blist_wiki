import 'dart:typed_data';
import 'package:blist_wiki/components/widget.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';


class ItemNamesUpload extends StatelessWidget {
  const ItemNamesUpload({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    dosyaYukle() async{
      
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['txt'],
      );
    
      if(result != null){
        Uint8List? file = result.files.first.bytes;
        String fileName = result.files.first.name;
        await FirebaseStorage.instance.ref().child('txt_dosyalar/$fileName').putData(file!);
        return showDialogBasarili(context);
      }

    }

    okuBakalim(){

      var ref = FirebaseStorage.instance.ref().child('txt_dosyalar').child('item_names.txt').getData();

      
    }

    return Column(
      children: [
        const Text('Item İsim Yükle', style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
        const Text('item_names.txt', style:TextStyle(color: Colors.white, fontSize: 14)),
        const SizedBox(height: 20),

        GestureDetector(
          onTap: (){
            dosyaYukle();
          },
          child: Container(
            width: 250,
            child: butonContainer('Yükle')
          ),
        ),

        SizedBox(height: 25),

        GestureDetector(
          onTap: (){
            okuBakalim();
          },
          child: Container(
            width: 250,
            child: butonContainer('Oku')
          ),
        ),



      ],
    );


  }
  
}
