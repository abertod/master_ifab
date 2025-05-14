import 'package:flutter/material.dart';
//import 'package:master_ifab/config/entities/video_post.dart';
import 'package:master_ifab/config/config.dart';
import 'package:master_ifab/presentation/widgets/widgets.dart';


class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos;

  const VideoScrollableView({
    super.key,
    required this.videos
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(
          children: [
            //TO DO: video + gradiente
            
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost))
          ],
          );
                
      },
      /*children: [
        Container(color: Colors.red,),
        Container(color: Colors.blue,),
        Container(color: Colors.yellow,),
        Container(color: Colors.teal,),
        Container(color: Colors.pinkAccent,),
        Container(color: Colors.deepPurple,),
        Container(color: Colors.orange,),
      ]*/
    );
  }
}