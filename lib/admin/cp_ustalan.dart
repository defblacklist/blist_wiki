import 'package:blist_wiki/admin/cp_giris.dart';
import 'package:blist_wiki/components/widget.dart';
import 'package:blist_wiki/sabitler/renkler.dart';
import 'package:blist_wiki/servis/auth.dart';
import 'package:blist_wiki/shared_pref.dart';
import 'package:flutter/material.dart';

class AdminPanelUstAlan extends StatefulWidget {
  const AdminPanelUstAlan({ Key? key }) : super(key: key);

  @override
  State<AdminPanelUstAlan> createState() => _AdminPanelUstAlanState();
}

class _AdminPanelUstAlanState extends State<AdminPanelUstAlan> {

  final AuthMethods _authMethods = AuthMethods();

  cikisYap(){
    _authMethods.cikisYap();
    SharedPreference.saveUserLoggedInSharedPreference(false);
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const AdminPanelGiris()
    ));
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top:16, bottom:16),
      color: adminColorLight,
      child: Container(
        margin: const EdgeInsets.only(left: 18, right: 18),
        child: Row(children: [
          const Spacer(),
          GestureDetector(
            onTap: (){
              showDialog(context: context,
                builder: (context) => AlertDialog(
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                          cikisYap();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: butonContainer('Çıkış Yap'),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/resimler/avatar.png'),
                ),
                const SizedBox(width: 12),
                Text('${_authMethods.cUser!.email}', style: const TextStyle(color: Colors.white54)),
                const Icon(Icons.arrow_drop_down, color: Colors.white54)
              ],
            ),
          ),

        ],),
      ),
    );
  }
}