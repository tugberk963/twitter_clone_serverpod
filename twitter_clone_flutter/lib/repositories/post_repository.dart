//For handleing crud operations.
import 'package:twitter_clone_client/twitter_clone_client.dart';

class PostRepository{
  final Client client;

  PostRepository({required this.client});

  Future<void> createPost(Post post) async {
    await client.post.createPost(post);
  }

  Future<void> deletePost(Post post) async {
    await client.post.deletePost(post);
  }

  Future<List<Post>> getPosts() async {
    return await client.post.getPosts();
  }
}