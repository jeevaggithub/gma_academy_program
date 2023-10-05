import 'package:flutter/material.dart';
import 'package:gma_academy_program/widgets/video_player.dart';

class CourseListWidget extends StatefulWidget {
  final String imagePath;
  final String title;
  final String desc;
  final String video_url;
  const CourseListWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.desc,
    required this.video_url,
  });

  @override
  _CourseListWidgetState createState() => _CourseListWidgetState();
}

class _CourseListWidgetState extends State<CourseListWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Material(
      child: InkWell(
        onTap: () {
          // print("inkwell ontap clicked");
          // Navigator.pushNamed(context, '/video');
          // VideoPlayerView(
          //   url: widget.video_url,
          // );
          // _showMessage(context);

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => VideoPlayerView(
                url: widget.video_url,
              ),
            ),
          );
        },
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      widget.imagePath), // Replace with your network image URL
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Text(
                      widget.desc,
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
    // child: Image.network(
    //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4N1ARt7guwgHfquAuA_UbIyPCD8SyncWJDw&usqp=CAU",
    //   height: 200,
    //   width: 200,
    // ),
  }

  void _showMessage(BuildContext context) {
    const snackdemo = SnackBar(
      content: Text('inkwell ontap clicked'),
      backgroundColor: Colors.redAccent,
      elevation: 10,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(5),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackdemo);
  }
}
