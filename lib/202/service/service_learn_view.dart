import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/service/post_model.dart';
import 'package:flutter_full_learn/202/service/post_service.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({super.key});

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  List<PostModel>? _items;
  String? name;
  bool _isLoading = false;
  late final Dio _dio;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';

  // TEST edilebilir kod başladı
  late final IPostService _postService;
  @override
  void initState() {
    super.initState();
    _postService = PostService();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
    name = 'Gurkan';
    fetchPostItemsAdvance();
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchPostItemsAdvance() async {
    _changeLoading();
    _items = await _postService.fetchPostItemsAdvance();
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name ?? ''),
          actions: [_isLoading ? Center(child: CircularProgressIndicator.adaptive()) : SizedBox.shrink()],
        ),
        body: _items == null
            ? Placeholder()
            : ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10),
                itemCount: _items?.length ?? 0,
                itemBuilder: (context, index) {
                  return _PostCard(
                    model: _items?[index],
                  );
                },
              ));
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    required PostModel? model,
  })  : _model = model,
        super(key: key);

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(_model?.title ?? ''),
        subtitle: Text(_model?.body ?? ''),
      ),
    );
  }
}
