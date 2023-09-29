// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Users extends Equatable {
  final String id;
  final String fullName;
  final String phone;
  final DateTime birthday;
  final String photo;
  final String role;

  const Users({
    required this.id,
    this.fullName = '',
    this.phone = '',
    required this.birthday,
    this.photo = '',
    this.role = '',
  });

  @override
  List<Object> get props {
    return [
      id,
      fullName,
      phone,
      birthday,
      photo,
      role,
    ];
  }

  Users copyWith({
    String? id,
    String? fullName,
    String? phone,
    DateTime? birthday,
    String? photo,
    String? role,
  }) {
    return Users(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      phone: phone ?? this.phone,
      birthday: birthday ?? this.birthday,
      photo: photo ?? this.photo,
      role: role ?? this.role,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'fullName': fullName,
      'phone': phone,
      'birthday': birthday.millisecondsSinceEpoch,
      'photo': photo,
      'role': role,
    };
  }

  factory Users.fromMap(Map<String, dynamic> map) {
    return Users(
      id: map['id'] as String,
      fullName: map['fullName'] as String,
      phone: map['phone'] as String,
      birthday: DateTime.fromMillisecondsSinceEpoch(map['birthday'] as int),
      photo: map['photo'] as String,
      role: map['role'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Users.fromJson(String source) =>
      Users.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;
}
