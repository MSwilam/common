import 'package:common/models/notification.dart';
import 'package:common/services/httpCommon.dart';

class NotificationService {
//Get List Notifications
  Future<dynamic> getNotification() async {
    try {
      final body = await getHttp('Notification/GetNotification');
      return body.map<Notification>(Notification.fromJson).toList();
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

//Save List Notifications
  Future<dynamic> saveNotification(var bodyHeader) async {
    try {
      final body =
          await postHttp('Notification/CreateNotification', body: bodyHeader);
      return body;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

//Update List Notifications
  Future<dynamic> updateNotification(var bodyHeader) async {
    try {
      final body =
          await postHttp('Notification/UpdateNotification', body: bodyHeader);
      return body;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

//Delete List Notifications
  Future<dynamic> removeNotification(id) async {
    try {
      final body = await deleteLinkHttp('Notification/DeleteNotification', id);
      return body;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  //Get List NotificationTempletes
  Future<dynamic> getNotificationTemplete() async {
    try {
      final body =
          await getHttp('NotificationTemplete/GetNotificationTemplete');
      return body
          .map<NotificationTemplete>(NotificationTemplete.fromJson)
          .toList();
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

//Save List NotificationTempletes
  Future<dynamic> saveNotificationTemplete(var bodyHeader) async {
    try {
      final body = await postHttp(
          'NotificationTemplete/CreateNotificationTemplete',
          body: bodyHeader);
      return body;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

//Update List NotificationTempletes
  Future<dynamic> updateNotificationTemplete(var bodyHeader) async {
    try {
      final body = await postHttp(
          'NotificationTemplete/UpdateNotificationTemplete',
          body: bodyHeader);
      return body;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

//Delete List NotificationTempletes
  Future<dynamic> removeNotificationTemplete(id) async {
    try {
      final body = await deleteLinkHttp(
          'NotificationTemplete/DeleteNotificationTemplete', id);
      return body;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  //Get List NotificationTypes
  Future<dynamic> getNotificationType() async {
    try {
      final body = await getHttp('NotificationType/GetNotificationType');
      return body.map<NotificationType>(NotificationType.fromJson).toList();
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

//Save List NotificationTypes
  Future<dynamic> saveNotificationType(var bodyHeader) async {
    try {
      final body = await postHttp('NotificationType/CreateNotificationType',
          body: bodyHeader);
      return body;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

//Update List NotificationTypes
  Future<dynamic> updateNotificationType(var bodyHeader) async {
    try {
      final body = await postHttp('NotificationType/UpdateNotificationType',
          body: bodyHeader);
      return body;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

//Delete List NotificationTypes
  Future<dynamic> removeNotificationType(id) async {
    try {
      final body =
          await deleteLinkHttp('NotificationType/DeleteNotificationType', id);
      return body;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  //Get List NotificationModuleUpdates
  Future<dynamic> getNotificationModuleUpdate() async {
    try {
      final body =
          await getHttp('NotificationModuleUpdate/GetNotificationModuleUpdate');
      return body
          .map<NotificationModuleUpdate>(NotificationModuleUpdate.fromJson)
          .toList();
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

//Save List NotificationModuleUpdates
  Future<dynamic> saveNotificationModuleUpdate(var bodyHeader) async {
    try {
      final body = await postHttp(
          'NotificationModuleUpdate/CreateNotificationModuleUpdate',
          body: bodyHeader);
      return body;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

//Update List NotificationModuleUpdates
  Future<dynamic> updateNotificationModuleUpdate(var bodyHeader) async {
    try {
      final body = await postHttp(
          'NotificationModuleUpdate/UpdateNotificationModuleUpdate',
          body: bodyHeader);
      return body;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

//Delete List NotificationModuleUpdates
  Future<dynamic> removeNotificationModuleUpdate(id) async {
    try {
      final body = await deleteLinkHttp(
          'NotificationModuleUpdate/DeleteNotificationModuleUpdate', id);
      return body;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
