import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:munich4182_s_application3/core/app_export.dart';
import 'package:munich4182_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:munich4182_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:munich4182_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:munich4182_s_application3/widgets/custom_elevated_button.dart';
import 'package:munich4182_s_application3/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 65.h, vertical: 42.v),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: fs.Svg(ImageConstant.imgGroup11),
                                    fit: BoxFit.cover)),
                            child: Column(children: [
                              SizedBox(
                                  height: 359.v,
                                  width: 300.h,
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text("Login",
                                                style:
                                                    theme.textTheme.titleLarge),
                                            SizedBox(height: 41.v),
                                            _buildUserName(context),
                                            SizedBox(height: 40.v),
                                            _buildPassword(context),
                                            SizedBox(height: 40.v),
                                            _buildLoginButton(context),
                                            SizedBox(height: 18.v),
                                            _buildRegisterButton(context)
                                          ]))),
                              SizedBox(height: 15.v),
                              Opacity(
                                  opacity: 0.75,
                                  child: Text("**term and conddition",
                                      style:
                                          CustomTextStyles.bodyLargeGray600)),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarTitle(text: "UwU"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgLock,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v))
        ],
        styleType: Style.bgOutline);
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return CustomFloatingTextField(
        controller: userNameController,
        labelText: "Username",
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "Username",
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgIcon,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 57.v));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomFloatingTextField(
        controller: passwordController,
        labelText: "Password",
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgIcon,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 57.v));
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Login", buttonStyle: CustomButtonStyles.fillGray);
  }

  /// Section Widget
  Widget _buildRegisterButton(BuildContext context) {
    return CustomElevatedButton(
        text: "register",
        onPressed: () {
          Regis(context);
        });
  }

  /// Navigates to the registrationScreen when the action is triggered.
  Regis(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.registrationScreen);
  }
}
