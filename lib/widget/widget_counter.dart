import 'package:bloc_app/blocs/%20counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterBloc, CounterInitial>(
      listener: (context, state) {
        if (state.counter == 5) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Counter reached 5!'),
              duration: Duration(seconds: 2),),
          );
        }
      },
      builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Counter Value: ${state.counter}',
                style: const TextStyle(fontSize: 24),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      context.read<CounterBloc>().add(IncrementCounterEvent());
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () {
                      context.read<CounterBloc>().add(DecrementCounterEvent());
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}