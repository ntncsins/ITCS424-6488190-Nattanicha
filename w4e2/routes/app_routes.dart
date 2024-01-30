import 'package:flutter/material.dart';
import 'package:ntnc_s_application5/presentation/news_xd_screen/news_xd_screen.dart';
import 'package:ntnc_s_application5/presentation/story_container_screen/story_container_screen.dart';
import 'package:ntnc_s_application5/presentation/create_screen/create_screen.dart';
import 'package:ntnc_s_application5/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String newsXdScreen = '/news_xd_screen';

  static const String storyPage = '/story_page';

  static const String storyContainerScreen = '/story_container_screen';

  static const String myArticlePage = '/my_article_page';

  static const String createScreen = '/create_screen';

  static const String profilePage = '/profile_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    newsXdScreen: (context) => NewsXdScreen(),
    storyContainerScreen: (context) => StoryContainerScreen(),
    createScreen: (context) => CreateScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
