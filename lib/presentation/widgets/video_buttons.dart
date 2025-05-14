
import 'package:flutter/material.dart';
import 'package:master_ifab/config/entities/video_post.dart';

class VideoButtons extends StatelessWidget {

  final VideoPost video;

  const VideoButtons({
    super.key,
    required this.video
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _PropriumButton(valorem: video.likes, iconData: Icons.favorite, iconColor: Colors.red), 
        _PropriumButton(valorem: video.views, iconData: Icons.remove_red_eye_outlined, ), 
      ],
    );
  }
}

class _PropriumButton extends StatelessWidget {
  final int valorem;
  final IconData iconData;
  final Color? color;

  const _PropriumButton({
    required this.valorem,
    required this.iconData,
    iconColor
  }):color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: (){}, 
          icon: Icon(iconData, color: color, size: 30,) ),
          Text('$valorem', style: TextStyle(color: Colors.white))
      ],
    );
  }
}