
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../helpers/model_helpers.dart';

part 'users.freezed.dart';
part 'users.g.dart';

@freezed
abstract class Users implements _$Users {
  const Users._();

  const factory Users({
    required String id,
    String? name,
    @Default(false) bool active,
    String? createdAt,
    String? updatedAt,
  }) = _Users;

  factory Users.fromJson(Map<String, dynamic> json) =>
      _$UsersFromJson(json);

  factory Users.empty() => const Users(id: '');

  factory Users.fromDocument(DocumentSnapshot doc) =>
      Users.fromJson(ModelHelpers().fromDocument(doc.data()!))
          .copyWith(id: doc.id);

  Map<String, dynamic> toDocument() => ModelHelpers().toDocument(toJson());
}
    