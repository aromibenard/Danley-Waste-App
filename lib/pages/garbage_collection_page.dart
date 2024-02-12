import 'package:app_1/widgets/card.dart';
import 'package:flutter/material.dart';

class GarbageCollectionPage extends StatefulWidget {
  const GarbageCollectionPage({super.key});

  @override
  State<GarbageCollectionPage> createState() => _GarbageCollectionPageState();
}

class _GarbageCollectionPageState extends State<GarbageCollectionPage> {
  //adding variable to track selected waste type
  String selectedWaste = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: Text(
          'Garbage Collection',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 30),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'What are we picking up?',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //card 1
              StyledCard(
                  wasteType: 'Domestic Waste',
                  icon: Icon(Icons.house_outlined),
                  onSelected: (selectedType) {
                    setState(() {
                      selectedWaste = selectedType;
                    });
                  },
                  selectedWaste: selectedWaste),
              //card 2
              StyledCard(
                  wasteType: 'Medical Waste',
                  icon: Icon(Icons.local_hospital_outlined),
                  onSelected: (selectedType) {
                    setState(() {
                      selectedWaste = selectedType;
                    });
                  },
                  selectedWaste: selectedWaste),
              //card 3
              StyledCard(
                  wasteType: 'Sorted Waste',
                  icon: Icon(Icons.recycling_outlined),
                  onSelected: (selectedType) {
                    setState(() {
                      selectedWaste = selectedType;
                    });
                  },
                  selectedWaste: selectedWaste),
              //card 4
              StyledCard(
                  wasteType: 'Plastic Waste',
                  icon: Icon(Icons.delete_outline_outlined),
                  onSelected: (selectedType) {
                    setState(() {
                      selectedWaste = selectedType;
                    });
                  },
                  selectedWaste: selectedWaste),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   elevation: 0,
      //   notchMargin: 9,
      //   color: Colors.white60,
      //   clipBehavior: Clip.hardEdge,
      //   shape: const CircularNotchedRectangle(),
      //   child: BottomNavigationBar(
      //     backgroundColor: Colors.transparent,
      //     items: const [
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         label: 'Home',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: SizedBox(),
      //         label: '',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.person),
      //         label: 'Profile',
      //       ),
      //     ],
      //   ),
      // ),
      floatingActionButton: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 0.6,
              blurRadius: 10,
              offset: Offset(0, -2)),
        ]),
        width: 150,
        margin: EdgeInsets.only(right: 16),
        child: FloatingActionButton(
          elevation: 4,
          onPressed: () {
            print("pressed");
          },
          foregroundColor: Colors.white,
          backgroundColor: Colors.lightBlue.withOpacity(0.6),
          child: const Text(
            'Choose Location',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
