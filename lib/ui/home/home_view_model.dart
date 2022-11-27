import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tiktok_flutter/app/app_base_view_model.dart';
import 'package:tiktok_flutter/models/responses/firebase_videos.dart';

class HomeViewModel extends AppBaseViewMode {
  List<FirebaseVideos>? videos;
  init() {
    checkConnectivity();
    firebaseService.getVideos().then((value) {
      videos = value;
      notifyListeners();
    });
  }
}
