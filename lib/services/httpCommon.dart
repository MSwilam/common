import 'dart:typed_data';

import 'package:common/models/appSettings.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const JsonDecoder _decoder = JsonDecoder();

Future<dynamic> deleteLinkHttp(String url, String id) {
  Map<String, String> headers = {
    'Content-Type': 'application/json; charset=UTF-8',
    // 'Authorization': 'Bearer ${AppContext.current.token}',
  };
  print(AppSettings.current.appSettings!["api-url"] + url + "/" + id);
  return http
      .delete(
          Uri.parse(
              AppSettings.current.appSettings!["api-url"] + url + "/" + id),
          headers: headers)
      .then((http.Response response) {
    final String res = response.body;
    final int statusCode = response.statusCode;

    if (statusCode < 200 || statusCode > 400) {
      final ex = Exception("Error while fetching data");
    }
    return _decoder.convert(res);
  }).catchError((ex) {
    throw (ex);
    //return null;
  });
}

Future<dynamic> getLinkHttp(String url, String id) {
  Map<String, String> headers = {
    'Content-Type': 'application/json; charset=UTF-8',
    // 'Authorization': 'Bearer ${AppContext.current.token}',
  };
  return http
      .get(
          Uri.parse(
              AppSettings.current.appSettings!["api-url"] + url + "/" + id),
          headers: headers)
      .then((http.Response response) {
    final String res = response.body;
    final int statusCode = response.statusCode;

    if (statusCode < 200 || statusCode > 400) {
      final ex = Exception("Error while fetching data");
    }
    return _decoder.convert(res);
  }).catchError((ex) {
    throw (ex);
    //return null;
  });
}

Future<dynamic> postHttp(String url, {body, bool addHeaders = true}) {
  Map<String, String> headers = {
    'Content-Type': 'application/json; charset=UTF-8',
    // 'Authorization': 'Bearer ${AppContext.current.token}',
  };
  return http
      .post(Uri.parse(AppSettings.current.appSettings!["api-url"] + url),
          headers: headers, body: jsonEncode(body))
      .then((http.Response response) {
    final String res = response.body;
    final int statusCode = response.statusCode;
    print(res);
    if (statusCode < 200 || statusCode > 400) {
      final ex = Exception("Error while fetching data");
    }
    return _decoder.convert(res);
  }).catchError((ex) {
    throw (ex);
    //return null;
  });
}

Future<dynamic> postHttpText(String url, String text, int? claimChatId) async {
  Map<String, String> headers = {
    'Content-Type': 'application/json; charset=UTF-8',
    // 'Authorization': 'Bearer ${AppContext.current.token}',
  };
  var request = http.MultipartRequest(
      "POST", Uri.parse(AppSettings.current.appSettings!["api-url"] + url));
  request.headers.addAll(headers);
  request.fields["ClaimChatId"] = claimChatId.toString();
  request.fields["Body"] = text;

  var response = await request.send();
  var responseData = await response.stream.toBytes();

  var result = String.fromCharCodes(responseData);
  print(result);
  return _decoder.convert(result);
}

Future<dynamic> postHttpFiles(String url, Uint8List fileImage, String fileName,
    String attachmentType, int claimChatId) async {
  Map<String, String> headers = {
    'Content-Type': 'application/json; charset=UTF-8',
    // 'Authorization': 'Bearer ${AppContext.current.token}',
  };
  var request = http.MultipartRequest(
      "POST", Uri.parse(AppSettings.current.appSettings!["api-url"] + url));
  request.headers.addAll(headers);
  request.fields["ClaimChatId"] = claimChatId.toString();
  //request.fields["Body"]= text;
  request.fields["AttachmentType"] = attachmentType;
  var picture =
      http.MultipartFile.fromBytes('Attachment', fileImage, filename: fileName);
  request.files.add(picture);
  var response = await request.send();
  var responseData = await response.stream.toBytes();
  var result = String.fromCharCodes(responseData);
  return _decoder.convert(result);
}

Future<dynamic> getHttp(String url, {body, bool addHeaders = true}) {
  Map<String, String> headers = {
    'Content-Type': 'application/json; charset=UTF-8',
    // 'Authorization': 'Bearer ${AppContext.current.token}',
  };

  return http
      .get(Uri.parse(AppSettings.current.appSettings!["api-url"] + url),
          headers: headers)
      .then((http.Response response) {
    final String res = response.body;
    final int statusCode = response.statusCode;
    if (statusCode < 200 || statusCode > 400) {
      final ex = Exception("Error while fetching data");
    }
    return _decoder.convert(res);
  }).catchError((ex) {
    return null;
  });
}
