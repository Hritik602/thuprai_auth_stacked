import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'sign_up_view_viewmodel.dart';

class SignUpViewView extends StackedView<SignUpViewViewModel> {
  const SignUpViewView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SignUpViewViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          minimum: EdgeInsets.all(0.02.sw),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const Text("Full Name"),
              // verticalSpaceSmall,
              // const InputTextFieldWidget(),
              // verticalSpaceSmall,
              // const Text("Email "),
              // verticalSpaceSmall,
              // const InputTextFieldWidget(),
              // verticalSpaceSmall,
              // const Text("Password"),
              // verticalSpaceSmall,
              // const InputTextFieldWidget(),
              // verticalSpaceSmall,
              // PrimaryButtonWidget(
              //   buttonTitle: "Sign Up",
              //   onTap: () {},
              // )
            ],
          )),
    );
  }

  @override
  SignUpViewViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignUpViewViewModel();
}
