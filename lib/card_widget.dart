import 'package:flutter/material.dart';
import 'package:pumba/data.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({Key? key, required this.country}) : super(key: key);

  final Courty country;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  var isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: SizedBox(
          width: 300,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.network(
                      height: 40,
                      width: 40,
                      widget.country.iconUrl,
                    ),
                    Text(
                      widget.country.shortName,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(widget.country.name),
                  ],
                ),
              ),
              Theme(
                data: Theme.of(context).copyWith(
                  unselectedWidgetColor: Colors.pink,
                ),
                child: Checkbox(
                  checkColor: Colors.white,
                  activeColor: Colors.pink,
                  value: isChecked,
                  shape: CircleBorder(),
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
