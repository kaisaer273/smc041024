
import 'package:freezed_annotation/freezed_annotation.dart';
part 'firebase_failure.freezed.dart';

@freezed
abstract class FirebaseFailure with _$FirebaseFailure {
const factory FirebaseFailure.unexpected() = _Unexpected;
const factory FirebaseFailure.insufficientPermission() = _InsufficientPermission;
const factory FirebaseFailure.permissionDenied() = _PermissionDenied;
const factory FirebaseFailure.tooManyRequests() = _TooManyRequests;
const factory FirebaseFailure.serverError() = _ServerError;
}
    