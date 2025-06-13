import 'package:equatable/equatable.dart';

class UpdateFoodEntity extends Equatable {
  final String foodId;
  final String? name;
  final String? description;
  final double? base_price;
  final double? rating;
  final int? rating_count;
  final int? prep_time;
  final int? calories;

  const UpdateFoodEntity({
    required this.foodId,
    this.name,
    this.description,
    this.base_price,
    this.rating,
    this.rating_count,
    this.prep_time,
    this.calories,
  });

  @override
  List<Object?> get props {
    return [
      foodId,
      name,
      description,
      base_price,
      rating,
      rating_count,
      prep_time,
      calories,
    ];
  }
}