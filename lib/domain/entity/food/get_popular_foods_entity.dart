import 'package:equatable/equatable.dart';

class GetPopularFoodsEntity extends Equatable {
  final int? page;
  final int? limit;

  const GetPopularFoodsEntity({
    this.page,
    this.limit,
  });

  @override
  List<Object?> get props {
    return [
      page,
      limit,
    ];
  }
}