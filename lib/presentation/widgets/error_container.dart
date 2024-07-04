import 'package:flutter/material.dart';
import 'package:omni_test/core/typographies.dart';

class ErrorContainer extends StatelessWidget {
  const ErrorContainer({super.key, required this.textError});
  final String textError;

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(17),
          child: Center(
            child: Card(
              elevation: 50,
              color: Colors.redAccent,
              child: SizedBox(
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                     textError,
                      style: AppTypography.stRaleway(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: AppTypography.fontWeightBold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
  }
}