import 'package:flutter/material.dart';
import 'package:tcc01/firebase_options.dart';
import 'package:tcc01/pages/main_page.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:tcc01/widgets/cria_grid_avatar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static const tituloApp = 'Facility!';

  @override
  Widget build(BuildContext context) {
    var media = MediaQueryData();
    return MediaQuery(
      data: media,
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Alegreya',
          textTheme: TextTheme(),
          useMaterial3: true,
          appBarTheme: AppBarTheme(
            backgroundColor: Color.fromRGBO(37, 51, 52, 1),
          ),
          primaryColor: Color.fromRGBO(37, 51, 52, 1),
          scaffoldBackgroundColor: Color.fromRGBO(37, 51, 52, 1),
          buttonTheme: ButtonThemeData(buttonColor: Color(0xFF7C9A92)),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        title: tituloApp,
        // home: CriaGridAvatar(),
        home: MainPage(titulo: tituloApp),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
