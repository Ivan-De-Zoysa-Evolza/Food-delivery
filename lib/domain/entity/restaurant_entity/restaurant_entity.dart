import 'package:equatable/equatable.dart';

class RestaurantEntity extends Equatable {
  final String? name;
  final String? description;
  final String? address;
  final String? phone;
  final String? email;
  final String? openingTime;
  final String? closingTime;
  final double? rating;
  final int? ratingCount;
  final int? avgPrepareTime;
  final double? deliveryCost;
  final bool? freeDelivery;
  final double? minOrderAmount;
  final List<String>? cuisine;
  final String? image;

  const RestaurantEntity({
    this.name,
    this.description,
    this.address,
    this.phone,
    this.email,
    this.openingTime,
    this.closingTime,
    this.rating,
    this.ratingCount,
    this.avgPrepareTime,
    this.deliveryCost,
    this.freeDelivery,
    this.minOrderAmount,
    this.cuisine,
    this.image,
  });

  @override
  List<Object?> get props {
    return [
      name,
      description,
      address,
      phone,
      email,
      openingTime,
      closingTime,
      rating,
      ratingCount,
      avgPrepareTime,
      deliveryCost,
      freeDelivery,
      minOrderAmount,
      cuisine,
      image,
    ];
  }
}