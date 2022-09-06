import 'package:flutter/material.dart';

class MobProtoUpload extends StatelessWidget {
  const MobProtoUpload({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('Mob Proto Yükle', style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
        Text('mob_proto.txt', style:TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }
}
