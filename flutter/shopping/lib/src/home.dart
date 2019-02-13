import 'package:flutter/material.dart';
import 'package:shopping/src/bloc/logo.dart';
import 'package:shopping/src/bloc/shopping_bloc.dart';
import 'package:shopping/src/bloc/stateless_provider.dart';
import 'package:shopping/src/model/book.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ShoppingBloc bloc = StatelessProvider.of(context);
    print('home: $bloc');
    bloc.fetchItems();

    return Scaffold(
      body: SafeArea(child: _buildList(bloc, context)),
    );
  }

  _buildList(ShoppingBloc bloc, context) {
    return StreamBuilder(
        stream: bloc.items,
        builder: (context, AsyncSnapshot<List<Book>> snapshot) {
          if(snapshot.data == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          List<Book> list = snapshot.data;
          return GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 0.6,
            children: List.generate(list.length, (index) {
              return Center(
                  child: GestureDetector(
                onTap: () {
//                bloc.emitItem(index);
                  Navigator.of(context).pushNamed("/detail");
                },
                child: _buildItemView(context, list[index]),
              ));
            }),
          );
        });
  }

  _buildItemView(context, item) => _BuildItemWidget(item: item);
}

class _BuildItemWidget extends StatelessWidget {
  final Book item;

  _BuildItemWidget({this.item});

  @override
  Widget build(BuildContext context) {
    ShoppingBloc bloc = StatelessProvider.of(context);
    print('home - grid item: $bloc');
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 200.0,
            child: Stack(
              children: <Widget>[
                Image(
                  image: NetworkImage(item.thumbnail),
                ),
                Positioned(
                  bottom: 0.0,
                  child: Container(
                    width: double.maxFinite,
                    color: Colors.red, //0x77000000
                    child: Text(item.title),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 70.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(item.publisher),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[Text('${logo[item.publisher]}_${item.author}'), Text('${item.price}')],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}
