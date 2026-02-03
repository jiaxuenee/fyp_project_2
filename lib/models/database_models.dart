//
//
// class User {
//   final String id;
//   final String email;
//   final String? username;
//   final String? profileImage;
//   final DateTime createdAt;
//
//   User({
//     required this.id,
//     required this.email,
//     this.username,
//     this.profileImage,
//     required this.createdAt,
//   });
//
//   factory User.fromJson(Map<String, dynamic> json) => User(
//     id: json['id'] ?? '',
//     email: json['email'] ?? '',
//     username: json['username'],
//     profileImage: json['profile_image'],
//     createdAt: DateTime.parse(json['created_at'] ?? DateTime.now().toIso8601String()),
//   );
//
//   Map<String, dynamic> toJson() => {
//     'id': id,
//     'email': email,
//     'username': username,
//     'profile_image': profileImage,
//     'created_at': createdAt.toIso8601String(),
//   };
// }
//
// class Recipe {
//   final String id;
//   final String userId;
//   final String title;
//   final String? imageUrl;
//   final String description;
//   final String ingredients;
//   final String instructions;
//   final int cookTime;
//   final String? dietaryType;
//   final String category;
//   final int totalViews;
//   final DateTime createdAt;
//
//   Recipe({
//     required this.id,
//     required this.userId,
//     required this.title,
//     this.imageUrl,
//     required this.description,
//     required this.ingredients,
//     required this.instructions,
//     required this.cookTime,
//     this.dietaryType,
//     required this.category,
//     required this.totalViews,
//     required this.createdAt,
//   });
//
//   factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
//     id: json['id'] ?? '',
//     userId: json['user_id'] ?? '',
//     title: json['title'] ?? '',
//     imageUrl: json['image_url'],
//     description: json['description'] ?? '',
//     ingredients: json['ingredients'] ?? '',
//     instructions: json['instructions'] ?? '',
//     cookTime: json['cook_time'] ?? 0,
//     dietaryType: json['dietary_type'],
//     category: json['category'] ?? '',
//     totalViews: json['total_views'] ?? 0,
//     createdAt: DateTime.parse(json['created_at'] ?? DateTime.now().toIso8601String()),
//   );
//
//   Map<String, dynamic> toJson() => {
//     'id': id,
//     'user_id': userId,
//     'title': title,
//     'image_url': imageUrl,
//     'description': description,
//     'ingredients': ingredients,
//     'instructions': instructions,
//     'cook_time': cookTime,
//     'dietary_type': dietaryType,
//     'category': category,
//     'total_views': totalViews,
//     'created_at': createdAt.toIso8601String(),
//   };
// }
//
// class Video {
//   final String id;
//   final String userId;
//   final String title;
//   final String videoUrl;
//   final String status;
//   final String contentType;
//   final DateTime createdAt;
//
//   Video({
//     required this.id,
//     required this.userId,
//     required this.title,
//     required this.videoUrl,
//     required this.status,
//     required this.contentType,
//     required this.createdAt,
//   });
//
//   factory Video.fromJson(Map<String, dynamic> json) => Video(
//     id: json['id'] ?? '',
//     userId: json['user_id'] ?? '',
//     title: json['title'] ?? '',
//     videoUrl: json['video_url'] ?? '',
//     status: json['status'] ?? 'pending',
//     contentType: json['content_type'] ?? '',
//     createdAt: DateTime.parse(json['created_at'] ?? DateTime.now().toIso8601String()),
//   );
//
//   Map<String, dynamic> toJson() => {
//     'id': id,
//     'user_id': userId,
//     'title': title,
//     'video_url': videoUrl,
//     'status': status,
//     'content_type': contentType,
//     'created_at': createdAt.toIso8601String(),
//   };
// }
//
// class Feedback {
//   final String id;
//   final String userId;
//   final String message;
//   final String status;
//   final String? adminReply;
//   final DateTime createdAt;
//
//   Feedback({
//     required this.id,
//     required this.userId,
//     required this.message,
//     required this.status,
//     this.adminReply,
//     required this.createdAt,
//   });
//
//   factory Feedback.fromJson(Map<String, dynamic> json) => Feedback(
//     id: json['id'] ?? '',
//     userId: json['user_id'] ?? '',
//     message: json['message'] ?? '',
//     status: json['status'] ?? 'Pending',
//     adminReply: json['admin_reply'],
//     createdAt: DateTime.parse(json['created_at'] ?? DateTime.now().toIso8601String()),
//   );
//
//   Map<String, dynamic> toJson() => {
//     'id': id,
//     'user_id': userId,
//     'message': message,
//     'status': status,
//     'admin_reply': adminReply,
//     'created_at': createdAt.toIso8601String(),
//   };
// }
//
// class Follow {
//   final String id;
//   final String followerId;
//   final String followingId;
//   final DateTime createdAt;
//
//   Follow({
//     required this.id,
//     required this.followerId,
//     required this.followingId,
//     required this.createdAt,
//   });
//
//   factory Follow.fromJson(Map<String, dynamic> json) => Follow(
//     id: json['id'] ?? '',
//     followerId: json['follower_id'] ?? '',
//     followingId: json['following_id'] ?? '',
//     createdAt: DateTime.parse(json['created_at'] ?? DateTime.now().toIso8601String()),
//   );
//
//   Map<String, dynamic> toJson() => {
//     'id': id,
//     'follower_id': followerId,
//     'following_id': followingId,
//     'created_at': createdAt.toIso8601String(),
//   };
// }
//
// class RecipeView {
//   final String id;
//   final String userId;
//   final String recipeId;
//   final DateTime viewedAt;
//
//   RecipeView({
//     required this.id,
//     required this.userId,
//     required this.recipeId,
//     required this.viewedAt,
//   });
//
//   factory RecipeView.fromJson(Map<String, dynamic> json) => RecipeView(
//     id: json['id'] ?? '',
//     userId: json['user_id'] ?? '',
//     recipeId: json['recipe_id'] ?? '',
//     viewedAt: DateTime.parse(json['viewed_at'] ?? DateTime.now().toIso8601String()),
//   );
//
//   Map<String, dynamic> toJson() => {
//     'id': id,
//     'user_id': userId,
//     'recipe_id': recipeId,
//     'viewed_at': viewedAt.toIso8601String(),
//   };
// }
//
// class Like {
//   final String id;
//   final String userId;
//   final String contentId;
//   final String contentType; // 'recipe' | 'video'
//   final DateTime createdAt;
//
//   Like({
//     required this.id,
//     required this.userId,
//     required this.contentId,
//     required this.contentType,
//     required this.createdAt,
//   });
//
//   factory Like.fromJson(Map<String, dynamic> json) => Like(
//     id: json['id'] ?? '',
//     userId: json['user_id'] ?? '',
//     contentId: json['content_id'] ?? '',
//     contentType: json['content_type'] ?? '',
//     createdAt: DateTime.parse(json['created_at'] ?? DateTime.now().toIso8601String()),
//   );
//
//   Map<String, dynamic> toJson() => {
//     'id': id,
//     'user_id': userId,
//     'content_id': contentId,
//     'content_type': contentType,
//     'created_at': createdAt.toIso8601String(),
//   };
// }
//
// class Comment {
//   final String id;
//   final String userId;
//   final String contentId;
//   final String contentType; // 'recipe' | 'video'
//   final String content;
//   final DateTime createdAt;
//
//   Comment({
//     required this.id,
//     required this.userId,
//     required this.contentId,
//     required this.contentType,
//     required this.content,
//     required this.createdAt,
//   });
//
//   factory Comment.fromJson(Map<String, dynamic> json) => Comment(
//     id: json['id'] ?? '',
//     userId: json['user_id'] ?? '',
//     contentId: json['content_id'] ?? '',
//     contentType: json['content_type'] ?? '',
//     content: json['content'] ?? '',
//     createdAt: DateTime.parse(json['created_at'] ?? DateTime.now().toIso8601String()),
//   );
//
//   Map<String, dynamic> toJson() => {
//     'id': id,
//     'user_id': userId,
//     'content_id': contentId,
//     'content_type': contentType,
//     'content': content,
//     'created_at': createdAt.toIso8601String(),
//   };
// }
//
// class Category {
//   final String id;
//   final String name;
//
//   Category({required this.id, required this.name});
//
//   factory Category.fromJson(Map<String, dynamic> json) => Category(
//     id: json['id'] ?? '',
//     name: json['name'] ?? '',
//   );
//
//   Map<String, dynamic> toJson() => {
//     'id': id,
//     'name': name,
//   };
// }
