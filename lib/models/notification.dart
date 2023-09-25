class Notification {
  int? id;
  String? arabicName;
  String? englishName;
  int? pageId;
  int? tableId;
  int? active;
  int? createdBy;
  DateTime? createdOn;
  int? updatedBy;
  DateTime? updatedOn;

  Notification(
      {this.id,
      this.arabicName,
      this.englishName,
      this.pageId,
      this.tableId,
      this.active,
      this.createdBy,
      this.createdOn,
      this.updatedBy,
      this.updatedOn});

  static Notification fromJson(json) => Notification(
        id: json['id'] ?? 0,
        arabicName: json['arabicName'] ?? '',
        englishName: json['englishName'] ?? '',
        pageId: json['pageId'] ?? 0,
        tableId: json['tableId'] ?? 0,
        active: json['active'] ?? 0,
        createdBy: json['createdBy'] ?? 0,
        createdOn: json['createdOn'] == null
            ? null
            : DateTime.parse(json['createdOn']),
        updatedBy: json['updatedBy'] ?? 0,
        updatedOn: json['updatedOn'] == null
            ? null
            : DateTime.parse(json['updatedOn']),
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'arabicName': arabicName,
      'englishName': englishName,
      'pageId': pageId,
      'tableId': tableId,
      'active': active,
      'createdBy': createdBy,
      'createdOn': createdOn,
      'updatedBy': updatedBy,
      'updatedOn': updatedOn,
    };
  }
}

class NotificationTemplete {
  int? id;
  String? arabicName;
  String? englishName;
  int? pageId;
  int? notificationTypeID;
  int? active;
  int? createdBy;
  DateTime? createdOn;
  int? updatedBy;
  DateTime? updatedOn;

  NotificationTemplete(
      {this.id,
      this.arabicName,
      this.englishName,
      this.pageId,
      this.notificationTypeID,
      this.active,
      this.createdBy,
      this.createdOn,
      this.updatedBy,
      this.updatedOn});

  static NotificationTemplete fromJson(json) => NotificationTemplete(
        id: json['id'] ?? 0,
        arabicName: json['arabicName'] ?? '',
        englishName: json['englishName'] ?? '',
        pageId: json['pageId'] ?? 0,
        notificationTypeID: json['notificationTypeID'] ?? 0,
        active: json['active'] ?? 0,
        createdBy: json['createdBy'] ?? 0,
        createdOn: json['createdOn'] == null
            ? null
            : DateTime.parse(json['createdOn']),
        updatedBy: json['updatedBy'] ?? 0,
        updatedOn: json['updatedOn'] == null
            ? null
            : DateTime.parse(json['updatedOn']),
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'arabicName': arabicName,
      'englishName': englishName,
      'pageId': pageId,
      'notificationTypeID': notificationTypeID,
      'active': active,
      'createdBy': createdBy,
      'createdOn': createdOn,
      'updatedBy': updatedBy,
      'updatedOn': updatedOn,
    };
  }
}

class NotificationType {
  int? id;
  String? arabicName;
  String? englishName;
  int? active;
  int? createdBy;
  DateTime? createdOn;
  int? updatedBy;
  DateTime? updatedOn;

  NotificationType(
      {this.id,
      this.arabicName,
      this.englishName,
      this.active,
      this.createdBy,
      this.createdOn,
      this.updatedBy,
      this.updatedOn});

  static NotificationType fromJson(json) => NotificationType(
        id: json['id'] ?? 0,
        arabicName: json['arabicName'] ?? '',
        englishName: json['englishName'] ?? '',
        active: json['active'] ?? 0,
        createdBy: json['createdBy'] ?? 0,
        createdOn: json['createdOn'] == null
            ? null
            : DateTime.parse(json['createdOn']),
        updatedBy: json['updatedBy'] ?? 0,
        updatedOn: json['updatedOn'] == null
            ? null
            : DateTime.parse(json['updatedOn']),
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'arabicName': arabicName,
      'englishName': englishName,
      'active': active,
      'createdBy': createdBy,
      'createdOn': createdOn,
      'updatedBy': updatedBy,
      'updatedOn': updatedOn,
    };
  }
}

class NotificationModuleUpdate {
  int? id;
  String? moduleName;
  int? notify;
  int? createdBy;
  DateTime? createdOn;
  int? updatedBy;
  DateTime? updatedOn;

  NotificationModuleUpdate(
      {this.id,
      this.moduleName,
      this.notify,
      this.createdBy,
      this.createdOn,
      this.updatedBy,
      this.updatedOn});

  static NotificationModuleUpdate fromJson(json) => NotificationModuleUpdate(
        id: json['id'] ?? 0,
        moduleName: json['moduleName'] ?? '',
        notify: json['notify'] ?? 0,
        createdBy: json['createdBy'] ?? 0,
        createdOn: json['createdOn'] == null
            ? null
            : DateTime.parse(json['createdOn']),
        updatedBy: json['updatedBy'] ?? 0,
        updatedOn: json['updatedOn'] == null
            ? null
            : DateTime.parse(json['updatedOn']),
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'moduleName': moduleName,
      'notify': notify,
      'createdBy': createdBy,
      'createdOn': createdOn,
      'updatedBy': updatedBy,
      'updatedOn': updatedOn,
    };
  }
}
