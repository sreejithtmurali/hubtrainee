import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/assets.gen.dart';
import '../../tools/screen_size.dart';
import 'login_viewmodel.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(

      builder: (context, model, child) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: model.uname,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "username"
                ),
              ),
              TextFormField(
                controller: model.psw,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "password"
                ),
              ),
              Container(
                  width:MediaQuery.of(context).size.width,
                  child: ElevatedButton(onPressed: (){
                    model.login();
                  }, child: Text("login")))
            ],
          ),
        );
      },
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
