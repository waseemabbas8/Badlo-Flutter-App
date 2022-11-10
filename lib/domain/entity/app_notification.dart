class AppNotification {
  final String title;
  final String body;
  final int type;

  AppNotification(this.title, this.body, this.type);

  NotificationType getNotificationType() => NotificationType.getByValue(type);
}

enum NotificationType {
  warning,
  success,
  info,
  error;

  static NotificationType getByValue(int value) {
    switch (value) {
      case 1:
        return NotificationType.warning;
      case 2:
        return NotificationType.success;
      case 3:
        return NotificationType.info;
      case 4:
        return NotificationType.error;
    }
    return NotificationType.warning;
  }
}
