import 'package:creativa_courses_app/constants.dart';
import 'package:flutter/material.dart';

class ProfileContainer extends StatefulWidget {
  const ProfileContainer({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  State<ProfileContainer> createState() => _ProfileContainerState();
}

class _ProfileContainerState extends State<ProfileContainer> {
  bool value = false;
  int selectedIndex = 0;
  bool iconTapped = false;
  bool enable = false;
  @override
  Widget build(BuildContext context) {
    /*showContent(index) {
      setState(() {
        selectedIndex = index;
        iconTapped == true ? iconTapped = false : iconTapped = true;
      });
    }*/

    //var size = MediaQuery.of(context).size;
    return Container(
        height: 70,
        padding: EdgeInsets.zero,
        // color: isDarkMode ? Colors.white : Colors.black,
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: TextFormField(
            initialValue: widget.text,
            enabled: enable,
            decoration: InputDecoration(
              border: InputBorder.none,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    enable ? enable = false : enable = true;
                  });
                },
                icon: enable
                    ? Icon(
                        Icons.check,
                        color: blue,
                      )
                    : Icon(
                        Icons.edit,
                        color: blue,
                      ),
              ),
              prefixIcon: Icon(
                widget.icon,
                color: blue,
              ),
            ),
          ),
        )
        /*Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
            ),
            child: Icon(
              widget.icon,
              color: blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
            ),
            child: Text(
              widget.text,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),*/
        );
    /*Container(
      width: size.width * 0.75,
      // height: 65,
      decoration: const BoxDecoration(
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 10),
                child: Image.asset(
                  widget.icon,
                  scale: 9,
                ),
              ),
              Text(widget.text),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: IconButton(
                  icon: iconTapped
                      ? const Icon(Icons.arrow_drop_down)
                      : const Icon(Icons.arrow_right),
                  onPressed: showContent(0),
                  color: Colors.grey,
                ),
              )
            ],
          ),
          iconTapped
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("notify me whenever new course is published "),
                      Checkbox(
                        value: value,
                        onChanged: (bool? value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                    ],
                  ),
                )
              : const SizedBox()
        ],
      ),
    );*/
  }
}
