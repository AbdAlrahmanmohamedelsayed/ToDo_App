import 'package:flutter/material.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  var languageList = ['عربي', 'English'];
  var themeLit = ['Light', 'Dark'];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 50),
          decoration: BoxDecoration(color: theme.primaryColor),
          height: mediaQuery.size.height * .25,
          width: mediaQuery.size.width,
          alignment: Alignment.topLeft,
          child: Text(
            'Settings',
            style: theme.textTheme.bodyLarge,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Language',
                style: theme.textTheme.bodyLarge
                    ?.copyWith(color: Colors.black, fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomDropdown<String>(
                decoration: CustomDropdownDecoration(
                  closedBorderRadius: BorderRadius.circular(10),
                  closedBorder:
                      Border.all(width: 3, color: theme.primaryColorDark),
                  headerStyle: theme.textTheme.bodySmall,
                  closedFillColor: Colors.white,
                  expandedFillColor: theme.primaryColor,
                  closedSuffixIcon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  expandedSuffixIcon: Icon(
                    Icons.arrow_drop_up,
                    color: Colors.black,
                  ),
                ),
                hintText: 'Select Language App',
                items: languageList,
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Theme',
                style: theme.textTheme.bodyLarge
                    ?.copyWith(color: Colors.black, fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomDropdown<String>(
                decoration: CustomDropdownDecoration(
                  closedBorderRadius: BorderRadius.circular(10),
                  closedBorder:
                      Border.all(width: 3, color: theme.primaryColorDark),
                  headerStyle: theme.textTheme.bodySmall,
                  closedFillColor: Colors.white,
                  expandedFillColor: theme.primaryColor,
                  closedSuffixIcon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  expandedSuffixIcon: const Icon(
                    Icons.arrow_drop_up,
                    color: Colors.black,
                  ),
                ),
                hintText: 'Select Theme App',
                items: themeLit,
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
