import 'package:blist_wiki/sabitler/renkler.dart';
import 'package:flutter/material.dart';

class AdminPanelAnasayfa extends StatefulWidget {
  const AdminPanelAnasayfa({ Key? key }) : super(key: key);

  @override
  State<AdminPanelAnasayfa> createState() => _AdminPanelAnasayfaState();
}

class _AdminPanelAnasayfaState extends State<AdminPanelAnasayfa> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        
        children: const[
          Text('Anasayfa', style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),





        ],
      ),
    );
  }
}