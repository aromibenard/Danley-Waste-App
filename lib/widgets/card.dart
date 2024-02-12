import 'package:flutter/material.dart';

class StyledCard extends StatefulWidget {
  final String wasteType;
  final Icon icon;
  final String selectedWaste;

  //callback function to update selected waste value
  final Function(String) onSelected;
  const StyledCard(
      {super.key,
      required this.wasteType,
      required this.icon,
      required this.onSelected,
      required this.selectedWaste});

  @override
  State<StyledCard> createState() => _StyledCardState();
}

class _StyledCardState extends State<StyledCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), // Set the border radius
        // color: widget.selectedWaste == widget.wasteType
        //     ? Colors.grey.withOpacity(0.4)
        //     : null,
        boxShadow: [
          BoxShadow(
            color: widget.selectedWaste == widget.wasteType
                ? Colors.grey.withOpacity(0.4)
                : Colors.blueGrey.withOpacity(0.4),
            spreadRadius: widget.selectedWaste == widget.wasteType ? 0.6 : 0.4,
            blurRadius: 10,
            offset: widget.selectedWaste == widget.wasteType
                ? Offset(0, -2)
                : Offset(1, 3),
          ),
        ],
      ),
      child: Card(
        color: widget.selectedWaste == widget.wasteType
            ? Colors.lightBlue.withOpacity(0.6)
            : Colors.white70,
        elevation: 0, // Set elevation to 0 for the Card inside the Container
        child: ListTile(
          leading: widget.icon,
          title: Text(
            widget.wasteType,
            style: TextStyle(
              fontWeight: widget.selectedWaste == widget.wasteType
                  ? FontWeight.w700
                  : null,
              color: widget.selectedWaste == widget.wasteType
                  ? Colors.white
                  : Colors.black,
            ),
          ),
          contentPadding: EdgeInsets.all(12),
          onTap: () {
            setState(() {
              // Toggle the highlighting and selection
              if (widget.selectedWaste == widget.wasteType) {
                widget.onSelected('');
              } else {
                widget.onSelected(widget.wasteType);
              }
            });
          },
        ),
      ),
    );
  }
}
