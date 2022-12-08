// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';
import 'package:todos_api/todos_api.dart';

class TestTodosApi extends TodosApi {
  TestTodosApi() : super();

  @override
  dynamic noSuchMethod(Invocation invocation) {
    return super.noSuchMethod(invocation);
  }
}

void main() {
  group('TodosApi', () {
    test('can be instantiated', () {
      expect(TestTodosApi.new, returnsNormally);
    });
  });
}
