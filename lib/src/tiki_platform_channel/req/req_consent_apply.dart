/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'dart:convert';

import '../../../main.dart';
import 'req.dart';

class ReqConsentApply extends Req {
  late String source;
  late TikiSdkDestination destination;

  @override
  late String requestId;

  ReqConsentApply.fromJson(String jsonReq) {
    Map map = jsonDecode(jsonReq);
    var tikisdkdest = TikiSdkDestination.fromJson(jsonEncode(map["destination"]));
    source = map["source"];
    destination = tikisdkdest;
    requestId = map["requestId"];
  }
}
