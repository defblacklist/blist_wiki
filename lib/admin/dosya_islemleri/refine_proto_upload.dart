import 'package:flutter/material.dart';

class RefineProtoUpload extends StatelessWidget {
  const RefineProtoUpload({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('Refine Proto Yükle', style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
        Text('refine_proto.txt', style:TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }
}
