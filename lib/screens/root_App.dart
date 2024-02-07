import 'package:flutter/material.dart';
import 'package:music/screens/screens.dart';
import 'package:music/screens/settings_page.dart';
import 'package:music/theme/colors.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:simple_annimated_staggered/simple_annimated_staggered.dart';


class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [

        HomeScreen(),
        PlaylistScreen(),
        SettingScreen(),
        Center(
          child: Text(
            "Library",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Search",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Setting",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget getFooter() {
    List<IconData> items = [
      Icons.home,
      Icons.playlist_play_sharp,
      //Icons.search,
      Icons.manage_accounts,
    ];
    List<String> labels = ["Home", "Playlist",  "Settings"];
    return Container(
      height: 65,
      decoration: BoxDecoration(
        color: Colors.green.shade200,
        ),
      

      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 20,),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(items.length, (index) {
            return Column(
              children: [
                IconButton(
                  icon: Icon(
                    items[index],
                    color: activeTab == index ? primary : Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      activeTab = index;
                    });
                  },
                ),

                Text(
                  labels[index],
                  style: TextStyle(
                    fontSize: 12,
                    color: activeTab == index ? primary : Colors.black,
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
