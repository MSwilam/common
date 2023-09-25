import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class CreateBtn extends StatelessWidget {
   const CreateBtn({super.key,required this.onCreateFnc,});
final VoidCallback onCreateFnc;
  @override
  Widget build(BuildContext context) {
    return   ElevatedButton(
                      onPressed: () async {
                       onCreateFnc();
                      },
                      child: Text(
                        ('create').tr(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    );
  }
}


class UpdateBtn extends StatelessWidget {
   const UpdateBtn({super.key,required this.onUpdateFnc,});
final VoidCallback onUpdateFnc;
  @override
  Widget build(BuildContext context) {
    return   ElevatedButton(
                      onPressed: () async {
                       onUpdateFnc();
                      },
                      child: Text(
                        ('update').tr(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    );
  }
}