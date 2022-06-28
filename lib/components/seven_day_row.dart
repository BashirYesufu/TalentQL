import 'package:flutter/material.dart';


class SevenDayRow extends StatelessWidget {
  const SevenDayRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Sunday'),
          Row(
            children: [
              Icon(Icons.thunderstorm),
              SizedBox(width: 30,),
              Text('12°')
            ],
          )
        ],
      ),
    );
  }
}
