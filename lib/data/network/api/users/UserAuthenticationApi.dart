import 'dart:convert';

import 'package:Bold/data/network/util/Network.dart';
import 'package:http/http.dart';

class UserAuthenticationApi {
  Future<UserAuthenticationResponse> authenticationUser(
      UserAuthenticationRequest request) async {
    Response response =
        await Network().postJson("authenticate", jsonEncode(request));

    Map<String, dynamic> map = json.decode(response.body);
    UserAuthenticationResponse userAuthenticationResponse =
        UserAuthenticationResponse.fromJson(map);
    return userAuthenticationResponse;
  }

  Future<UserAuthenticationResponse> updateFcmToken(
      UserAuthenticationRequest request) async {
    Response response =
        await Network().postJson("updateFcmToken", jsonEncode(request));

    Map<String, dynamic> map = json.decode(response.body);
    UserAuthenticationResponse userAuthenticationResponse =
        UserAuthenticationResponse.fromJson(map);
    return userAuthenticationResponse;
  }
}

class UserAuthenticationRequest {
  String? email;
  String? password;

  UserAuthenticationRequest({this.email, this.password});

  UserAuthenticationRequest.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}

class UserUpdateFcmTokenRequest {
  String? email;
  String? token;

  UserUpdateFcmTokenRequest({this.email, this.token});

  UserUpdateFcmTokenRequest.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['token'] = token;
    return data;
  }
}

class UserAuthenticationResponse {
  String? email;
  String? password;
  String? fcmToken;

  UserAuthenticationResponse({this.email, this.password, this.fcmToken});

  UserAuthenticationResponse.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    fcmToken = json['fcmToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    data['fcmToken'] = fcmToken;
    return data;
  }
}
