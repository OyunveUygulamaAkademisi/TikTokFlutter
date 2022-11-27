import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:tiktok_flutter/app/app_base_view_model.dart';
import 'package:tiktok_flutter/di/locator.dart';
import 'package:tiktok_flutter/ui/home/home_view_model.dart';
import 'package:tiktok_flutter/widgets/my_action_item.dart';
import 'package:tiktok_flutter/widgets/video_widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: Text(
                  "TikTok Flutter",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                actions: [
                  MyActionWidget(onPressed: () {
                    locator<AppBaseViewMode>().changeTheme();
                  })
                ],
              ),
              body: SingleChildScrollView(
                child: model.videos == null
                    ? SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: const Center(child: CircularProgressIndicator()))
                    : ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: model.videos!.length,
                        itemBuilder: (context, index) {
                          return VideoWidget(video: model.videos![index]);
                        },
                      ),
              ),
            ));
  }
}
