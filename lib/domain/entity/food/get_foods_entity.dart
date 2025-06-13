import 'package:equatable/equatable.dart';

class GetFoodsEntity extends Equatable {
  final int? page;
  final int? limit;
  final String? sort;
  final String? search;
  final String? category;

  const GetFoodsEntity({
    this.page,
    this.limit,
    this.sort,
    this.search,
    this.category,
  });

  @override
  List<Object?> get props {
    return [
      page,
      limit,
      sort,
      search,
      category,
    ];
  }
}