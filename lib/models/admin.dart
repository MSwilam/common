import 'package:localize_and_translate/localize_and_translate.dart';

class adminScreen {
  final int Id;
  final String name;
  final int? groupId;
  final int icon;

  adminScreen({
    required this.Id,
    required this.name,
    required this.groupId,
    required this.icon,
  });
  static adminScreen fromJson(json) => adminScreen(
        Id: json['Id'],
        name: json['name'],
        groupId: json['groupId'],
        icon: json['icon'],
      );
}

class SearchItem {
  int? id;
  String? Item;

  SearchItem({
    this.id,
    this.Item,
  });

  static SearchItem fromJson(json,String name){ 
    print(json['Id']);
    print('sssssss');
    return SearchItem(
        id: json['id'],
        //Item: json[name],
      );
  }
}

List<adminScreen> mainScreenList = [
  adminScreen(
    Id: 1,
    name: ('requests').tr(),
    icon: 0xe11b,
    groupId: 1,
  ),
  adminScreen(
    Id: 2,
    name: ('tasks').tr(),
    icon: 0xe11b,
    groupId: 1,
  ),
  adminScreen(
    Id: 3,
    name: ('setting').tr(),
    icon: 0xf0244,
    groupId: 1,
  ),
  adminScreen(
    Id: 4,
    name: ('about').tr(),
    icon: 0xe30a,
    groupId: 1,
  ),
  adminScreen(
    Id: 5,
    name: ('analytics').tr(),
    icon: 0xe083,
    groupId: 1,
  ),
];

List<adminScreen> settingScreenList = [
  adminScreen(
    Id: 1,
    name: ('job_title').tr(),
    icon: 0xe11b,
    groupId: 1,
  ),
  adminScreen(
    Id: 2,
    name: ('department').tr(),
    icon: 0xe11b,
    groupId: 1,
  ),
  adminScreen(
    Id: 3,
    name: ('employee').tr(),
    icon: 0xe11b,
    groupId: 1,
  ),
  adminScreen(
    Id: 4,
    name: ('steps').tr(),
    icon: 0xe11b,
    groupId: 1,
  ),
  adminScreen(
    Id: 5,
    name: ('tasks').tr(),
    icon: 0xe11b,
    groupId: 1,
  ),
  adminScreen(
    Id: 6,
    name: ('tasks_type').tr(),
    icon: 0xe11b,
    groupId: 1,
  ),
];

List<adminScreen> requestScreenList = [
  adminScreen(
    Id: 1,
    name: ('start_project').tr(),
    icon: 0xe11b,
    groupId: 1,
  ),
  adminScreen(
    Id: 2,
    name: ('add_module').tr(),
    icon: 0xe11b,
    groupId: 1,
  ),
  adminScreen(
    Id: 3,
    name: ('fix_error').tr(),
    icon: 0xe11b,
    groupId: 1,
  ),
  adminScreen(
    Id: 4,
    name: ('add_tools').tr(),
    icon: 0xe11b,
    groupId: 1,
  ),
];

List<adminScreen> tasksScreenList = [
  adminScreen(
    Id: 1,
    name: ('my_tasks').tr(),
    icon: 0xe11b,
    groupId: 1,
  ),
  adminScreen(
    Id: 2,
    name: ('un_assign_tasks').tr(),
    icon: 0xe11b,
    groupId: 1,
  ),
  adminScreen(
    Id: 3,
    name: ('complete_tasks').tr(),
    icon: 0xe11b,
    groupId: 1,
  ),
];
