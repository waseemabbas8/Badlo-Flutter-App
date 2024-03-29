extension EmailValidator on String? {
  bool isValidEmail() {
    return isNullOrEmpty()
        ? false
        : RegExp(
                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
            .hasMatch(this!);
  }
}

extension StringValidator on String? {
  bool isNotNullOrEmpty() => (this == null || this?.isEmpty == true) ? false : true;

  bool isNullOrEmpty() => (this == null || this?.isEmpty == true) ? true : false;
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
