import 'package:common/models/systemActions.dart';
import 'package:common/services/systemActionsService.dart';
import 'package:flutter/material.dart';

class SystemActionsProvider with ChangeNotifier {
  SystemActionsService service = SystemActionsService();

  SystemActions systemActions = SystemActions();
  List<SystemActions> systemActionsList = [];

  getSystemActionss() async* {
    Future<dynamic> systemActionss = service.getSystemActions();
    systemActionsList = await systemActionss;
    yield systemActionsList;
  }

  List<SystemActions> getSystemActionsSuggestion(String query) {
    List<SystemActions> suggestions = systemActionsList.where((searchResult) {
      final result = searchResult.englishName!.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();

    return suggestions;
  }

  saveSystemActions(SystemActions item) async {
    var body = <String, String>{
      "Id": item.id.toString(),
      "ArabicName": item.arabicName.toString(),
      "EnglishName": item.englishName.toString(),
      "Order": item.order.toString(),
    };

    var res = service.saveSystemActions(body);
    return Future.value(res);
  }

  updateSystemActions(SystemActions item) async {
    var body = <String, String>{
      "Id": item.id.toString(),
      "ArabicName": item.arabicName.toString(),
      "EnglishName": item.englishName.toString(),
      "Order": item.order.toString(),
    };

    var res = service.updateSystemActions(body);
    return Future.value(res);
  }

  removeSystemActionss(SystemActions item) {
    service.removeSystemActions(item.id.toString());
    notifyListeners();
  }
}
