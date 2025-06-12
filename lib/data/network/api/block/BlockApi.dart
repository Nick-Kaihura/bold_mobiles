import 'dart:convert';

import 'package:Bold/data/network/util/Network.dart';
import 'package:http/http.dart';

class BlockApi {
  Future<List<Block>> getBlockList(String blockerAttributeId) async {
    var request = {"blocker_attribute_id": blockerAttributeId};
    Response response =
        await Network().getFormUrlEncoded(request, "block_contacts");
    List<dynamic> jsonMap = json.decode(response.body);
    List<Block> blocks = jsonMap.map((json) => Block.fromJson(json)).toList();
    return blocks;
  }

  Future<List<Block>> createBlock(BlockRequest request) async {
    Response response =
        await Network().postJson("block_contacts", jsonEncode(request));
    List<dynamic> jsonMap = json.decode(response.body);
    List<Block> blocks = jsonMap.map((json) => Block.fromJson(json)).toList();
    return blocks;
  }
}

class Block {
  String? useName;

  Block({this.useName});

  Block.fromJson(Map<String, dynamic> json) {
    useName = json['useName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['useName'] = useName;
    return data;
  }
}

class BlockRequest {
  String? blockerAttributeId;
  String? blockedAttributeId;
  String? reasonCategory;
  String? reasonText;
  String? blockStatus;

  BlockRequest(
      {this.blockerAttributeId,
      this.blockedAttributeId,
      this.reasonCategory,
      this.reasonText,
      this.blockStatus});

  BlockRequest.fromJson(Map<String, dynamic> json) {
    blockerAttributeId = json['blocker_attribute_id'];
    blockedAttributeId = json['blocked_attribute_id'];
    reasonCategory = json['reason_category'];
    reasonText = json['reason_text'];
    blockStatus = json['block_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['blocker_attribute_id'] = blockerAttributeId;
    data['blocked_attribute_id'] = blockedAttributeId;
    data['reason_category'] = reasonCategory;
    data['reason_text'] = reasonText;
    data['block_status'] = blockStatus;
    return data;
  }
}
