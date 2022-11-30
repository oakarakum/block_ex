// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:block_ex/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocEx extends StatefulWidget {
  const BlocEx({super.key});

  @override
  State<BlocEx> createState() => _BlocExState();
}

class _BlocExState extends State<BlocEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) => CounterBloc(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: FloatingActionButton(
                  onPressed: (() {
                    BlocProvider.of<CounterBloc>(context)
                        .add(CounterIncrement());
                    context
                        .read()<CounterBloc>(context)
                        .add(CounterDecrement());
                  }),
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
