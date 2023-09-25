import 'package:common/models/roles.dart';
import 'package:common/services/rolesService.dart';
import 'package:flutter/material.dart';

class RolesProvider with ChangeNotifier {
  RolesService service = RolesService();

  Roles roles = Roles();
  List<Roles> rolesList = [];

  getRoless() async* {
    Future<dynamic> roless = service.getRoles();
    rolesList = await roless;
    yield rolesList;
  }

  List<Roles> getRolesSuggestion(String query) {
    if (rolesList == null) return [];
    List<Roles> suggestions = rolesList.where((searchResult) {
      final result = searchResult.englishName!.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();

    return suggestions;
  }

  saveRoles(Roles item) async {
    var body = <String, String>{
      "Id": item.id.toString(),
      "ArabicName": item.arabicName.toString(),
      "EnglishName": item.englishName.toString(),
      "Order": item.order.toString(),
    };

    var res = service.saveRoles(body);

    return Future.value(res);
  }

  updateRoles(Roles item) async {
    var body = <String, String>{
      "Id": item.id.toString(),
      "ArabicName": item.arabicName.toString(),
      "EnglishName": item.englishName.toString(),
      "Order": item.order.toString(),
    };

    var res = service.updateRoles(body);
    return Future.value(res);
  }

  removeRoless(Roles item) {
    var res = service.removeRoles(item.id.toString());
    notifyListeners();
  }
}
