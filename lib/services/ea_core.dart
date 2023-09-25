import 'package:common/models/accounts.dart';
import 'package:common/models/appSettings.dart';
import 'package:common/models/roles.dart';
import 'package:common/models/systemActions.dart';
import 'package:common/services/accountsService.dart';
import 'package:common/services/rolesService.dart';
import 'package:common/services/systemActionsService.dart';
import 'package:common/shared/MultiSelect.dart';
import 'package:flutter/material.dart';

class EACore {
  Future<List<Roles>> getRoles() async {
    RolesService rolesservice = RolesService();
    return await rolesservice.getRoles();
  }

  Future<void> initialCore() async {
    await AppSettings.current.initialize();
  }

  Future<List<MultiSelectObj>> getRolesNames() async {
    RolesService rolesservice = RolesService();

    List<Roles> roles = await rolesservice.getRoles();
    List<MultiSelectObj> rolesNames = roles.map((e) {
      MultiSelectObj obj = MultiSelectObj(id: e.id!, value: e.englishName!);
      return obj;
    }).toList();
    return rolesNames;
  }

  Future<List<SystemActions>> getSystemActions() async {
    SystemActionsService systemActionsservice = SystemActionsService();
    return await systemActionsservice.getSystemActions();
  }

  Future<List<AccountUser>> getAccountUser() async {
    AccountsService accountUserservice = AccountsService();
    return await accountUserservice.getAccountUser();
  }

  Future<List<AccountUser>> getAccountUserNotUsed() async {
    AccountsService accountUserservice = AccountsService();
    return await accountUserservice.getAccountUserNotUsed();
  }

  Future<List<MultiSelectObj>> showMultiSelect(BuildContext context) async {
    final List<MultiSelectObj> items = await EACore().getRolesNames();

    // ignore: use_build_context_synchronously
    final List<MultiSelectObj>? results = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return MultiSelect(
            items: items,
          );
        });

    if (results != null) {
      return results;
    } else {
      return [];
    }
  }
}
