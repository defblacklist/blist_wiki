import 'package:flutter/material.dart';

class ItemProtoUpload extends StatelessWidget {
  const ItemProtoUpload({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('Item Proto Yükle', style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
        Text('item_proto.txt', style:TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }
}
