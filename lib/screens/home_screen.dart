import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/playlist_model.dart';
import '../models/song_model.dart';
import '../theme/colors.dart';
import '../theme/colors.dart';
import '../theme/colors.dart';
import '../widgets/widgets.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:simple_annimated_staggered/simple_annimated_staggered.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Song> songs = Song.songs;
    List<Playlist> playlists = Playlist.playlists;

    return WillPopScope(
      onWillPop: () async {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Theme(
                data: ThemeData(
                  // Customize dialog background color
                  dialogBackgroundColor: Colors.blueGrey.shade900,
                  // Customize dialog content text color
                  textTheme: Theme.of(context).textTheme.copyWith(
                        headline5: TextStyle(color: Colors.white),
                        bodyText2: TextStyle(color: Colors.white),
                      ),
                ),
                child: AlertDialog(
                  title: Text(
                    'Exit App',
                  ),
                  content: Text(
                    'Are you sure you want to exit?',
                    style: TextStyle(color: Colors.white),
                  ),
                  surfaceTintColor: Colors.black,
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => SystemNavigator.pop(),
                      child: Text(
                        'Yes',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: Text(
                        'No',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ));
          },
        );
        return false;
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade400.withOpacity(0.8),
              Colors.blue.shade700.withOpacity(0.8),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: const _CustomAppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const _DiscoverMusic(),
                _TrendingMusic(songs: songs),
                _LatestMusic(songs: songs),
                _Artist(songs: songs),
                _NewReleases(
                  songs: songs,
                ),
                _PlaylistMusic(playlists: playlists),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class _Artist extends StatelessWidget {
  const _Artist({
    Key? key,
    required this.songs,
  }) : super(key: key);

  final List<Song> songs;

  @override
  Widget build(BuildContext context) {
    List<Song> shuffledSongs = List.from(songs)..shuffle();

    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        top: 10.0,
        bottom: 20.0,
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: SectionHeader(title: 'Artist Mixes'),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.20,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: songs.length - 10,
              itemBuilder: (context, index) {
                return ArtistCard(song: songs[index + 10]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _NewReleases extends StatelessWidget {
  const _NewReleases({
    Key? key,
    required this.songs,
  }) : super(key: key);

  final List<Song> songs;

  @override
  Widget build(BuildContext context) {
    List<Song> shuffledSongs = List.from(songs)..shuffle();

    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        top: 10.0,
        bottom: 20.0,
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: SectionHeader(title: 'New Releases'),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.20,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: songs.length - 16,
              itemBuilder: (context, index) {
                return PlayerButton(song: songs[index + 16]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _LatestMusic extends StatelessWidget {
  const _LatestMusic({
    Key? key,
    required this.songs,
  }) : super(key: key);

  final List<Song> songs;

  @override
  Widget build(BuildContext context) {
    List<Song> shuffledSongs = List.from(songs)..shuffle();

    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        top: 10.0,
        bottom: 20.0,
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: SectionHeader(title: 'Latest Music'),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return SongCard(song: songs[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _PlaylistMusic extends StatelessWidget {
  const _PlaylistMusic({
    Key? key,
    required this.playlists,
  }) : super(key: key);

  final List<Playlist> playlists;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SectionHeader(title: 'Playlists'),
          ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 20),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: playlists.length,
            itemBuilder: ((context, index) {
              return PlaylistCard(
                playList: playlists[index],
                playlist: playlists[index],
              );
            }),
          ),
        ],
      ),
    );
  }
}

class _TrendingMusic extends StatelessWidget {
  const _TrendingMusic({
    Key? key,
    required this.songs,
  }) : super(key: key);

  final List<Song> songs;

  @override
  Widget build(BuildContext context) {
    List<Song> shuffledSongs = List.from(songs)..shuffle();

    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        top: 10.0,
        bottom: 20.0,
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: SectionHeader(title: 'Trending Music'),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: songs.length - 15,
              itemBuilder: (context, index) {
                return SongCard(song: songs[index + 5]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _DiscoverMusic extends StatelessWidget {
  const _DiscoverMusic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Explore',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 5),
          Text(
            'Enjoy your favorite music',
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              hintText: 'Search',
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.grey.shade400),
              prefixIcon: Icon(Icons.search, color: Colors.grey.shade400),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,

      leading: Container(
        padding: const EdgeInsets.only(left: 20),
        child: const Icon(
          Icons.account_circle_sharp,
          size: 35,
        ),
      ),

      // leading : Container(
      //  padding: const EdgeInsets.only(right: 20),
      //   child: const CircleAvatar(
      //    backgroundImage: NetworkImage(
      //      'https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fmusic-logo&psig=AOvVaw172VUMiWTSsTMex7gdqOwI&ust=1707131645257000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCODW7ovHkYQDFQAAAAAdAAAAABAE',
      //     // 'https://images.unsplash.com/photo-1659025435463-a039676b45a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      //    ),
      //  ),
      // ),

      actions: [
        Container(
          padding: const EdgeInsets.only(right: 20),
          child: const Icon(
            Icons.notifications_active_outlined,
            size: 27,
            color: Colors.black87,
          ),
        )

        // Container(
        //   padding: const EdgeInsets.only(right: 20),
        //   child: const CircleAvatar(
        //     backgroundImage: NetworkImage(
        //       //'https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fmusic-logo&psig=AOvVaw172VUMiWTSsTMex7gdqOwI&ust=1707131645257000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCODW7ovHkYQDFQAAAAAdAAAAABAE',
        //       'https://images.unsplash.com/photo-1659025435463-a039676b45a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
        //     ),
        //   ),
        // ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
