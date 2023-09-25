import 'package:common/models/accounts.dart';
import 'package:common/services/httpCommon.dart';

class AccountsService {
  //Get List AccountUsers
  Future<dynamic> getAccountUser() async {
    try {
      final body = await getHttp('Accounts/GetAccountUser');
      return body.map<AccountUser>(AccountUser.fromJson).toList();
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future<dynamic> getAccountUserNotUsed() async {
    try {
      final body = await getHttp('Accounts/GetAccountUserNotUsed');
      return body.map<AccountUser>(AccountUser.fromJson).toList();
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

//Save List AccountUsers
  Future<dynamic> saveAccountUser(var bodyHeader) async {
    try {
      final body =
          await postHttp('Accounts/CreateAccountUser', body: bodyHeader);
      return body;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

//Update List AccountUsers
  Future<dynamic> updateAccountUser(var bodyHeader) async {
    try {
      final body =
          await postHttp('Accounts/UpdateAccountUser', body: bodyHeader);
      return body;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

//Delete List AccountUsers
  Future<dynamic> removeAccountUser(id) async {
    try {
      final body = await deleteLinkHttp('Accounts/DeleteAccountUser', id);
      return body;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
