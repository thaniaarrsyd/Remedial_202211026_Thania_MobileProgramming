// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'quiz_model.dart';

class ThaniaDashboard extends StatefulWidget {
  const ThaniaDashboard({super.key});

  @override
  State<ThaniaDashboard> createState() => _ThaniaDashboardState();
}

class _ThaniaDashboardState extends State<ThaniaDashboard> {
  final PageController _pageController = PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF4A148C), Color(0xFFAD1457)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              _buildHeader(),
              const SizedBox(height: 30),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: ThaniaData.items.length,
                  itemBuilder: (context, index) {
                    return _buildAnimatedCard(index);
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Geser untuk melihat jawaban selanjutnya →",
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ThaniaData.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${ThaniaData.nim} • ${ThaniaData.kelas}",
                style: const TextStyle(color: Colors.white70),
              ),
            ],
          ),
          const CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white24,
            child: Icon(Icons.star, color: Colors.amber),
          ),
        ],
      ),
    );
  }

  Widget _buildAnimatedCard(int index) {
    var item = ThaniaData.items[index];
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.15),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.white30),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(item.icon, style: const TextStyle(fontSize: 60)),
              const SizedBox(height: 20),
              Text(
                "Soal No. ${index + 1}",
                style: const TextStyle(
                  color: Colors.amberAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                item.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(color: Colors.white24, height: 30),
              Text(
                item.content,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
