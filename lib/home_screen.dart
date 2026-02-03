import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3CC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF3CC),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Kitchen Buddy',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),
      ),
      body: Column(
        children: [
          _buildSearchBar(),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.orange,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: const [
              Tab(text: 'Following'),
              Tab(text: 'Explore'),
              Tab(text: 'Popular'),
              Tab(text: 'Video'),
              Tab(text: 'Desserts'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _followingTab(),
                _exploreTab(),
                _popularTab(),
                _videoTab(),
                _dessertTab(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search recipe or tutorials',
          prefixIcon: const Icon(Icons.search),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Widget _followingTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text('Following creators',
            style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        _recipeCard('Healthy Big Breakfast', 'Like 3011  ·  Save 1276'),
        _recipeCard('Christmas Edition Matcha Cookie', 'Like 19283  ·  Save 9018'),
        _recipeCard('ThaiStyle Pineapple Fried Rice', 'Like 211  ·  Save 152'),
      ],
    );
  }

  Widget _exploreTab() {
    return const Center(child: Text('Explore content here'));
  }

  Widget _popularTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _rankCard('Ranked by views'),
        _rankCard('Ranked by likes'),
        _rankCard('Ranked by followers'),
      ],
    );
  }

  Widget _videoTab() {
    return const Center(child: Text('Video tutorials'));
  }

  Widget _dessertTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _recipeCard('[No Oven Needed] Strawberry Mochi', 'Like 30261  ·  Save 12976'),
        _recipeCard('Easy Handmade Fresh Iced Lemon Tea', 'Like 31  ·  Save 12'),
        _recipeCard('Basque Burnt Cheesecake', 'Like 301  ·  Save 120'),
      ],
    );
  }

  Widget _recipeCard(String title, String subtitle) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 160,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(child: Icon(Icons.image, size: 40)),
            ),
            const SizedBox(height: 12),
            Text(title,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Text(subtitle, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }

  Widget _rankCard(String text) {
    return Container(
      height: 140,
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildBottomNav() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.local_fire_department), label: 'Calorie'),
        BottomNavigationBarItem(icon: Icon(Icons.add_circle, size: 36), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}
