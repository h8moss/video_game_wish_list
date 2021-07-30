import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_game_wish_list/common/services/saved_deal_server.dart';

import 'app/home_page/home_page_builder.dart';
import 'common/services/api_deal_server.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<ApiDealServer>(
      create: (_) => ApiDealServer(),
      child: Provider<SavedDealServer>(
        create: (context) =>
            SavedDealServer(Provider.of<ApiDealServer>(context, listen: false)),
        child: MaterialApp(
          title: 'Video Game Deal Viewer',
          theme: ThemeData(
            primarySwatch: Colors.orange,
          ),
          home: HomePageBuilder(),
        ),
      ),
    );
  }
}
