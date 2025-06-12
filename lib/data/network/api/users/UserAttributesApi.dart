import 'dart:convert';

import 'package:Bold/data/network/util/Network.dart';
import 'package:http/http.dart';

class UserAttributesApi {
  Future<UserAttributes> createAttributes(UserAttributesRequest request) async {
    Response response =
        await Network().postJson("attributes", jsonEncode(request));
    Map<String, dynamic> jsonDecode = json.decode(response.body);
    UserAttributes userAttributes = UserAttributes.fromJson(jsonDecode);
    return userAttributes;
  }

  Future<UserOnlineStatus> getUserOnlineStatus(
      UserAttributesRequest request) async {
    Response response =
        await Network().postJson("attributes", jsonEncode(request));
    Map<String, dynamic> jsonDecode = json.decode(response.body);
    UserOnlineStatus userOnlineStatus = UserOnlineStatus.fromJson(jsonDecode);
    return userOnlineStatus;
  }
}

class UserOnlineStatus {
  String? onlineStatus;

  UserOnlineStatus({this.onlineStatus});

  UserOnlineStatus.fromJson(Map<String, dynamic> json) {
    onlineStatus = json['onlineStatus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['onlineStatus'] = onlineStatus;
    return data;
  }
}

class UserAttributes {
  String? userAttributeId;

  UserAttributes({this.userAttributeId});

  UserAttributes.fromJson(Map<String, dynamic> json) {
    userAttributeId = json['user_attribute_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_attribute_id'] = userAttributeId;
    return data;
  }
}

class UserAttributesRequest {
  String? userAttributeId;
  String? attributeKey;
  String? attributeValue;
  String? attributeStatus;
  String? attributeCategory;

  UserAttributesRequest(
      {this.userAttributeId,
      this.attributeKey,
      this.attributeValue,
      this.attributeStatus,
      this.attributeCategory});

  UserAttributesRequest.fromJson(Map<String, dynamic> json) {
    userAttributeId = json['user_attribute_id'];
    attributeKey = json['attribute_key'];
    attributeValue = json['attribute_value'];
    attributeStatus = json['attribute_status'];
    attributeCategory = json['attribute_category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_attribute_id'] = userAttributeId;
    data['attribute_key'] = attributeKey;
    data['attribute_value'] = attributeValue;
    data['attribute_status'] = attributeStatus;
    data['attribute_category'] = attributeCategory;
    return data;
  }
}
