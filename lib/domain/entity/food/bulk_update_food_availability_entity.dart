class BulkUpdateFoodAvailabilityEntity {
  final List<String> foodIds;
  final bool available;

  const BulkUpdateFoodAvailabilityEntity({
    required this.foodIds,
    required this.available,
  });
}