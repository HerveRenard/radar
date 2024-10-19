import 'package:flutter/material.dart';
import 'package:radar/utils/constants/color.dart';
import 'package:radar/views/auth/components/buttom_connect.dart';
import 'package:radar/views/auth/components/logoApp.dart';
import 'package:radar/views/homePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailorloginController = TextEditingController();
  // String? errorMessage;

  // bool isStay = false;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100,),
              const LogoApp(),
              const SizedBox(height: 10,),
              const Text('Connectez-vous', 
                style: TextStyle(
                  fontFamily: 'Montserrat', 
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  ),
                ),
              const SizedBox(height: 40,),
              TextFormConnex(),
              TextFormConnex(),
              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //     elevation: 0,
              //     backgroundColor: RColor.button,
              //     padding: const EdgeInsets.symmetric(
              //       horizontal: 50,
              //       vertical: 10
              //     ),
              //     minimumSize: Size(300, 100)
              //   ),
              //   onPressed: () {}, 
              //   child: Text(
              //     'Se Connecter', 
              //     style: TextStyle(
              //       color: RColor.textbutton
              //     ),
              //   ),
              // ),
              BottomConnect(title: "Se Connecter", press: (){}, ),
              const SizedBox(height: 10,),
              const Text('Mot de passe oublié?',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
              BottomConnect(
                title: "Inscrivez-vous avec Google", 
                press: (){
                  Navigator.pushReplacement(
                    context, MaterialPageRoute(
                      builder: (context) => HomePage()
                    )
                  );
                }, 
                icon: Icons.g_mobiledata_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container TextFormConnex() {
    return Container(
            margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: RColor.textbutton,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  obscureText: _obscureText,
                  textInputAction: TextInputAction.done,
                  controller: passwordController,
                  validator: (value) {
                    RegExp regex = RegExp(r'^.{6,}$');
                    if (value!.isEmpty) {
                      return ("Entrez un mot de passe");
                    }
                    if (!regex.hasMatch(value)) {
                      return ("Entez un mot de passe valide(Min. 6 Character)");
                    }
                    return null;
                  },
                  onSaved: (value) {
                    passwordController.text = value!;
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 15,
                    ),
                    suffixIcon: IconButton(
                      icon: _obscureText
                          ? const Icon(
                              Icons.visibility,
                            )
                          : 
                            const Icon(
                              Icons.visibility_off,
                              color: Colors.black,
                            ),
                      onPressed: () {
                        setState(
                          () {
                            _obscureText = !_obscureText;
                          },
                        );
                      },
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    hintText: 'Mot de passe',
                    labelStyle: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
          );
  }
}
