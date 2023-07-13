import 'package:flutter/material.dart';
import 'package:gma_academy_program/widgets/home_section_widget.dart';
// import 'package:gma_academy_program/pages/footer.dart';
// import 'package:gma_academy_program/pages/header.dart';
// import 'package:gma_academy_program/pages/favorite.dart';
// import 'package:gma_academy_program/pages/menu.dart';
// import 'package:gma_academy_program/pages/search.dart';
// import 'package:gma_academy_program/pages/profile.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    // int _currentIndex = 0;

    // final List<Widget> _screens = [
    //   DashboardScreen(),
    //   FavoriteScreen(),
    //   MenuScreen(),
    //   SearchScreen(),
    //   ProfileScreen(),
    // ];
    // return const SingleChildScrollView(
    //     child: Scaffold(
    //   backgroundColor: Colors.blueAccent,
    //   body: SizedBox(
    //     // child: const HomeSectionWidget(),
    //     child: Column(
    //       children: [
    //         // HomeSectionWidget(
    //         //     heading: "Introducing:Courses",
    //         //     desc:
    //         //         "Listen through expertly curated playlists for right where you are at in your journey.",
    //         //     btnName: "CHECK IT OUT",
    //         //     bgImage:
    //         //         'https://images.pexels.com/photos/894156/pexels-photo-894156.jpeg?auto=compress&cs=tinysrgb&w=600'),
    //         // HomeSectionWidget(
    //         //     heading: "Introducing: SongStories",
    //         //     desc:
    //         //         "A brand new Docuseries behind songs like 'How Great Is Our God' & more.",
    //         //     btnName: "WATCH NOW",
    //         //     bgImage:
    //         //         'https://images.pexels.com/photos/894156/pexels-photo-894156.jpeg?auto=compress&cs=tinysrgb&w=600'),
    //         Text(
    //           'dashboard is working! ',
    //           style: TextStyle(color: Colors.black),
    //         ),
    //       ],
    //     ),
    //   ),
    // ));

    return const SingleChildScrollView(
      child: Column(
        children: [
          HomeSectionWidget(
              heading: "Introducing:Courses",
              desc:
                  "Listen through expertly curated playlists for right where you are at in your journey.",
              btnName: "CHECK IT OUT",
              bgImage:
                  'https://images.pexels.com/photos/7173192/pexels-photo-7173192.jpeg?auto=compress&cs=tinysrgb&w=600'),
          SizedBox(
            height: 1,
          ),
          HomeSectionWidget(
              heading: "Introducing: SongStories",
              desc:
                  "A brand new Docuseries behind songs like 'How Great Is Our God' & more.",
              btnName: "WATCH NOW",
              bgImage:
                  'https://images.pexels.com/photos/894156/pexels-photo-894156.jpeg?auto=compress&cs=tinysrgb&w=600'),
        ],
      ),
    );
  }
}
