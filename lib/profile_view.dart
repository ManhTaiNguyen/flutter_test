// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Ward {
  String? id;
  String? name;
  String? level;
  String? provinceId;
  String? districtId;
  Ward({
    this.id,
    this.name,
    this.level,
    this.provinceId,
    this.districtId,
  });

  Ward copyWith({
    String? id,
    String? name,
    String? level,
    String? provinceId,
    String? districtId,
  }) {
    return Ward(
      id: id ?? this.id,
      name: name ?? this.name,
      level: level ?? this.level,
      provinceId: provinceId ?? this.provinceId,
      districtId: districtId ?? this.districtId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'level': level,
      'provinceId': provinceId,
      'districtId': districtId,
    };
  }

  factory Ward.fromMap(Map<String, dynamic> map) {
    return Ward(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      level: map['level'] != null ? map['level'] as String : null,
      provinceId:
          map['provinceId'] != null ? map['provinceId'] as String : null,
      districtId:
          map['districtId'] != null ? map['districtId'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Ward.fromJson(String source) =>
      Ward.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Ward(id: $id, name: $name, level: $level, provinceId: $provinceId, districtId: $districtId)';
  }

  @override
  bool operator ==(covariant Ward other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.level == level &&
        other.provinceId == provinceId &&
        other.districtId == districtId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        level.hashCode ^
        provinceId.hashCode ^
        districtId.hashCode;
  }
}

class District {
  String? id;
  String? name;
  String? level;
  String? provinceId;
  District({
    this.id,
    this.name,
    this.level,
    this.provinceId,
  });

  District copyWith({
    String? id,
    String? name,
    String? level,
    String? provinceId,
  }) {
    return District(
      id: id ?? this.id,
      name: name ?? this.name,
      level: level ?? this.level,
      provinceId: provinceId ?? this.provinceId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'level': level,
      'provinceId': provinceId,
    };
  }

  factory District.fromMap(Map<String, dynamic> map) {
    return District(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      level: map['level'] != null ? map['level'] as String : null,
      provinceId:
          map['provinceId'] != null ? map['provinceId'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory District.fromJson(String source) =>
      District.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'District(id: $id, name: $name, level: $level, provinceId: $provinceId)';
  }

  @override
  bool operator ==(covariant District other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.level == level &&
        other.provinceId == provinceId;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ level.hashCode ^ provinceId.hashCode;
  }
}

class Province {
  String? id;
  String? name;
  String? level;
  Province({
    this.id,
    this.name,
    this.level,
  });

  Province copyWith({
    String? id,
    String? name,
    String? level,
  }) {
    return Province(
      id: id ?? this.id,
      name: name ?? this.name,
      level: level ?? this.level,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'level': level,
    };
  }

  factory Province.fromMap(Map<String, dynamic> map) {
    return Province(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      level: map['level'] != null ? map['level'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Province.fromJson(String source) =>
      Province.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Province(id: $id, name: $name, level: $level)';

  @override
  bool operator ==(covariant Province other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.level == level;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ level.hashCode;
}

// Future<void> loadLocationData() async {
//   try {
//     String data =
//         await rootBundle.loadString('assets/don_vi_hanh_chinh.jason');
//     Map<String, dynamic> jsonData = json.decode(data);
//     List provinceData = jsonData['province'];
//     provinceList =
//         provinceData.map((json) => Province.fromMap(json)).toList();
//     List districtData = jsonData['district'];
//     districtList =
//         districtData.map((json) => District.fromMap(json)).toList();
//     List wardData = jsonData['ward'];
//     wardList = wardData.map((json) => Ward.fromMap(json)).toList();
//   } catch (e) {
//     debugPrint('Error loading location Data: $e');
//   }
// }
