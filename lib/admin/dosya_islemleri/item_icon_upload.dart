import 'package:flutter/material.dart';

class ItemIconUpload extends StatelessWidget {
  const ItemIconUpload({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('Item Icon Yükle', style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
        Text('icon.zip', style:TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }
}
