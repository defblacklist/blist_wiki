import 'package:blist_wiki/admin/cp_dash.dart';
import 'package:blist_wiki/components/widget.dart';
import 'package:blist_wiki/sabitler/renkler.dart';
import 'package:blist_wiki/servis/auth.dart';
import 'package:blist_wiki/shared_pref.dart';
import 'package:flutter/material.dart';

class AdminPanelGiris extends StatefulWidget {
  const AdminPanelGiris({ Key? key }) : super(key: key);

  @override
  State<AdminPanelGiris> createState() => _AdminPanelGirisState();
}

class _AdminPanelGirisState extends State<AdminPanelGiris> {

  final formKey = GlobalKey<FormState>();
  final AuthMethods _authMethods = AuthMethods();
  TextEditingController mailTextEditKontrol = TextEditingController();
  TextEditingController sifreTextEditKontrol = TextEditingController();
  bool girisHatali = false;
  bool userGiris = false;

  @override
  void initState() {
    girisKontrol();
    super.initState();
  }

  girisKontrol() async{
    await SharedPreference.getUserLoggedInSharedPreference().then((value){
      setState(() {
        userGiris = value!;
      });
    });
  }

  void girisIslemleri() async{
    if(formKey.currentState!.validate()) {
      girisYap();
    }
  }

  girisYap(){
    _authMethods.emailveSifreGiris(mailTextEditKontrol.text, sifreTextEditKontrol.text).then((val) async{

      if(val == null){
        setState(() {
          girisHatali = true;
        });
      }else{
        SharedPreference.saveUserLoggedInSharedPreference(true);
        Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => const AdminPanel()
        ));
      }

    });
  }

  girisHataliMi(){
    if(girisHatali == false){
      return const SizedBox(height: 10,);
    }
    else{
      return girisHataWidget('Giriş bilgileriniz hatalı.');
    }
  }


  @override
  Widget build(BuildContext context) {

    if(userGiris == true){
      return const AdminPanel();
    }else{
      return Scaffold(
        body: SafeArea(

          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: adminColorDark,
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.25,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const Text('Giriş', style:TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                        
                        const SizedBox(height: 20),

                        Form(
                          key: formKey,
                          child: Column(
                            children: [

                              TextFormField(
                                validator: (val){
                                  return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val!)
                                    ? null : 'Lütfen geçerli bir e-posta giriniz.';
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: mailTextEditKontrol,
                                decoration: inputDecorationWidget('E-Posta'),
                              ),

                              const SizedBox(height: 10),

                              TextFormField(
                                obscureText: true,
                                controller: sifreTextEditKontrol,
                                decoration: inputDecorationWidget('Şifre'),
                              ),

                            ],
                          ),
                        ),

                        const SizedBox(height: 20),

                        girisHataliMi(),

                        GestureDetector(
                          onTap: (){
                            girisIslemleri();
                          },
                          child: butonContainer('Giriş Yap'),
                        ),


                      ],
                    ),
                  ),
                ),
              ],
            ),

          

          ),
        ),
      );
    }
  }

}