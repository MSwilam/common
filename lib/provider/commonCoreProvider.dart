import 'dart:convert';
import 'package:common/models/appSettings.dart';
import 'package:common/shared/MultiSelect.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class CommonCoreProvider with ChangeNotifier {
  List<MultiSelectObj> selectedItem = [];
  bool loading = false;
  String email = '';
  String password = '';
  String error = '';

  notifyRoles() {
    notifyListeners();
  }

  void _itemChange(MultiSelectObj itemValue, bool isSelected) {
    if (isSelected) {
      selectedItem.add(itemValue);
    } else {
      selectedItem.remove(itemValue);
    }
    notifyListeners();
  }

  selectRoles(BuildContext context) {
    Navigator.pop(context, selectedItem);
    notifyListeners();
  }

  Future signIn(String email, String password) async {
    print(AppSettings.current.appSettings!["api-url"]);
    try {
      Response response = await post(
        Uri.parse(AppSettings.current.appSettings!["api-url"] +
            'Accounts/Authenticate'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
            <String, String>{'username': email, 'password': password}),
      );
      if (response.statusCode == 200) {
        Map data = jsonDecode(response.body);
        if (data != null) {
          _userMapper(data);
        } else {
          return null;
        }
      } else {
        return null;
      }
      return AppSettings.current.userId;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signUp(String email, String password,
      List<MultiSelectObj> selectedItem, BuildContext context) async {
    List<String> RolesIdList =
        selectedItem.map((e) => e.id.toString()).toList();
    String RolesIds = jsonEncode(RolesIdList);
    try {
      Response response = await post(
        Uri.parse(AppSettings.current.appSettings!["api-url"] +
            'Accounts/CreateAccountUser'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'username': email,
          'password': password,
          'rolesIDs': RolesIds
        }),
      );
      print(response.statusCode);
      if (response.statusCode == 200) {
        return 200;
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}

void _userMapper(Map json) {
  AppSettings.current.userId = json['userId'] ?? 0;
  AppSettings.current.token = json['jwtToken'] ?? '';
  AppSettings.current.refreshToken = json['refreshToken'] ?? 0;
}
