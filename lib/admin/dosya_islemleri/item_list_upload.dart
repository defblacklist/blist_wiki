import 'package:flutter/material.dart';

class ItemListUpload extends StatelessWidget {
  const ItemListUpload({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('Item List Yükle', style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
        Text('item_list.txt', style:TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }
}
