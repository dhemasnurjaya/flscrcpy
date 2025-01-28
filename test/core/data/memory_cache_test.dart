import 'package:flscrcpy/core/data/local/cache.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockMap extends Mock implements Map<int, String> {}

void main() {
  late MockMap mockMap;
  late MemoryCache<int, String> memoryCache;

  setUp(() {
    mockMap = MockMap();
    memoryCache = MemoryCache(mapImpl: mockMap);
  });

  test('should add value to the cache', () async {
    // arrange
    const tKey = 1;
    const tValue = 'value';
    when(() => mockMap[tKey] = tValue).thenReturn(tValue);
    // act
    await memoryCache.add(tKey, tValue);
    // assert
    verify(() => mockMap[tKey] = tValue);
  });

  test('should read value from the cache', () async {
    // arrange
    const tKey = 1;
    const tValue = 'value';
    when(() => mockMap[tKey]).thenReturn(tValue);
    // act
    final result = await memoryCache.read(tKey);
    // assert
    expect(result, tValue);
  });

  test('should remove value from the cache', () async {
    // arrange
    const tKey = 1;
    const tValue = 'value';
    when(() => mockMap.remove(tKey)).thenReturn(tValue);
    // act
    final result = await memoryCache.remove(tKey);
    // assert
    expect(result, tValue);
  });

  test('should clear the cache', () async {
    // arrange
    when(() => mockMap.clear()).thenReturn(null);
    // act
    await memoryCache.clear();
    // assert
    verify(() => mockMap.clear());
  });
}
