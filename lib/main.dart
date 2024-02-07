
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:music/screens/home_screen.dart';
import 'package:music/screens/playlist_screen.dart';
import 'package:music/screens/root_App.dart';
import 'package:music/screens/settings_page.dart';
import 'package:music/screens/song_screen.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:simple_annimated_staggered/simple_annimated_staggered.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
      ),
      initialRoute: '/splash',

      getPages: [
        GetPage(name: '/splash', page: () => SplashScreen()),
        GetPage(name: '/root', page: () => RootApp()), // Define RootApp route
        GetPage(name: '/home', page: () => const HomeScreen()),
        GetPage(name: '/song', page: () => const SongScreen()),
        GetPage(name: '/playlist', page: () => const PlaylistScreen()),
        GetPage(name: '/setting', page: () => SettingScreen()),
      ],
    );


  }
}


class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: []);

    Future.delayed(Duration(seconds: 6), () {

      Get.offNamed('/root');
    });

    return Scaffold(
      body: Container(
        color: Colors.blue.shade300.withAlpha(19),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/music_6.png',

                height: 100,
              ),
            ],
          ),
        ),
      ),
    );

  }
}



