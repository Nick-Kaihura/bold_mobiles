import 'dart:convert';

import 'package:http/http.dart';

import '../../util/Network.dart';

class LikeApi {
  Future<List<Items>> getLikes() async {
    try {
      Response response = await Network().get("likes");
      List<dynamic> map = json.decode(response.body);
      List<Items> posts = map.map((json) => Items.fromJson(json)).toList();
      return posts;
    } catch (e) {
      print(e);
    }
    return Future.error("Error");
  }

  Future<Items> createLike(LikeCreateRequest request) async {
    try {
      Response response =
          await Network().postJson("likes", jsonEncode(request));
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      Map<String, dynamic> likesJson = json.decode(jsonResponse['items']);
      return Items.fromJson(likesJson);
    } catch (e) {}
    return Future.error("Error");
  }
}

class LikeCreateRequest {
  String? likerAttributeId;
  String? likedAttributeId;
  String? category;
  String? likeStatus;

  LikeCreateRequest(
      {this.likerAttributeId,
      this.likedAttributeId,
      this.category,
      this.likeStatus});

  LikeCreateRequest.fromJson(Map<String, dynamic> json) {
    likerAttributeId = json['liker_attribute_id'];
    likedAttributeId = json['liked_attribute_id'];
    category = json['category'];
    likeStatus = json['like_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['liker_attribute_id'] = likerAttributeId;
    data['liked_attribute_id'] = likedAttributeId;
    data['category'] = category;
    data['like_status'] = likeStatus;
    return data;
  }
}

class LikesResponse {
  int? total;
  List<Items>? items;

  LikesResponse({this.total, this.items});

  LikesResponse.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total'] = total;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  int? id;
  String? likerAttributeId;
  String? likedAttributeId;
  String? likeStatus;
  String? category;
  String? likedOn;

  Items(
      {this.id,
      this.likerAttributeId,
      this.likedAttributeId,
      this.likeStatus,
      this.category,
      this.likedOn});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    likerAttributeId = json['liker_attribute_id'];
    likedAttributeId = json['liked_attribute_id'];
    likeStatus = json['like_status'];
    category = json['category'];
    likedOn = json['liked_on'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['liker_attribute_id'] = likerAttributeId;
    data['liked_attribute_id'] = likedAttributeId;
    data['like_status'] = likeStatus;
    data['category'] = category;
    data['liked_on'] = likedOn;
    return data;
  }
}
