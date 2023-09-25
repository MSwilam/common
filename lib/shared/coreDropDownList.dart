import 'package:common/models/accounts.dart';
import 'package:common/models/roles.dart';
import 'package:common/models/systemActions.dart';
import 'package:flutter/material.dart';
import 'package:common/services/ea_core.dart';
import 'package:common/shared/constants.dart';
import 'package:common/shared/dropDown.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class DepartmentDropdown extends StatelessWidget {
  const DepartmentDropdown({super.key, required this.onChangedFnc});
  final Function(Roles? val) onChangedFnc;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: EACore().getRoles(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text(
            "error_msg".tr(),
            style: errorTextStyle,
          );
        } else {
          List<Roles> data = snapshot.data as List<Roles>;
          return DropdownButtonWidget(
              DropDownFields: DropdownButtonFormField<Roles>(
            //value: data[0],
            hint: Text("select_dept".tr()),
            validator: (value) => value == null ? 'field required' : null,
            onChanged: onChangedFnc,
            items: data.map((Roles user) {
              return DropdownMenuItem<Roles>(
                value: user,
                child: Text(
                  user.arabicName!,
                  style: const TextStyle(color: Colors.black),
                ),
              );
            }).toList(),
          ));
        }
      },
    );
  }
}

class SystemActionsDropdown extends StatelessWidget {
  const SystemActionsDropdown({super.key, required this.onChangedFnc});
  final Function(SystemActions? val) onChangedFnc;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: EACore().getSystemActions(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text(
            "error_msg".tr(),
            style: errorTextStyle,
          );
        } else {
          List<SystemActions> data = snapshot.data as List<SystemActions>;
          return DropdownButtonWidget(
              DropDownFields: DropdownButtonFormField<SystemActions>(
            //value: data[0],
            hint: Text("select_emp".tr()),
            validator: (value) => value == null ? 'field required' : null,
            onChanged: onChangedFnc,
            items: data.map((SystemActions employees) {
              return DropdownMenuItem<SystemActions>(
                value: employees,
                child: Text(
                  employees.arabicName!,
                  style: const TextStyle(color: Colors.black),
                ),
              );
            }).toList(),
          ));
        }
      },
    );
  }
}

class AccountUserDropdown extends StatelessWidget {
  const AccountUserDropdown({super.key, required this.onChangedFnc});
  final Function(AccountUser? val) onChangedFnc;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: EACore().getAccountUser(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text(
            "error_msg".tr(),
            style: errorTextStyle,
          );
        } else {
          List<AccountUser> data = snapshot.data as List<AccountUser>;
          return DropdownButtonWidget(
              DropDownFields: DropdownButtonFormField<AccountUser>(
            //value: data[0],
            hint: Text("select_emp".tr()),
            validator: (value) => value == null ? 'field required' : null,
            onChanged: onChangedFnc,
            items: data.map((AccountUser account) {
              return DropdownMenuItem<AccountUser>(
                value: account,
                child: Text(
                  account.userName!,
                  style: const TextStyle(color: Colors.black),
                ),
              );
            }).toList(),
          ));
        }
      },
    );
  }
}

class AccountUserNotUsedDropdown extends StatelessWidget {
  const AccountUserNotUsedDropdown({super.key, required this.onChangedFnc});
  final Function(AccountUser? val) onChangedFnc;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: EACore().getAccountUserNotUsed(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text(
            "error_msg".tr(),
            style: errorTextStyle,
          );
        } else {
          List<AccountUser> data = snapshot.data as List<AccountUser>;
          return DropdownButtonWidget(
              DropDownFields: DropdownButtonFormField<AccountUser>(
            //value: data[0],
            hint: Text("select_emp".tr()),
            validator: (value) => value == null ? 'field required' : null,
            onChanged: onChangedFnc,
            items: data.map((AccountUser account) {
              return DropdownMenuItem<AccountUser>(
                value: account,
                child: Text(
                  account.userName!,
                  style: const TextStyle(color: Colors.black),
                ),
              );
            }).toList(),
          ));
        }
      },
    );
  }
}
