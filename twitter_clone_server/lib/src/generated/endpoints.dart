/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/example_endpoint.dart' as _i2;
import '../endpoints/post_endpoint.dart' as _i3;
import 'package:twitter_clone_server/src/generated/post.dart' as _i4;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'example': _i2.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'post': _i3.PostEndpoint()
        ..initialize(
          server,
          'post',
          null,
        ),
    };
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i2.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['post'] = _i1.EndpointConnector(
      name: 'post',
      endpoint: endpoints['post']!,
      methodConnectors: {
        'createPost': _i1.MethodConnector(
          name: 'createPost',
          params: {
            'post': _i1.ParameterDescription(
              name: 'post',
              type: _i1.getType<_i4.Post>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i3.PostEndpoint).createPost(
            session,
            params['post'],
          ),
        ),
        'deletePost': _i1.MethodConnector(
          name: 'deletePost',
          params: {
            'post': _i1.ParameterDescription(
              name: 'post',
              type: _i1.getType<_i4.Post>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i3.PostEndpoint).deletePost(
            session,
            params['post'],
          ),
        ),
        'getPosts': _i1.MethodConnector(
          name: 'getPosts',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i3.PostEndpoint).getPosts(session),
        ),
      },
    );
  }
}
