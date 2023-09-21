import 'package:thuprai_stacked_architecture/network/api_error.dart';
import 'package:thuprai_stacked_architecture/network/network_common.dart';
import 'package:thuprai_stacked_architecture/ui/views/sign_up_view/model/sign_in_response.dart';
import 'package:thuprai_stacked_architecture/ui/views/sign_up_view/model/sign_up_request.dart';

class AuthService {
  static const String _signUpEndpoint = "/api/signup/";
  static const String _signInEndpoint = "/api/login/";

  Future<SignInResponse> signUpUser(SignUpRequest signUpRequest) async {
    try {
      var res = await NetworkCommon.dio
          .post(_signUpEndpoint, data: signUpRequest.toMap());
      return SignInResponse.fromJson(res.data);
    } catch (e) {
      return SignInResponse.withDioException(ApiError.fromDioError(e));
    }
  }

  // Future<SignInResponse> signInUser(SignInRequest signInRequest) async {
  //   try {
  //     var res = await NetworkCommon.dio
  //         .post(_signUpEndpoint, data: signInRequest.toMap());
  //     return SignInResponse.fromJson(res.data);
  //   } catch (e) {
  //     return SignInResponse.withDioException(ApiError.fromDioError(e));
  //   }
  // }
}
