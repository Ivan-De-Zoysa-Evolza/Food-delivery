import 'package:equatable/equatable.dart';

class GetFoodByIdEntity extends Equatable {
  final String foodId;

  const GetFoodByIdEntity({
    required this.foodId,
  });

  @override
  List<Object?> get props {
    return [
      foodId,
    ];
  }
}