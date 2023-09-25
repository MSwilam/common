class AccountUser {
  int? id;
  String? userName;
  String? password;
  String? rolesIDs;
  int? active;
//	List<Roles>? roles;

  AccountUser({
    this.id,
    this.userName,
    this.rolesIDs,
    this.active,
    //this.roles
  });

  static AccountUser fromJson(json) => AccountUser(
        id: json['id'] ?? 0,
        userName: json['userName'] ?? '',
        rolesIDs: json['rolesIDs'] ?? '',
        active: json['active'] ?? 0,
        // roles: json['roles'] ?? 0,
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userName': userName,
      'rolesIDs': rolesIDs,
      'active': active,
      //'roles':roles,
    };
  }
}
