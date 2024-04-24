import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();

  Order _order = Order();

  String? _validateItemCount(String? value) {
    int? _valueAsInteger =
        value == null || value.isEmpty ? 0 : int.tryParse(value);
    return _valueAsInteger == 0 ? 'At least one Item is Required' : null;
  }

  void _submitOrder() {
    if (_formStateKey.currentState!.validate()) {
      _formStateKey.currentState!.save();
      print('Order Item: ${_order.item}');
      print('Order Quantity: ${_order.quantity}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Validation'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Form(
              key: _formStateKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        //hintText: 'Espresso',
                        labelText: 'Item',
                      ),
                      validator: (value) => _validateItemCount(value),
                      onSaved: (value) => _order.item = value!,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        //hintText: '3',
                        labelText: 'Quantity',
                      ),
                      validator: (value) => _validateItemCount(value),
                      onSaved: (value) =>
                          _order.quantity = int.tryParse(value!) ?? 0,
                    ),
                    const Divider(height: 32.0),
                    ElevatedButton(
                      onPressed: _submitOrder,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: const Text('Save'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Order {
  String? item;
  int quantity = 0;
}
