import 'package:flutter/material.dart';

class SpecialItemGroupUpload extends StatelessWidget {
  const SpecialItemGroupUpload({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('Special Item Group Yükle', style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
        Text('special_item_group.txt', style:TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }
}
