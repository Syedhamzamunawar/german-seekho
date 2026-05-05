import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProgressProvider extends ChangeNotifier {
  // Completed topics store karne ke liye
  Set<int> _completedTopics = {};
  Map<int, int> _topicScores = {};

  Set<int> get completedTopics => _completedTopics;
  Map<int, int> get topicScores => _topicScores;

  // Topic complete hua ya nahi
  bool isTopicCompleted(int topicIndex) {
    return _completedTopics.contains(topicIndex);
  }

  // Topic unlock hua ya nahi
  bool isTopicUnlocked(int topicIndex) {
    if (topicIndex == 0) return true; // pehla topic hamesha unlocked
    return _completedTopics.contains(topicIndex - 1);
  }

  // Topic ka score
  int getTopicScore(int topicIndex) {
    return _topicScores[topicIndex] ?? 0;
  }

  // Topic complete karo
  Future<void> completeTopicTest(int topicIndex, int score) async {
    if (score >= 7) {
      // 7/10 pass criteria
      _completedTopics.add(topicIndex);
      _topicScores[topicIndex] = score;
      await _saveProgress();
      notifyListeners();
    }
  }

  // SharedPreferences se progress load karo
  Future<void> loadProgress() async {
    final prefs = await SharedPreferences.getInstance();
    final completedList = prefs.getStringList('completed_topics') ?? [];
    _completedTopics = completedList.map((e) => int.parse(e)).toSet();

    final scoreKeys = prefs.getKeys().where((k) => k.startsWith('score_'));
    for (final key in scoreKeys) {
      final index = int.parse(key.replaceFirst('score_', ''));
      _topicScores[index] = prefs.getInt(key) ?? 0;
    }
    notifyListeners();
  }

  // Progress save karo
  Future<void> _saveProgress() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(
      'completed_topics',
      _completedTopics.map((e) => e.toString()).toList(),
    );
    for (final entry in _topicScores.entries) {
      await prefs.setInt('score_${entry.key}', entry.value);
    }
  }

  // Progress reset karo
  Future<void> resetProgress() async {
    _completedTopics = {};
    _topicScores = {};
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    notifyListeners();
  }

  // Total progress percentage
  double get totalProgress {
    return _completedTopics.length / 22; // 22 A1 topics
  }

  // XP calculate karo
  int get totalXP {
    int xp = 0;
    for (final score in _topicScores.values) {
      xp += score * 10;
    }
    return xp;
  }
}