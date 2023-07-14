import 'package:flutter/material.dart';
import 'package:gma_academy_program/widgets/home_section_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
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
