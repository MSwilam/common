class Roles {
  int? id;
  String? arabicName;
  String? englishName;
  int? order;
  int? active;
  int? createdBy;
  DateTime? createdOn;
  int? updatedBy;
  DateTime? updatedOn;

  Roles(
      {this.id,
      this.arabicName,
      this.englishName,
      this.order,
      this.active,
      this.createdBy,
      this.createdOn,
      this.updatedBy,
      this.updatedOn});

  static Roles fromJson(json) => Roles(
        id: json['id'] ?? 0,
        arabicName: json['arabicName'] ?? '',
        englishName: json['englishName'] ?? '',
        order: json['order'] ?? 0,
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
      'order': order,
      'active': active,
      'createdBy': createdBy,
      'createdOn': createdOn,
      'updatedBy': updatedBy,
      'updatedOn': updatedOn,
    };
  }
}
