import 'package:infinite_list_app/posts/models/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Post', () {
    test('supports value comparison', () {
      expect(
        const Post(id: 1, title: 'post title', body: 'post body'),
        const Post(id: 1, title: 'post title', body: 'post body'),
      );
    });
  });
}
