import 'package:flutter/material.dart';
import 'package:radar/utils/theme/theme.dart';
import 'package:radar/views/auth/loginPage.dart';
import 'dart:async';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeScreen.lightScrenn,
      darkTheme: ThemeScreen.darkScrenn,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // Utiliser le SplashScreen comme page d'accueil
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  // Méthode pour naviguer vers la page d'accueil après un délai
  void _navigateToHome() {
    Timer(const Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Couleur de fond de l'écran de préchargement
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center, // Centrer l'image verticalement
        children: <Widget>[
          // Image au milieu
           Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0), // Ajustez le padding selon vos besoins
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage('assets/logo/1.png'),
                      fit: BoxFit.cover, // Ajustez la façon dont l'image s'adapte à son conteneur
                    ),
                  ),
                 
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: CircularProgressIndicator(
              color: Colors.black,
            ), // Indicateur de chargement
          ),
        ],
      ),
    );
  }
}

