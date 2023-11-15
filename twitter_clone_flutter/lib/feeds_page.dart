import 'package:twitter_clone_client/twitter_clone_client.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class FeedsPage extends StatefulWidget {
  const FeedsPage({super.key});

  @override
  State<FeedsPage> createState() => _FeedsPageState();
}

class _FeedsPageState extends State<FeedsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Image.asset(
              'assets/x-logo.png',
              height: 50,
            ),
            bottom: const PreferredSize(preferredSize:Size.fromHeight(50), child: TabBar(
              tabs: [
                Tab(text: 'For You'),
                Tab(text: 'Following'),
              ],),
            )
          ),
          body: const TabBarView(children: [
            Center(child: Text("Tweets for you."),
            ),
            Center(child: Text("Tweets by who you follow."),)
          ],)),
    );
  }
}
