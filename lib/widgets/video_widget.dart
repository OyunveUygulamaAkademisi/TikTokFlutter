import 'package:flutter/material.dart';
import 'package:tiktok_flutter/models/responses/firebase_videos.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VideoWidget extends StatelessWidget {
  FirebaseVideos video;
  VideoWidget({
    Key? key,
    required this.video,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          video.title,
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          video.desc,
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: 600,
          child: WebView(
            initialUrl: video.videoUrl,
            allowsInlineMediaPlayback: true,
            initialMediaPlaybackPolicy: AutoMediaPlaybackPolicy.always_allow,
          ),
        ),
      ],
    );
  }
}
