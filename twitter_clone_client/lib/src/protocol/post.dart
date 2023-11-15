/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

class Post extends _i1.SerializableEntity {
  Post({
    this.id,
    required this.caption,
    required this.imgUrl,
    required this.type,
    required this.audience,
    required this.reply,
    required this.userId,
    required this.username,
    required this.profilePicUrl,
  });

  factory Post.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Post(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      caption: serializationManager
          .deserialize<String>(jsonSerialization['caption']),
      imgUrl:
          serializationManager.deserialize<String>(jsonSerialization['imgUrl']),
      type: serializationManager
          .deserialize<_i2.PostType>(jsonSerialization['type']),
      audience: serializationManager
          .deserialize<_i2.PostAudienceSettings>(jsonSerialization['audience']),
      reply: serializationManager
          .deserialize<_i2.PostReplySettings>(jsonSerialization['reply']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      username: serializationManager
          .deserialize<String>(jsonSerialization['username']),
      profilePicUrl: serializationManager
          .deserialize<String>(jsonSerialization['profilePicUrl']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String caption;

  String imgUrl;

  _i2.PostType type;

  _i2.PostAudienceSettings audience;

  _i2.PostReplySettings reply;

  int userId;

  String username;

  String profilePicUrl;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'caption': caption,
      'imgUrl': imgUrl,
      'type': type,
      'audience': audience,
      'reply': reply,
      'userId': userId,
      'username': username,
      'profilePicUrl': profilePicUrl,
    };
  }
}
