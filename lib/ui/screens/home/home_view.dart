import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/assets.gen.dart';
import '../../tools/screen_size.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  String username;
   HomeView({super.key,required this.username});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(

      builder: (context, model, child) {
        return Scaffold(

          body: Center(child: Text("${model.username}")),

        );
      },
      viewModelBuilder: () => HomeViewModel(username: username),
    );
  }
}
