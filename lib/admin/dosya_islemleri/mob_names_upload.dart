import 'package:flutter/material.dart';

class MobNamesUpload extends StatelessWidget {
  const MobNamesUpload({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('Mob İsim Yükle', style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
        Text('mob_names.txt', style:TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }
}
