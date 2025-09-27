// lib/HomePage.dart

import 'package:coba2/LoginPage.dart';
import 'package:coba2/screen/detail_page.dart';
import 'package:coba2/screen/game_store.dart';
// 1. Pastikan Anda mengimpor file halaman profil yang baru dibuat
import 'package:coba2/screen/profil.dart'; // <-- PERUBAHAN DI SINI
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String username;
  HomePage({super.key, required this.username});

  // Daftar data game dummy (tetap sama)
  final List<GameStore> gameList = [
    GameStore(
      name: 'Stray',
      releaseDate: '19 Jul, 2022',
      tags: ['Cats', 'Adventure', 'Cyberpunk', 'Atmospheric'],
      price: 'Rp 149.999',
      about:
          'Stray is a third-person cat adventure game set amidst the detailed, neon-lit alleys of a decaying cybercity and the murky environments of its seedy underbelly. Roam surroundings high and low, defend against unforeseen threats and solve the mysteries of this unwelcoming place inhabited by curious droids and dangerous creatures.',
      imageUrls: [
        'https://cdn.akamai.steamstatic.com/steam/apps/1332010/header.jpg',
        'https://cdn.akamai.steamstatic.com/steam/apps/1332010/ss_88e209a90c2039fa76bca6fa08c641365be38d50.jpg',
        'https://cdn.akamai.steamstatic.com/steam/apps/1332010/ss_2221af260c64362fdc835a9dca65f6f1d1192b25.jpg',
      ],
      reviewAverage: '97%',
      reviewCount: '73312',
      linkStore: 'https://store.steampowered.com/app/1332010/Stray/',
    ),
    GameStore(
      name: 'Goat Simulator',
      releaseDate: '2 Apr, 2014',
      tags: ['Simulation', 'Funny', 'Comedy', 'Open World'],
      price: 'Rp 69.999',
      about:
          'Goat Simulator is the latest in goat simulation technology, bringing next-gen goat simulation to YOU. You no longer have to fantasize about being a goat, your dreams have finally come true! WASD to write history.',
      imageUrls: [
        'https://cdn.akamai.steamstatic.com/steam/apps/265930/header.jpg',
        'https://cdn.akamai.steamstatic.com/steam/apps/265930/ss_0f0e9008ba21b5eed106147cdc355d3c7bad683a.jpg',
        'https://cdn.akamai.steamstatic.com/steam/apps/265930/ss_25b9da1037082d6a7c3c12e2f3a7707c5c2e721e.jpg',
      ],
      reviewAverage: '89%',
      reviewCount: '45522',
      linkStore: 'https://store.steampowered.com/app/265930/Goat_Simulator/',
    ),
    GameStore(
      name: 'ACE COMBAT™ 7: SKIES UNKNOWN',
      releaseDate: '1 Feb, 2019',
      tags: ['Flight', 'Military', 'Jet', 'Shooter'],
      price: 'Rp 550.000',
      about:
          'Become an ace pilot and soar through photorealistic skies with full 360 degree movement; down enemy aircraft and experience the thrill of engaging in realistic sorties! Aerial combat has never looked or felt better!',
      imageUrls: [
        'https://cdn.akamai.steamstatic.com/steam/apps/502500/header.jpg',
        'https://cdn.akamai.steamstatic.com/steam/apps/502500/ss_2240172f5e842938e1c32adc6ad1451d3ddad747.jpg',
        'https://cdn.akamai.steamstatic.com/steam/apps/502500/ss_8c540a07244c80211c0218e272abce97073332d7.jpg',
      ],
      reviewAverage: '86%',
      reviewCount: '22468',
      linkStore:
          'https://store.steampowered.com/app/502500/ACE_COMBAT_7_SKIES_UNKNOWN/',
    ),
    GameStore(
      name: 'Dota 2',
      releaseDate: '10 Jul, 2013',
      tags: ['Free to Play', 'MOBA', 'Strategy', 'Multiplayer'],
      price: 'Free to Play',
      about:
          'The most-played game on Steam.Every day, millions of players worldwide enter battle as one of over a hundred Dota heroes. And no matter if it is their 10th hour of play or 1,000th, there is always something new to discover. With regular updates that ensure a constant evolution of gameplay, features, and heroes, Dota 2 has truly taken on a life of its own.',
      imageUrls: [
        'https://cdn.akamai.steamstatic.com/steam/apps/570/header.jpg',
        'https://cdn.akamai.steamstatic.com/steam/apps/570/ss_7ab506679d42bfc0c0e40639887176494e0466d9.jpg',
        'https://cdn.akamai.steamstatic.com/steam/apps/570/ss_1f3b5f5ccf8b159294914c3fe028128a787304b6.jpg',
      ],
      reviewAverage: '82%',
      reviewCount: '1820420',
      linkStore: 'https://store.steampowered.com/app/570/Dota_2/',
    ),
    GameStore(
      name: 'Phasmophobia',
      releaseDate: '19 Sep, 2020',
      tags: ['Horror', 'Online Co-Op', 'VR', 'Multiplayer'],
      price: 'Rp 89.999',
      about:
          'Phasmophobia is a 4 player online co-op psychological horror where you and your team members of paranormal investigators will enter haunted locations filled with paranormal activity and gather as much evidence of the paranormal as you can. You will use your ghost hunting equipment to search for and record evidence of whatever ghost is haunting the location to sell onto a ghost removal team.',
      imageUrls: [
        'https://cdn.akamai.steamstatic.com/steam/apps/739630/header.jpg',
        'https://cdn.akamai.steamstatic.com/steam/apps/739630/ss_91bca60a51dce60d680a8fb4efcdecf740b3a3d1.jpg',
        'https://cdn.akamai.steamstatic.com/steam/apps/739630/ss_13dde9450dd7c7f70b31ccbaa16ac1f5d3822289.jpg',
      ],
      reviewAverage: '97%',
      reviewCount: '388234',
      linkStore: 'https://store.steampowered.com/app/739630/Phasmophobia/',
    ),
    GameStore(
      name: 'Beat Saber',
      releaseDate: '22 May, 2019',
      tags: ['VR', 'Rhythm', 'Music', 'Indie'],
      price: 'Rp 139.999',
      about:
          'Beat Saber is an immersive rhythm experience you have never seen before! Enjoy tons of handcrafted levels and swing your way through the pulsing music beats, surrounded by a futuristic world. Use your sabers to slash the beats as they come flying at you – every beat indicates which saber you need to use and the direction you need to match. With Beat Saber you become a dancing superhero!',
      imageUrls: [
        'https://cdn.akamai.steamstatic.com/steam/apps/620980/header.jpg',
        'https://cdn.akamai.steamstatic.com/steam/apps/620980/ss_1881ae4f153faf0d1ccecca60fbdac5b43ad57eb.jpg',
        'https://cdn.akamai.steamstatic.com/steam/apps/620980/ss_114dc9a9f27666b2d56801ba49a1db8fa202b6ee.jpg',
      ],
      reviewAverage: '96%',
      reviewCount: '59283',
      linkStore: 'https://store.steampowered.com/app/620980/Beat_Saber/',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Game Store",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.5,
        actions: [
          IconButton(
            onPressed: () {
              // 2. Mengganti "Profil()" dengan "ProfilePage()"
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ), // <-- PERUBAHAN DI SINI
              );
            },
            icon: Icon(Icons.person_outline),
          ),
          IconButton(
            onPressed: () => _logout(context),
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Text(
                'Selamat Datang, $username!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildSectionHeader("Game Unggulan"),
            _buildFeaturedGameList(context),
            _buildSectionHeader("Daftar Game"),
            _buildGameGrid(context),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 12.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildFeaturedGameList(BuildContext context) {
    return Container(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        itemCount: gameList.length,
        itemBuilder: (context, index) {
          final game = gameList[index];
          return _buildFeaturedGameCard(context, game);
        },
      ),
    );
  }

  Widget _buildFeaturedGameCard(BuildContext context, GameStore game) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage(game: game)),
        );
      },
      child: Container(
        width: 300,
        margin: EdgeInsets.only(right: 16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Hero(
                tag: 'featured_${game.name}',
                child: Image.network(game.imageUrls[0], fit: BoxFit.cover),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: [Colors.black.withOpacity(0.8), Colors.transparent],
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Text(
                  game.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    shadows: [Shadow(blurRadius: 10.0, color: Colors.black)],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGameGrid(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        childAspectRatio: 0.65,
      ),
      itemCount: gameList.length,
      itemBuilder: (context, index) {
        final game = gameList[index];
        return _buildGameCard(context, game);
      },
    );
  }

  Widget _buildGameCard(BuildContext context, GameStore game) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage(game: game)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Hero(
                  tag: game.name,
                  child: Image.network(
                    game.imageUrls[0],
                    fit: BoxFit.cover,
                    width: double.infinity,
                    errorBuilder: (context, error, stackTrace) => Center(
                      child: Icon(
                        Icons.image_not_supported,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        game.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Wrap(
                        spacing: 4.0,
                        runSpacing: 4.0,
                        children: game.tags
                            .take(2)
                            .map(
                              (tag) => Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 6.0,
                                  vertical: 2.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Text(
                                  tag,
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      Text(
                        game.price,
                        style: TextStyle(
                          color: Colors.green.shade700,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _logout(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
      (route) => false,
    );
  }
}
