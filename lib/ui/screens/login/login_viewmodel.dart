import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';
import '../../../app/utils.dart';

class LoginViewModel extends BaseViewModel {
  TextEditingController uname=TextEditingController();
  TextEditingController psw=TextEditingController();
  var formkey=GlobalKey<FormState>();
  void login() {
    if(formkey.currentState!.validate()){
      navigationService.navigateTo(Routes.homeView,arguments: HomeViewArguments(username: uname.text));

    }
  }
}
