import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tiktok_flutter/app/app_base_view_model.dart';
import 'package:tiktok_flutter/di/locator.dart';
import 'package:tiktok_flutter/ui/detail/detail_view_model.dart';
import 'package:tiktok_flutter/ui/home/home_view_model.dart';

class DetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DetailViewModel>.reactive(
        viewModelBuilder: () => DetailViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                actions: [
                  IconButton(
                      onPressed: () {
                        locator<AppBaseViewMode>().changeTheme();
                      },
                      icon: locator<AppBaseViewMode>().theme == ThemeMode.light
                          ? Icon(Icons.dark_mode)
                          : Icon(Icons.light_mode))
                ],
              ),
              body: Container(
                child: Center(
                    child: Text(
                  "Detail Page",
                  style: Theme.of(context).textTheme.headline6,
                )),
              ),
            ));
  }
}
