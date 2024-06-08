import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 102, 153, 204),
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Color.fromARGB(255, 102, 153, 204),
        middle: Text('Currency Converter'),
      ),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'LKR ${result != 0 ? result.toStringAsFixed(2) : '0'}',
                style: const TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: CupertinoTextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: CupertinoColors.black,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  placeholder: 'Enter USD to convert',
                  prefix: const Icon(CupertinoIcons.money_dollar),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CupertinoButton(
                  onPressed: () {
                    setState(
                      () {
                        result =
                            double.parse(textEditingController.text) * 304.70;
                      },
                    );
                  },
                  color: CupertinoColors.black,
                  child: const Text('Convert!'),
                ),
              )
            ]),
      ),
    );
  }
}
