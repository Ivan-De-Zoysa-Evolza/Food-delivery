import 'package:food_delivery/domain/entity/food/food_entity.dart';

class SearchFoodsResponseEntity {
  final List<FoodEntity> foods;
  final int totalCount;
  final int totalPages;
  final int currentPage;
  final int limit;

  const SearchFoodsResponseEntity({
    required this.foods,
    required this.totalCount,
    required this.totalPages,
    required this.currentPage,
    required this.limit,
  });
}