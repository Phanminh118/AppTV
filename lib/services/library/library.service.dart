import 'package:app_tv/routers/application.dart';

class LibraryService {
  static Future<dynamic> getListBook(Map<String, dynamic> params) {
    return Application.api.get('http://api.tvclubuet.com/book');
  }

  static Future<dynamic> getListMember(Map<String, dynamic> params) {
    return Application.api.get('http://api.tvclubuet.com/user');
  }

  static Future<dynamic> createBook(Map<String, dynamic> params) {
    return Application.api
        .post('http://api.tvclubuet.com/book/create', params);
  }

}