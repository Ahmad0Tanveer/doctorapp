import 'package:country_picker/country_picker.dart';
import 'package:doctorconsultant/screens/users/login_after_contry_select.dart';
import 'package:flutter/cupertino.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../utils/exporter.dart';

class CountrySelectPage extends StatefulWidget {
  const CountrySelectPage({super.key});

  @override
  State<CountrySelectPage> createState() => _CountrySelectPageState();
}

class _CountrySelectPageState extends State<CountrySelectPage> {
  String searchText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: Get.width,
            padding: const EdgeInsets.all(35),
            height: Get.height * 0.85,
            decoration: const ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.00, -1.00),
                end: Alignment(0, 1),
                colors: [Colors.white, Colors.white],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 48,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFEFF3FA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: TextField(
                    onChanged: (t) {
                      setState(() {
                        searchText = t;
                      });
                    },
                    style:  GoogleFonts.mulish(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration:  InputDecoration(
                      hintText: "Search your country or code",
                      hintStyle: GoogleFonts.mulish(
                        color: Color(0xFF9093A3),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      contentPadding: EdgeInsets.only(top: 16),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        LucideIcons.search,
                        size: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    children: countries.map((Country one) {
                      if (searchText.isNotEmpty) {
                        if (!one.name.toLowerCase().contains(searchText)) {
                          return Container();
                        }
                      }
                      return InkWell(
                        onTap: () {
                          setState(() {
                            country = one;
                          });
                          Get.to(() => const LoginAfterContrySelect());
                        },
                        child: Container(
                          width: Get.width,
                          child: Column(
                            children: [
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  Text(
                                    one.flagEmoji,
                                    style:  GoogleFonts.mulish(fontSize: 40),
                                  ),
                                  const SizedBox(width: 18),
                                  Text(
                                    one.name,
                                    style:  GoogleFonts.mulish(
                                      color: Color(0xFF222222),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '+${one.phoneCode}',
                                    style:  GoogleFonts.mulish(
                                      color: Color(0xFF9093A3),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 8),
                              Container(
                                height: 1.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xFFDEE1E6),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
