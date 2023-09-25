import 'package:common/models/systemActions.dart';
import 'package:common/services/httpCommon.dart';

class SystemActionsService {
//Get List SystemActionss
  Future<dynamic> getSystemActions() async {
    try {
      final body = await getHttp('SystemActions/GetSystemActions');
      return body.map<SystemActions>(SystemActions.fromJson).toList();
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

//Save List SystemActionss
  Future<dynamic> saveSystemActions(var bodyHeader) async {
    try {
      final body =
          await postHttp('SystemActions/CreateSystemActions', body: bodyHeader);
      return body;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

//Update List SystemActionss
  Future<dynamic> updateSystemActions(var bodyHeader) async {
    try {
      final body =
          await postHttp('SystemActions/UpdateSystemActions', body: bodyHeader);
      return body;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

//Delete List SystemActionss
  Future<dynamic> removeSystemActions(id) async {
    try {
      final body =
          await deleteLinkHttp('SystemActions/DeleteSystemActions', id);
      return body;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
