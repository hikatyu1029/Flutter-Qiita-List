import 'package:arukatsu/repository/article_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/article.dart';
import '../model/user.dart';

final articleRepositoryProvider = Provider((ref) => ArticleRepository());

final articleListProvider = FutureProvider<List<Article>>((ref) async {
  final articleRepository = ref.read(articleRepositoryProvider);
  return articleRepository.fetchList();
});
