import '../screens/Search/search_screen.dart';
import 'package:flutter/material.dart';
import '../screens/all_chats/all_chats_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/profile/profile_screen.dart';

class BaseProvider extends ChangeNotifier {
  int _currentPage = 0;

  int get currentPage => _currentPage;

  Widget get getPage {
    switch (_currentPage) { 
      case 0:
        return HomeScreen();
      case 1:
        return SearchScreen();
      case 2:
        return AllChatsScreen();
      case 3:
        return ProfileScreen();
      default:
        return HomeScreen();
    }
  }

  void changePage(int newPage) {
    _currentPage = newPage;
    notifyListeners();
  }
}
