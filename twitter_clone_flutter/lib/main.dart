import 'package:twitter_clone_client/twitter_clone_client.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:twitter_clone_flutter/feeds_page.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Serverpod Demo',
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const FeedsPage(),
        //'/login': (BuildContext context) => const LoginPage(),
      }
    );
  }
}

/*
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  List<Post>? _posts;
  Exception? _connectionException;

  void _connectionFailed(dynamic exception) {
    setState(() {
      _posts = null;
      _connectionException = exception;
    });
  }

  Future<void> _loadPosts() async {
    try {
      final posts = await client.post.getPosts();
      setState(() {
        _posts = posts;
      });
    } catch (e) {
      _connectionFailed(e);
    }
  }

  Future<void> _createPost(Post post) async{
    try{
      await client.post.createPost(post);
      await _loadPosts(); 
    }
    catch(e){
      _connectionFailed(e);
    }
  }

  void initState() {
    super.initState();
    _loadPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      body: _posts == null
          ? Container()
          : ListView.builder(
              itemCount: _posts!.length,
              itemBuilder: ((context, index) {
                return ListTile(
                  title: Text(_posts![index].caption),
                );
              }),
            ),
          floatingActionButton: _posts == null
      ? null
      : FloatingActionButton(
          onPressed: () {
            showPostDialog(
              context: context,
              onSaved: (text) {
                var post = Post(
                  caption: text,
                  type: PostType.text,
                  audience: PostAudienceSettings.everyone,
                  reply: PostReplySettings.everyone,
                  userId: 6,
                  username: "tugberk6",
                  imgUrl: "https://source.unsplash.com/random/?city,night",
                  profilePicUrl: "https://source.unsplash.com/random/?people",
                );
                _posts!.add(post);

                _createPost(post);
              },
            );
          },
          child: const Icon(Icons.add),
        ),
    );
  }
}
*/