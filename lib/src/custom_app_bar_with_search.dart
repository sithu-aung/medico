import 'package:flutter/material.dart';

PreferredSize customAppBarWithSearch(BuildContext context, String name,
    Function(String) onChanged, Color backgroundColor, Color textColor,String hintText) {
  TextEditingController searchController = TextEditingController();

  return PreferredSize(
    preferredSize: Size(
      MediaQuery.of(context).size.width,
      kToolbarHeight + 8,
    ),
    child: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [backgroundColor, backgroundColor])),
      child: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Text(
                name,
                style: TextStyle(color: textColor),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: MediaQuery.of(context).size.width / 3,
                margin: const EdgeInsets.only(right: 50, top: 10, bottom: 10),
                child: TextFormField(
                  controller: searchController,
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                  onChanged: (val) {
                    onChanged(val);
                  },
                  decoration: InputDecoration(
                    hintText: '',
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 14.0),
                    fillColor: Colors.white.withOpacity(0.2),
                    filled: true,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: textColor,
                        ),
                      ),
                    ),
                    contentPadding: const EdgeInsets.only(left: 20, right: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: Colors.transparent)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: Colors.transparent)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: Colors.transparent)),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    // centerTitle: true,
    // title: const Text("အရောင်းစာမျက်နှာ"),
  );
}
