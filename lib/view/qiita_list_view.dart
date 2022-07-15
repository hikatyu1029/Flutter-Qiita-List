import 'dart:ffi';

import 'package:arukatsu/view_model/qiita_list_view_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/article.dart';
import 'article_web_view.dart';

class QiitaListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const QiitaListViewBody();
  }
}

class QiitaListViewBody extends ConsumerWidget {
  const QiitaListViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final val = ref.watch(articleListProvider);
    return Scaffold(
      appBar: AppBar(title: const Text("記事一覧")),
      body: Center(
        child: val.when(
            data: (list) => list.isNotEmpty
                ? ListView(
                    children: list
                        .map((e) => ListTile(
                              title: Text(e.title),
                              subtitle: Text(e.user.id),
                              leading: CircleAvatar(
                                  backgroundImage: CachedNetworkImageProvider(
                                      e.user.profileImageUrl.toString())),
                              onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ArticleWebView(article: e)))
                              },
                            ))
                        .toList())
                : const Text('List is empty.'),
            error: (error, _) => Text(error.toString()),
            loading: () => const CircularProgressIndicator()),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () => ref.refresh(articleListProvider),
      ),
    );
  }
}
