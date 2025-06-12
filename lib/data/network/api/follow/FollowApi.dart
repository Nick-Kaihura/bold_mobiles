import 'dart:convert';

import 'package:Bold/data/network/util/Network.dart';
import 'package:http/http.dart';

class FollowApi {
  Future<List<Follow>> getFollows() async {
    try {
      Response response = await Network().get("follows");
      if (response.statusCode == 200) {
        List<dynamic> jsonDecode = json.decode(response.body);
        return jsonDecode.map((json) => Follow.fromJson(json)).toList();
      } else {
        return Future.error("Error");
      }
    } catch (e) {}

    return Future.error("error");
  }

  Future<Follow> crateFollow(FollowCreateRequest request) async {
    try {
      Response response =
          await Network().postJson("follows", jsonEncode(request));
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonResponse = json.decode(response.body);
        return Follow.fromJson(jsonResponse);
      } else {
        return Future.error("error");
      }
    } catch (e) {}
    return Future.error("Error");
  }
}

class Follow {
  String? name;

  Follow({this.name});

  Follow.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}

class FollowCreateRequest {
  String? followerId;
  String? followedId;

  FollowCreateRequest({this.followerId, this.followedId});

  FollowCreateRequest.fromJson(Map<String, dynamic> json) {
    followerId = json['follower_id'];
    followedId = json['followed_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['follower_id'] = followerId;
    data['followed_id'] = followedId;
    return data;
  }
}
