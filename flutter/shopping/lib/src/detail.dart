import 'package:flutter/material.dart';
import 'package:shopping/src/bloc/shopping_bloc.dart';
import 'package:shopping/src/bloc/stateless_provider.dart';

class Detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ShoppingBloc bloc = StatelessProvider.of(context);
    print('detail : $bloc');
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child:
        Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Container(

//                width: double.maxFinite,
                color: Colors.yellow,
              ),
//              fit: FlexFit.loose,
            flex: 2,
            ),
            Expanded(
              child: Container(
//                width: double.maxFinite,
//                height: double.maxFinite,
                color: Colors.red,
              ),
              flex: 8,
            )
          ],
        )
      ),
    );
  }
}