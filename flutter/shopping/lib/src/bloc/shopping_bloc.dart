import 'dart:async';

import 'package:shopping/src/bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shopping/src/helpers/api_helper.dart';
import 'package:shopping/src/model/book.dart';

class ShoppingBloc implements Bloc {

  //step1 - stream
  final _apiHelpers = ApiHelper();
  final _items = PublishSubject<List<Book>>();
  final _stringItem = PublishSubject<String>();

  //step2 - listen
  Stream<List<Book>> get items => _items.stream;
//  Stream<String> get stringItem => _stringItem.stream;

  //step3 emit
  Function(List<Book>) get emitItem => _items.sink.add;


  ShoppingBloc() {
//    _items.stream.transform(_stringTransformer()).pipe(_stringItem);
  }

  fetchItems() async {
    List<Book> list = await _apiHelpers.fetchAllItems();
    _items.sink.add(list);
  }

  @override
  void dispose() {
    _items.close();
    _stringItem.close();
  }

  StreamTransformer<int, String> _stringTransformer() => StreamTransformer.fromHandlers(
    handleData: (data, sink) {
      final result = 'item $data';
      sink.add(result);
    }
  );
}