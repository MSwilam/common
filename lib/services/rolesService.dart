import 'package:common/models/roles.dart';
import 'package:common/services/httpCommon.dart';

class RolesService {
//Get List Roless
  Future<dynamic> getRoles() async {
    try {
      final body = await getHttp('Roles/GetRoles');
      return body.map<Roles>(Roles.fromJson).toList();
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

//Save List Roless
  Future<dynamic> saveRoles(var bodyHeader) async {
    try {
      final body = await postHttp('Roles/CreateRoles', body: bodyHeader);
      return body;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

//Update List Roless
  Future<dynamic> updateRoles(var bodyHeader) async {
    try {
      final body = await postHttp('Roles/UpdateRoles', body: bodyHeader);
      return body;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

//Delete List Roless
  Future<dynamic> removeRoles(id) async {
    try {
      final body = await deleteLinkHttp('Roles/DeleteRoles', id);
      return body;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
