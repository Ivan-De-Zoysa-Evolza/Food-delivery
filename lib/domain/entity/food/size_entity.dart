import 'package:equatable/equatable.dart';

class SizeEntity extends Equatable {
  final String? name;
  final double? price;

  const SizeEntity({
    this.name,
    this.price,
  });

  @override
  List<Object?> get props => [name, price];
}