import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:munich4182_s_application3/core/app_export.dart';
import 'package:munich4182_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:munich4182_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:munich4182_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:munich4182_s_application3/widgets/custom_checkbox_button.dart';
import 'package:munich4182_s_application3/widgets/custom_elevated_button.dart';
import 'package:munich4182_s_application3/widgets/custom_floating_text_field.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController registrationFormUserNameController =
      TextEditingController();

  TextEditingController registrationFormPasswordController =
      TextEditingController();

  TextEditingController registrationFormConfirmPasswordController =
      TextEditingController();

  TextEditingController registrationFormEmailController =
      TextEditingController();

  bool registrationFormTermAndCondition = false;

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
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 61.h,
                  vertical: 42.v,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgGroup11,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "Register",
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(height: 41.v),
                    _buildRegistrationFormUserName(context),
                    SizedBox(height: 22.v),
                    _buildRegistrationFormPassword(context),
                    SizedBox(height: 22.v),
                    _buildRegistrationFormConfirmPassword(context),
                    SizedBox(height: 22.v),
                    _buildRegistrationFormEmail(context),
                    SizedBox(height: 13.v),
                    _buildRegistrationFormTermAndCondition(context),
                    SizedBox(height: 7.v),
                    _buildRegistrationFormRegisterButton(context),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "UwU",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgLock,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 20.v,
          ),
        ),
      ],
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildRegistrationFormUserName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: CustomFloatingTextField(
        controller: registrationFormUserNameController,
        labelText: "Username",
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "Username",
        suffix: Container(
          margin: EdgeInsets.symmetric(horizontal: 12.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgIcon,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 57.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRegistrationFormPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: CustomFloatingTextField(
        controller: registrationFormPasswordController,
        labelText: "Password",
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "Password",
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        suffix: Container(
          margin: EdgeInsets.symmetric(horizontal: 12.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgIcon,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 57.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRegistrationFormConfirmPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: CustomFloatingTextField(
        controller: registrationFormConfirmPasswordController,
        labelText: "Confirm Password",
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "Confirm Password",
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        suffix: Container(
          margin: EdgeInsets.symmetric(horizontal: 12.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgIcon,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 57.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRegistrationFormEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: CustomFloatingTextField(
        controller: registrationFormEmailController,
        labelText: "Email",
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "Email",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.emailAddress,
        suffix: Container(
          margin: EdgeInsets.symmetric(horizontal: 12.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgIcon,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 57.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRegistrationFormTermAndCondition(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 19.h),
        child: CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "**term and conddition",
          value: registrationFormTermAndCondition,
          onChange: (value) {
            registrationFormTermAndCondition = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRegistrationFormRegisterButton(BuildContext context) {
    return CustomElevatedButton(
      text: "register",
      margin: EdgeInsets.only(
        left: 5.h,
        right: 3.h,
      ),
    );
  }
}
