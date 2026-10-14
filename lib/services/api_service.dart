import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/post.dart';

class ApiService {
  final _client = Supabase.instance.client;

  Future<List<Post>> getPosts() async {
    final response = await _client.from('posts').select();
    return (response as List).map((json) => Post.fromJson(json)).toList();
  }

  Future<Post> getPost(int id) async {
    final response = await _client.from('posts').select().eq('id', id).single();
    return Post.fromJson(response);
  }

  Future<Post> createPost({
    required String title,
    required String body,
    required int userId,
  }) async {
    final response = await _client
        .from('posts')
        .insert({'title': title, 'body': body, 'userId': userId})
        .select()
        .single();
    return Post.fromJson(response);
  }

  Future<Post> updatePost({
    required int id,
    required String title,
    required String body,
    required int userId,
  }) async {
    final response = await _client
        .from('posts')
        .update({'title': title, 'body': body, 'userId': userId})
        .eq('id', id)
        .select()
        .single();
    return Post.fromJson(response);
  }

  Future<void> deletePost(int id) async {
    await _client.from('posts').delete().eq('id', id);
  }
}
