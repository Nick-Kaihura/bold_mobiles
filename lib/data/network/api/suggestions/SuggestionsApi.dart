import 'dart:convert';

import 'package:http/http.dart';

import '../../util/Network.dart';

class SuggestionsApi {
  Future<List<UserSuggestion>> getUserSuggestions() async {
    Response response = await Network().get("posts");
    List<dynamic> map = json.decode(response.body);
    List<UserSuggestion> suggestions =
        map.map((kk) => UserSuggestion.fromJson(kk)).toList();
    return suggestions;
  }
}

class UserSuggestion {
  String? userId;
  String? userName;

  UserSuggestion({this.userId, this.userName});

  UserSuggestion.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    userName = json['userName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['userName'] = userName;
    return data;
  }
}
