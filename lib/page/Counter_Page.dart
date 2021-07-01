import 'package:flutter/material.dart';
import 'package:flutter_app/cubit/counter_cubit.dart';
import 'package:flutter_app/domain/UserModel.dart';
import 'package:flutter_app/repository/UserRepository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// {@template counter_page}
/// A [StatelessWidget] which is responsible for providing a
/// [CounterCubit] instance to the [CounterView].
/// {@endtemplate}
class CounterPage extends StatelessWidget {
  /// {@macro counter_page}
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: CounterView(),
    );
    /**todo 加路由
     * MultiBlocProvider(
        providers: [
        BlocProvider(
        create: (_) => CounterCubit(),
        ),
        BlocProvider(
        create: (_) => CounterCubit2(),
        ),
        ],
        child: BaseBLoCRoute(),
        )
        ————————————————
        版权声明：本文为CSDN博主「iFlyAI」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
        原文链接：https://blog.csdn.net/iFlyAI/article/details/108147070
     */
  }
}

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return Text('$state', style: textTheme.headline2);
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add),
            onPressed: () async{
              context.read<CounterCubit>().increment();
              User user =await UserRepository().login();
            }
            ,
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CounterCubit>().decrement(),
          ),
        ],
      ),
    );
  }
  increaseevent(BuildContext context){


  }

}
