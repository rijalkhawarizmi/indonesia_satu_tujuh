import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indonesia_satu_tujuh/src/home/presentation/cubit/count_cubit.dart';
import 'package:indonesia_satu_tujuh/src/home/presentation/widget/custom_button.dart';

class Home extends StatelessWidget {
  final numberInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,
                controller: numberInput,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CustomButton(
                      onPressed: () {
                        context.read<CountCubit>().calculateNumber(
                            buttonNumber: 1,
                            inputNumber: int.parse(numberInput.text));
                      },
                      text: "1"),
                  CustomButton(
                      onPressed: () {
                        context.read<CountCubit>().calculateNumber(
                            buttonNumber: 2,
                            inputNumber: int.parse(numberInput.text));
                      },
                      text: "2")
                ],
              ),
              Row(
                children: [
                  CustomButton(
                      onPressed: () {
                        context.read<CountCubit>().calculateNumber(
                            buttonNumber: 3,
                            inputNumber: int.parse(numberInput.text));
                      },
                      text: "3"),
                  CustomButton(
                      onPressed: () {
                        context.read<CountCubit>().calculateNumber(
                            buttonNumber: 4,
                            inputNumber: int.parse(numberInput.text));
                      },
                      text: "4")
                ],
              ),
              const Text('Result'),
              BlocBuilder<CountCubit, CountState>(
                builder: (context, state) {
                  if (state is CountButtonNumberOne) {
                    return Wrap(
                      children: List.generate(state.list.length, (index) {
                        return Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(state.list[index].toString()));
                      }),
                    );
                  } else if (state is CountButtonNumberTwo) {
                    return Wrap(
                      children: List.generate(state.list.length, (index) {
                        return Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(state.list[index].toString()));
                      }),
                    );
                  }else if (state is CountButtonNumberThree) {
                    return Wrap(
                      children: List.generate(state.list.length, (index) {
                        return Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(state.list[index].toString()));
                      }),
                    );
                  } else if (state is CountButtonNumberFour) {
                    return Wrap(
                      children: List.generate(state.list.length, (index) {
                        return Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(state.list[index].toString()));
                      }),
                    );
                  }
                  return const Text('0');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
