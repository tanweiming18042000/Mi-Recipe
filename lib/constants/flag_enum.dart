/// Common constants used throughout the app.
///
/// `FlagEnum` provides a simple string-backed enum for flags that are stored
/// as single characters (e.g. "Y"/"N").

enum FlagEnum {
  TRUE('Y'),
  FALSE('N');

  const FlagEnum(this.value);

  /// The string representation used in storage/locale values.
  final String value;
}
