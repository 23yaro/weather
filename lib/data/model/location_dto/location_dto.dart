import 'package:json_annotation/json_annotation.dart';

part 'location_dto.g.dart';

@JsonSerializable()
class LocationDTO {
  const LocationDTO({
    required this.latitude,
    required this.longitude,
  });

  final double latitude;
  final double longitude;

  factory LocationDTO.fromJson(Map<String, dynamic> json) =>
      _$LocationDTOFromJson(json);
}
