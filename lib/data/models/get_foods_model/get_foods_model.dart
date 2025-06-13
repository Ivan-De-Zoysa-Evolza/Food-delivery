import 'package:food_delivery/domain/entity/food/get_foods_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_foods_model.g.dart';

@JsonSerializable()
class GetFoodsModel extends GetFoodsEntity {
  const GetFoodsModel({
    super.page,
    super.limit,
    super.sort,
    super.search,
    super.category,
  });

  factory GetFoodsModel.fromJson(Map<String, dynamic> json) =>
      _$GetFoodsModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetFoodsModelToJson(this);

  // Helper method to convert to query parameters
  Map<String, dynamic> toQueryParams() {
    final params = <String, dynamic>{};

    if (page != null) params['page'] = page.toString();
    if (limit != null) params['limit'] = limit.toString();
    if (sort != null && sort!.isNotEmpty) params['sort'] = sort;
    if (search != null && search!.isNotEmpty) params['search'] = search;
    if (category != null && category!.isNotEmpty) params['category'] = category;

    return params;
  }
}