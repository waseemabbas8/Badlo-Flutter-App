import 'package:badlo/presentation/core/utils/extensions/strings_ext.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum MarketType {
  @JsonValue(1)
  swapping,
  @JsonValue(2)
  auction,
  @JsonValue(3)
  donation;

  @override
  String toString() => name.capitalize();
}
