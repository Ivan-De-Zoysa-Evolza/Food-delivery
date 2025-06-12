import 'package:equatable/equatable.dart';

class SearchRestaurantsEntity extends Equatable {
  final String? id;
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
  final bool? isActive;
  final bool? isOpen;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? page;
  final int? limit;
  final String? sort;
  final String? search;
  final double? minRating;
  final int? maxDeliveryTime;
  final bool? freeDeliveryFilter;
  final bool? isOpenFilter;
  final int? totalCount;
  final int? totalPages;

  const SearchRestaurantsEntity({
    this.id,
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
    this.isActive,
    this.isOpen,
    this.createdAt,
    this.updatedAt,
    this.page,
    this.limit,
    this.sort,
    this.search,
    this.minRating,
    this.maxDeliveryTime,
    this.freeDeliveryFilter,
    this.isOpenFilter,
    this.totalCount,
    this.totalPages,
  });

  @override
  List<Object?> get props {
    return [
      id,
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
      isActive,
      isOpen,
      createdAt,
      updatedAt,
      page,
      limit,
      sort,
      search,
      minRating,
      maxDeliveryTime,
      freeDeliveryFilter,
      isOpenFilter,
      totalCount,
      totalPages,
    ];
  }
}