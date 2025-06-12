import 'package:equatable/equatable.dart';

class DeleteRestaurantEntity extends Equatable {
  final String? id;
  final String? name;
  final bool? isActive;
  final bool? deleted;
  final bool? success;
  final String? message;
  final DateTime? deletedAt;
  final DateTime? updatedAt;

  const DeleteRestaurantEntity({
    this.id,
    this.name,
    this.isActive,
    this.deleted,
    this.success,
    this.message,
    this.deletedAt,
    this.updatedAt,
  });

  @override
  List<Object?> get props {
    return [
      id,
      name,
      isActive,
      deleted,
      success,
      message,
      deletedAt,
      updatedAt,
    ];
  }
}