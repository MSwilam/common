import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

const textInputDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 2.0)),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.pink, width: 2.0)),
);

var detailTextH = const TextStyle(color: Colors.black, fontSize: 21);
var detailTextT = const TextStyle(color: Colors.black, fontSize: 18);
var errorTextStyle = const TextStyle(color: Colors.red, fontSize: 20);

class DetailsContainer extends StatelessWidget {
  DetailsContainer({super.key, required this.body});
  Widget body;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(20.0),
      color: Colors.grey[100],
      child: Card(child: body),
    );
  }
}

class DetailsColumn extends StatelessWidget {
  DetailsColumn({super.key, required this.children});
  List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return DetailsContainer(
      body: SingleChildScrollView(child: Column(children: children)),
    );
  }
}

class DetailsRow extends StatelessWidget {
  DetailsRow({super.key, required this.children});
  List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start, children: children),
        ),
        const Divider(
          height: 50,
          thickness: 5,
        ),
      ],
    );
  }
}

class SearchBtn extends StatelessWidget {
  const SearchBtn({super.key, required this.onSearchDelegate});
  final SearchDelegate onSearchDelegate;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: IconButton(
        icon: const Icon(Icons.search),
        iconSize: 30,
        onPressed: () {
          showSearch(context: context, delegate: onSearchDelegate);
        },
      ),
    );
  }
}

class AddBtnMain extends StatelessWidget {
  const AddBtnMain({super.key, required this.onAddFnc});
  final VoidCallback onAddFnc;
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      label: Text(
        'Add'.tr(),
        style: const TextStyle(color: Colors.black),
      ),
      icon: const Icon(Icons.add, color: Colors.black),
      onPressed: () {
        onAddFnc();
      },
    );
  }
}

class RowActionIndex extends StatelessWidget {
  const RowActionIndex(
      {super.key, required this.onSearchDelegate, required this.onAddFnc});
  final VoidCallback onAddFnc;
  final SearchDelegate onSearchDelegate;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AddBtnMain(onAddFnc: onAddFnc),
        SearchBtn(onSearchDelegate: onSearchDelegate)
      ],
    );
  }
}
