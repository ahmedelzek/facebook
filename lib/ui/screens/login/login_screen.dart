import 'package:facebook/ui/utils/app_assets.dart';
import 'package:facebook/ui/widgets/app_widgets.dart';
import 'package:flutter/material.dart';

import '../../../model/login_model.dart';
import '../../utils/app_colors.dart';
import '../home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "login";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  User user = User(userName: "Ahmed", password: "password");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(child: login(context)),
    );
  }

  Widget login(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 75,
        ),
        facebookImage(),
        const SizedBox(
          height: 62,
        ),
        textField(userNameController, "User Name"),
        const SizedBox(
          height: 20,
        ),
        textField(passwordController, "Password"),
        const SizedBox(
          height: 40,
        ),
        loginButton(context),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: const Text(
            'Forgotten Password?',
            style: TextStyle(color: AppColors.gray),
          ),
        ),
        const SizedBox(
          height: 170,
        ),
        createAccount(),
        Container(
          height: 80,
          width: 100,
          alignment: Alignment.center,
          child: Image.asset(AppAssets.brandLogo),
        )
      ],
    );
  }

  Widget loginButton(BuildContext context) {
    return InkWell(
      onTap: () {
        checkUser(userNameController, passwordController, context, user);
      },
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: AppColors.blue, borderRadius: BorderRadius.circular(20)),
        child: const Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  Widget createAccount() {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.blue, width: 1)),
      child: const Text(
        'Create Account',
        style: TextStyle(color: AppColors.blue, fontSize: 16),
      ),
    );
  }
}

void checkUser(TextEditingController userName, TextEditingController password,
    BuildContext context, User user) {
  if (userName.text == user.userName && password.text == user.password) {
    Navigator.pushNamed(context, HomeScreen.routeName);
  } else {
    showSnackBar(context);
  }
}
