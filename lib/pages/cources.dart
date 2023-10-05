import 'package:flutter/material.dart';
import 'package:gma_academy_program/pages/header.dart';
import 'package:gma_academy_program/widgets/course_list_widget.dart';

class CourcesScreen extends StatelessWidget {
  const CourcesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const HeaderWidget(),
        body: Container(
          child: Column(
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    // Navigate back to the previous page
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_new_rounded),
                  label: const Text("back")),
              // for (int i = 0; i < 4; i++)
              //   const CourseListWidget(
              //       imagePath:
              //           'https://images.pexels.com/photos/36717/amazing-animal-beautiful-beautifull.jpg?auto=compress&cs=tinysrgb&w=600',
              //       title: "Nature",
              //       desc: "Description for nature!"),
              const CourseListWidget(
                imagePath:
                    "https://images.pexels.com/photos/36717/amazing-animal-beautiful-beautifull.jpg?auto=compress&cs=tinysrgb&w=600",
                title: "Big Buck Bunny",
                desc:
                    "Big Buck Bunny tells the story of a giant rabbit with a heart bigger than himself.",
                video_url:
                    'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              ),
              const CourseListWidget(
                imagePath:
                    "https://images.pexels.com/photos/1166209/pexels-photo-1166209.jpeg?auto=compress&cs=tinysrgb&w=600",
                title: "Elephant Dream",
                desc: "The first Blender Open Movie from 2006",
                video_url:
                    'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
              ),
              const CourseListWidget(
                imagePath:
                    "https://images.pexels.com/photos/462162/pexels-photo-462162.jpeg?auto=compress&cs=tinysrgb&w=600",
                title: "For Bigger Blazes",
                desc:
                    "HBO GO now works with Chromecast -- the easiest way to enjoy online video on your TV.",
                video_url:
                    'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
              ),
              const CourseListWidget(
                imagePath:
                    "https://images.pexels.com/photos/1166209/pexels-photo-1166209.jpeg?auto=compress&cs=tinysrgb&w=600",
                title: "For Bigger Escape",
                desc:
                    "Introducing Chromecast. The easiest way to enjoy online video and music on your TV—for when Batman's",
                video_url:
                    'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4',
              ),
            ],
          ),
        ));
  }
}
