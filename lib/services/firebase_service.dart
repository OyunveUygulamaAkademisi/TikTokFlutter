import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tiktok_flutter/constants/api_constants.dart';
import 'package:tiktok_flutter/models/responses/firebase_videos.dart';

class FirebaseService {
  final CollectionReference _videosCollectionReference =
      FirebaseFirestore.instance.collection(ApiConstants.FIRESTORE_VIDEOS_PATH);

  init() {
    signInAnonimously();
  }

  signInAnonimously() async {
    await FirebaseAuth.instance.signInAnonymously();
  }

  Future<List<FirebaseVideos>> getVideos() async {
    List<FirebaseVideos> firebaseVideos = [];
    await _videosCollectionReference.orderBy("order").get().then((value) {
      value.docs.forEach((element) {
        var item = FirebaseVideos.fromJson(element.data() as Map<String, dynamic>);
        firebaseVideos.add(item);
      });
    });
    return firebaseVideos;
  }
}
