import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:common_github_search/common_github_search.dart';

class GithubClient {
  GithubClient({
    http.Client? httpClient,
    this.baseUrl = "https://api.github.com/search/repositories?q=",
  }) : _httpClient = httpClient ?? http.Client();

  final String baseUrl;
  final http.Client _httpClient;

  Future<SearchResult> search(String term) async {
    final response = await _httpClient.get(Uri.parse("$baseUrl$term"));
    final results = json.decode(response.body);

    if (response.statusCode == 200) {
      return SearchResult.fromJson(results);
    } else {
      throw SearchResultError.fromJson(results);
    }
  }
}
