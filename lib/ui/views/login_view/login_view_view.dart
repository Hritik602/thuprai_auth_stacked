import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:thuprai_stacked_architecture/ui/common/app_strings.dart';
import 'package:thuprai_stacked_architecture/ui/common/ui_helpers.dart';
import 'package:thuprai_stacked_architecture/ui/views/login_view/login_view_view.form.dart';
import 'package:thuprai_stacked_architecture/utils/validators.dart';
import 'package:thuprai_stacked_architecture/widget/input_text_field.dart';
import 'package:thuprai_stacked_architecture/widget/primary_button.dart';

import 'login_view_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'login_view_controller', validator: Validators.email),
  FormTextField(name: 'password', validator: Validators.validatePassword),
])
class LoginViewView extends StackedView<LoginViewViewModel>
    with $LoginViewView {
  const LoginViewView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(),
        body: SafeArea(
            minimum: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InputTextFieldWidget(
                  controller: loginViewControllerController,
                  hintText: emailHintText,
                ),
                Text(viewModel.loginViewControllerValidationMessage ?? ""),
                Text(viewModel.loginViewControllerValue ?? ""),
                verticalSpaceSmall,
                InputTextFieldWidget(
                  controller: passwordController,
                  hintText: passwordText,
                ),
                verticalSpaceSmall,
                Text(viewModel.passwordValidationMessage ?? ""),
                verticalSpaceSmall,
                PrimaryButtonWidget(
                  buttonTitle: loginButtonName,
                  onTap: () {
                    if (viewModel.isFormValid) {
                      debugPrint("Yes form is valid ");
                    }
                  },
                )
              ],
            )));
  }

  @override
  LoginViewViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewViewModel();

  @override
  void onViewModelReady(LoginViewViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }

  @override
  void onDispose(LoginViewViewModel viewModel) {
    super.onDispose(viewModel);
    disposeForm();
  }
}
