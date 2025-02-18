import 'package:flutter/material.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext ctx) {
                return AlertDialog(
                  title: const Text('Confirmation'),
                  content:
                      const Text('Voulez-vous vraiment supprimer ce produit?'),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Yes')),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('No'))
                  ],
                );
              });
        },
        child: const Text('Delete'));
  }
}
