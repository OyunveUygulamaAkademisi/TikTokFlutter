import 'dart:convert';

class FirebaseVideos {
  String title;
  String desc;
  String videoUrl;
  int order;
  FirebaseVideos({
    required this.title,
    required this.desc,
    required this.videoUrl,
    required this.order,
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'dec': desc,
      'videoUrl': videoUrl,
      'order': order,
    };
  }

  factory FirebaseVideos.fromJson(Map<String, dynamic> map) {
    return FirebaseVideos(
      title: map['title'] ?? '',
      desc: map['desc'] ?? '',
      videoUrl: map['videoUrl'] ?? '',
      order: map['order']?.toInt() ?? 0,
    );
  }
}
