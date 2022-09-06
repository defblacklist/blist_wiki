import 'package:flutter/material.dart';

class MobDropItemUpload extends StatelessWidget {
  const MobDropItemUpload({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('Mob Drop Item Yükle', style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
        Text('mob_drop_item.txt', style:TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }
}
