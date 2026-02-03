import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  static final SupabaseClient _client = Supabase.instance.client;

  // =========================
  // AUTH
  // =========================
  static User? get currentUser => _client.auth.currentUser;

  // =========================
  // RECIPES CRUD
  // =========================

  // CREATE
  static Future<void> createRecipe({
    required String title,
    required String ingredients,
    required String steps,
    required int cookingTime,
    required String skillLevel,
  }) async {
    final user = currentUser;
    if (user == null) {
      throw Exception('User not logged in');
    }

    await _client.from('recipes').insert({
      'title': title,
      'ingredients': ingredients,
      'steps': steps,
      'cooking_time': cookingTime,
      'skill_level': skillLevel,
      'user_id': user.id,
    });
  }

  // READ (All recipes)
  static Future<List<dynamic>> getAllRecipes() async {
    final data = await _client
        .from('recipes')
        .select()
        .order('createdon', ascending: false);

    return data;
  }

  // READ (Popular recipes)
  static Future<List<dynamic>> getPopularRecipes() async {
    final data = await _client
        .from('recipes')
        .select()
        .order('total_likes', ascending: false)
        .limit(10);

    return data;
  }

  // UPDATE
  static Future<void> updateRecipeTitle({
    required int recipeId,
    required String newTitle,
  }) async {
    await _client
        .from('recipes')
        .update({'title': newTitle})
        .eq('id', recipeId);
  }

  // DELETE
  static Future<void> deleteRecipe(int recipeId) async {
    await _client.from('recipes').delete().eq('id', recipeId);
  }

  // =========================
  // LIKES
  // =========================
  static Future<void> likeRecipe(int recipeId) async {
    final user = currentUser;
    if (user == null) throw Exception('Not logged in');

    await _client.from('likes').insert({
      'user_id': user.id,
      'recipe_id': recipeId,
    });
  }

  static Future<void> unlikeRecipe(int recipeId) async {
    final user = currentUser;
    if (user == null) throw Exception('Not logged in');

    await _client
        .from('likes')
        .delete()
        .eq('user_id', user.id)
        .eq('recipe_id', recipeId);
  }

  // =========================
  // COMMENTS
  // =========================
  static Future<void> addComment({
    required int recipeId,
    required String content,
  }) async {
    final user = currentUser;
    if (user == null) throw Exception('Not logged in');

    await _client.from('comments').insert({
      'user_id': user.id,
      'recipe_id': recipeId,
      'content': content,
    });
  }

  static Future<List<dynamic>> getComments(int recipeId) async {
    final data = await _client
        .from('comments')
        .select()
        .eq('recipe_id', recipeId)
        .order('created_at');

    return data;
  }

  // =========================
  // SAVES (Bookmarks)
  // =========================
  static Future<void> saveRecipe(int recipeId) async {
    final user = currentUser;
    if (user == null) throw Exception('Not logged in');

    await _client.from('saves').insert({
      'user_id': user.id,
      'recipe_id': recipeId,
    });
  }

  static Future<void> unsaveRecipe(int recipeId) async {
    final user = currentUser;
    if (user == null) throw Exception('Not logged in');

    await _client
        .from('saves')
        .delete()
        .eq('user_id', user.id)
        .eq('recipe_id', recipeId);
  }

  // =========================
  // SEARCH HISTORY (UPSERT)
  // =========================
  static Future<void> saveSearchKeyword(String keyword) async {
    final user = currentUser;
    if (user == null) throw Exception('Not logged in');

    await _client.from('search_history').upsert({
      'user_id': user.id,
      'keyword': keyword,
      'searched_at': DateTime.now().toIso8601String(),
    }, onConflict: 'user_id,keyword');
  }
}
