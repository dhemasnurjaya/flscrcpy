/// Cache interface
abstract class Cache<K, V> {
  /// Add a value to the cache.
  Future<void> add(K key, V value);

  /// Read a value from the cache, returns null if the value is not found.
  Future<V?> read(K key);

  /// Remove a value from the cache, returns null if the value is not found.
  Future<V?> remove(K key);

  /// Clear the cache.
  Future<void> clear();
}

/// Memory cache implementation using a Map.
class MemoryCache<K, V> implements Cache<K, V> {
  final Map<K, V> _cache;

  MemoryCache({Map<K, V>? mapImpl}) : _cache = mapImpl ?? <K, V>{};

  @override
  Future<void> add(K key, V value) async {
    _cache[key] = value;
  }

  @override
  Future<void> clear() async {
    return _cache.clear();
  }

  @override
  Future<V?> read(K key) async {
    return _cache[key];
  }

  @override
  Future<V?> remove(K key) async {
    return _cache.remove(key);
  }
}
