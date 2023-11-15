import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

Future<void> createPost (Session session, Post post) async {
  await Post.insert(session, post);
}

Future<void> deletePost (Session session, Post post) async {
  await Post.deleteRow(session, post);
}


// INSERT INTO users(id, email, username, handle, bio, "profilePicUrl", "bgPicUrl", "followerCount", "followingCount")
// VALUES (2, 'tugberk2@gmail.com', 'tugberk2', 'tugberk2', 'flutter dev2', 'https://source.unsplash.com/random/?people', 'https://source.unsplash.com/random/?fruit', 0, 0);
// (3, 'tugberk3@gmail.com', 'tugberk3', 'tugberk3', 'flutter dev3', 'https://source.unsplash.com/random/?people', 'https://source.unsplash.com/random/?fruit', 0, 0),
// (4, 'tugberk4gmail.com', 'tugberk4', 'tugberk4', 'flutter dev4', 'https://source.unsplash.com/random/?people', 'https://source.unsplash.com/random/?fruit', 0, 0),
//  (5, 'tugberk5@gmail.com', 'tugberk5', 'tugberk5', 'flutter dev5', 'https://source.unsplash.com/random/?people', 'https://source.unsplash.com/random/?fruit', 0, 0),
