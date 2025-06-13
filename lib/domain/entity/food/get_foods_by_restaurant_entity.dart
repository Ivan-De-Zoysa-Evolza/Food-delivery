import 'package:equatable/equatable.dart';

class GetFoodsByRestaurantEntity extends Equatable {
  final String restaurantId;
  final int? page;
  final int? limit;
  final String? category;
  final String? search;
  final String? sort;

  const GetFoodsByRestaurantEntity({
    required this.restaurantId,
    this.page,
    this.limit,
    this.category,
    this.search,
    this.sort,
  });

  @override
  List<Object?> get props {
    return [
      restaurantId,
      page,
      limit,
      category,
      search,
      sort,
    ];
  }
}