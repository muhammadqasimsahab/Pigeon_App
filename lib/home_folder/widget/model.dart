import 'package:flutter/material.dart';
import 'class.dart';

final
List<String> description_person= [
  "Rev - Google Temporary hold G.co/ Help Pay #GBR",
  "Rev - Google Temporary hold G.co/ Help Pay #GBR",
  "Bilal Ahmed - Ref: 127798",
  "Azlan Shah - Ref: 185563",
];
List imageurl = [

  'images/Receive.png',
  'images/Send.png',
  'images/Receive.png',
  'images/Receive.png',
];
List<String> price= [
  "+ AED. 1.97",
  "+ AED. 2.00",
  "+ AED. 11.00",
  "+ AED. 1.97",
];

List<String> time= [
  '7:15 AM',
  '8:15 AM',
  '9:15 AM',
  '1:15 AM',

];
List<String> bank_img= [
  'images/enb_bank.png',
  'images/unnamed.png',
  'images/dubi_bank.png',
  'images/uae_bank.png',

];
List<String> bank_name= [
  'Emirates National Bank',
  'Bank AlFalah Limited',
  'Dubai Islamic Bank',
  'UAE Central Bank',

];


final List<AllDataModel> itemData = List.generate(
    description_person.length,
        (index) => AllDataModel('${description_person[index]}','${imageurl[index]}',
      '${price[index]}','${time[index]}','${bank_img[index]}','${bank_name[index]}',



    )
);