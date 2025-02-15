import 'package:flutter/material.dart';
import 'package:quiz_app/components/summary_item.dart';

class QuestionsSummmary extends StatelessWidget {
  const QuestionsSummmary({
    super.key,
    required this.summaryData,
  });
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map(
          (data) {
            return SummaryItem(data);
          },
        ).toList()),
      ),
    );
  }
}
