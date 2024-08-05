import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';
import '../../../app/utils.dart';

class LoginViewModel extends BaseViewModel {
  TextEditingController uname=TextEditingController();
  TextEditingController psw=TextEditingController();
  void login(){
    print("uname:::::::::::${uname.text}");
    navigationService.navigateTo(Routes.homeView,arguments: HomeViewArguments(uname: uname.text));
  }
}
