// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked_architecture/utils/validators.dart';

const bool _autoTextFieldValidation = true;

const String LoginViewControllerValueKey = 'login_view_controller';
const String PasswordValueKey = 'password';

final Map<String, TextEditingController> _LoginViewViewTextEditingControllers =
    {};

final Map<String, FocusNode> _LoginViewViewFocusNodes = {};

final Map<String, String? Function(String?)?> _LoginViewViewTextValidations = {
  LoginViewControllerValueKey: Validators.email,
  PasswordValueKey: Validators.validatePassword,
};

mixin $LoginViewView {
  TextEditingController get loginViewControllerController =>
      _getFormTextEditingController(LoginViewControllerValueKey);
  TextEditingController get passwordController =>
      _getFormTextEditingController(PasswordValueKey);

  FocusNode get loginViewControllerFocusNode =>
      _getFormFocusNode(LoginViewControllerValueKey);
  FocusNode get passwordFocusNode => _getFormFocusNode(PasswordValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_LoginViewViewTextEditingControllers.containsKey(key)) {
      return _LoginViewViewTextEditingControllers[key]!;
    }

    _LoginViewViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _LoginViewViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_LoginViewViewFocusNodes.containsKey(key)) {
      return _LoginViewViewFocusNodes[key]!;
    }
    _LoginViewViewFocusNodes[key] = FocusNode();
    return _LoginViewViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    loginViewControllerController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    loginViewControllerController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          LoginViewControllerValueKey: loginViewControllerController.text,
          PasswordValueKey: passwordController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _LoginViewViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _LoginViewViewFocusNodes.values) {
      focusNode.dispose();
    }

    _LoginViewViewTextEditingControllers.clear();
    _LoginViewViewFocusNodes.clear();
  }
}

extension ValueProperties on FormStateHelper {
  bool get hasAnyValidationMessage => this
      .fieldsValidationMessages
      .values
      .any((validation) => validation != null);

  bool get isFormValid {
    if (!_autoTextFieldValidation) this.validateForm();

    return !hasAnyValidationMessage;
  }

  String? get loginViewControllerValue =>
      this.formValueMap[LoginViewControllerValueKey] as String?;
  String? get passwordValue => this.formValueMap[PasswordValueKey] as String?;

  set loginViewControllerValue(String? value) {
    this.setData(
      this.formValueMap..addAll({LoginViewControllerValueKey: value}),
    );

    if (_LoginViewViewTextEditingControllers.containsKey(
        LoginViewControllerValueKey)) {
      _LoginViewViewTextEditingControllers[LoginViewControllerValueKey]?.text =
          value ?? '';
    }
  }

  set passwordValue(String? value) {
    this.setData(
      this.formValueMap..addAll({PasswordValueKey: value}),
    );

    if (_LoginViewViewTextEditingControllers.containsKey(PasswordValueKey)) {
      _LoginViewViewTextEditingControllers[PasswordValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasLoginViewController =>
      this.formValueMap.containsKey(LoginViewControllerValueKey) &&
      (loginViewControllerValue?.isNotEmpty ?? false);
  bool get hasPassword =>
      this.formValueMap.containsKey(PasswordValueKey) &&
      (passwordValue?.isNotEmpty ?? false);

  bool get hasLoginViewControllerValidationMessage =>
      this.fieldsValidationMessages[LoginViewControllerValueKey]?.isNotEmpty ??
      false;
  bool get hasPasswordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey]?.isNotEmpty ?? false;

  String? get loginViewControllerValidationMessage =>
      this.fieldsValidationMessages[LoginViewControllerValueKey];
  String? get passwordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey];
}

extension Methods on FormStateHelper {
  setLoginViewControllerValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[LoginViewControllerValueKey] =
          validationMessage;
  setPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PasswordValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    loginViewControllerValue = '';
    passwordValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      LoginViewControllerValueKey:
          getValidationMessage(LoginViewControllerValueKey),
      PasswordValueKey: getValidationMessage(PasswordValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _LoginViewViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _LoginViewViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      LoginViewControllerValueKey:
          getValidationMessage(LoginViewControllerValueKey),
      PasswordValueKey: getValidationMessage(PasswordValueKey),
    });
