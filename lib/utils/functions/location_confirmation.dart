import 'package:app_1/models/location_data_model.dart';
import 'package:flutter/material.dart';

void showLocationConfirmationBottomSheet(
    BuildContext context, LocationDataModel? location) {
  showBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Confirm Location'),
              SizedBox(
                height: 10,
              ),
              Text('Latitude: ${location?.latitude}'),
              Text('Latitude: ${location?.longitude}'),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Confirm'))
            ],
          ),
        );
      });
}
