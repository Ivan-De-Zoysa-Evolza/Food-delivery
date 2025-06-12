import 'package:equatable/equatable.dart';
import 'package:food_delivery/domain/entity/food/size_entity.dart';

class FoodEntity extends Equatable {
  final String? restaurant_id;
  final String? name;
  final String? description;
  final double? base_price;
  final List<SizeEntity>? sizes;
  final String? category;
  final List<String>? ingredients;
  final List<String>? images;
  final bool? is_vegetarian;
  final bool? is_vegan;
  final String? spice;
  final int? prep_time;
  final int? calories;
  final List<String>? tags;
  final double? rating;
  final int? rating_count;

  const FoodEntity({
    this.restaurant_id,
    this.name,
    this.description,
    this.base_price,
    this.sizes,
    this.category,
    this.ingredients,
    this.images,
    this.is_vegetarian,
    this.is_vegan,
    this.spice,
    this.prep_time,
    this.calories,
    this.tags,
    this.rating,
    this.rating_count,
  });

  @override
  List<Object?> get props {
    return [
      restaurant_id,
      name,
      description,
      base_price,
      sizes,
      category,
      ingredients,
      images,
      is_vegetarian,
      is_vegan,
      spice,
      prep_time,
      calories,
      tags,
      rating,
      rating_count,
    ];
  }
}