import 'package:flutter/material.dart';

class TransactionDetail extends StatelessWidget {
  final int transactionId;
  final double transactionAmount;

  const TransactionDetail({
    Key? key,
    required this.transactionId,
    required this.transactionAmount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction Details'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Transaction ID: $transactionId',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            Text(
              'Amount: Rp ${transactionAmount.toStringAsFixed(0)}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            // You can add more transaction details here
          ],
        ),
      ),
    );
  }
}
