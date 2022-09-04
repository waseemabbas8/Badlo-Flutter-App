mixin DateProvider {
  String getCurrentDate() {
    final dateTime = DateTime.now();
    return "${dateTime.day}-${dateTime.month}-${dateTime.year}";
  }
}
