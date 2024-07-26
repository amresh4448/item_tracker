import 'package:flutter_test/flutter_test.dart';
import 'package:item_tracker/providers/item_provider.dart';

void main() {
  test('Add item', () {
    final provider = ItemProvider();
    provider.addItem('Test Item', 'Test Description');
    expect(provider.items.length, 1);
    expect(provider.items[0].name, 'Test Item');
  });

  test('Edit item', () {
    final provider = ItemProvider();
    provider.addItem('Test Item', 'Test Description');
    provider.editItem(0, 'Updated Item', 'Updated Description');
    expect(provider.items[0].name, 'Updated Item');
    expect(provider.items[0].description, 'Updated Description');
  });

  test('Remove item', () {
    final provider = ItemProvider();
    provider.addItem('Test Item', 'Test Description');
    provider.removeItem(0);
    expect(provider.items.length, 0);
  });
}
