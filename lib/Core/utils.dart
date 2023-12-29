import 'package:flutter/material.dart';
import 'package:task_master/Core/app_colors.dart';
import 'package:task_master/Core/app_config_size.dart';

final participants =[
  "https://s3-alpha-sig.figma.com/img/67c6/b497/21c67377689bbb741fa52493c574b35b?Expires=1704672000&Signature=HhA5xpE2DbSgya522sT3entpcqoAW5j2JenQF9l5ILLmVJsk1b3rZS2pF8Gia2BDNlJJQDHrGwTzc~xx7sMIazausGO4KRaeOK8pOYAgVIlHXq3qLfhL41AhWfjZ4zualF8HdxOuL2JG0Wpr7TaCEEnRVqtF0Wm7eBv70CpPp1aY2qjDv6jrJ0xQdcUsE3NF4r9seoUNEFH4G-deaA4FiYZhBMgncbqy~PwDrhlF8crC43zFdu2O9khJklDf9nytbnpYfUrHUCDaNYudrs70UOR4uNdjEQvwzaz8s0ejATpL2ZQH2U29tysVpRYeC0REGQBZPyNGgrf22nb3OmyZzg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  "https://s3-alpha-sig.figma.com/img/4121/6f52/6d78fd1233cdc47439af6c0aef15b05c?Expires=1704672000&Signature=V3jV3Zy5uAIJC404hJBmsNyMLpwvcPEt4orGszBXbWWE7M6Rj9JT93mZyoVmzZawdVTCF2goUNAjAyVio~N4yfkwLfWobao8gjmC~XSGFJP4hTJIOQilU1p1Cbtj8n0LcxbwEZ6hs8CFCG6pyHopV95vfJihoWrNp40EWpFNwYuvj8eLqmzhMbLPJRGB1PO-FeJVMZwByKOTM8za1MfZBnPJPXNuilYXiqxZYfLF~IdoiUVW2Vrktptya0UZ4URCWzVsR5xDE7oYD~yp272JS0aMfe2ToRkjDz-bP2NRkf16UmLl0kJj7hvhRL84zlEAYOjJY809dtI9lXAB9qhx2Q__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  "https://s3-alpha-sig.figma.com/img/e67b/0614/fceb4b8507be2e754c86b6c0de2797b4?Expires=1704672000&Signature=Guov60exL1u0Ca~P6J6lfb0gY1ocYYB6cSkWlZs2kMcnIyTOKql~XrgoVZC-gGOa17ES5OFm6f0cRjg-C8Hg-qj6rIFERTLh1SXCPS0Wf0orKocnyGcCXiul15SdbkH3Orj8BNFxb4k1OGjc5dbCe-r7WQHDXeR56KciVEnMDDzg2p0ND3Io7u~42TXpOPcaN9BFRHNciWkaG~IcwQQihAaJAi~dw4egTvRQNBSS2pxeVrplvqYZyeJVBoxo50tMOHA8TKuj8Fk5A3AE1q8598EdVgd0ugG-yUuA4bmuHfRGQFMMGMxa2rkNOEFdppBgM9yo7MPtoPdun87UuWfUPQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  "https://s3-alpha-sig.figma.com/img/3b13/5310/045c2af3dc95868c9738dd36c9b8db66?Expires=1704672000&Signature=e5GfT9fqL~k6Kqp-d9WcYt2VyNr1M6rXV8CQhdFQW~sSf14OtUdj0fgQC3Du1heEY2zHnuwFgBH~SbtwF9fOhTiAvnKHFXdrezIHWk4qxSFbB8Cy0azMr~uDeAEGMwnPllpj-ciriFFQyf52h6O9XHUQQg4C0ByD~SLRs3PQpJm~Bp9Y7Jyz7zJ8InCD2uSmf0tR2smiIigNiwvvJpUzXsHMHoX-8j9RFwh17WGbiDxBjapxRtLDXzpHhgCBAjvx-pxeMKBvGTvWkAhSOBlnC1e4UbRYTOpwYR1iyQ4Trz2KIPAtYz1huUtXbimtLo6tlhSwjAShLK70gSUHivjHjA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  "+"
];
final users = participants.asMap().map((key, value){
  final userValue= CircleAvatar(
      backgroundColor: Pallete.primaryColor,
      backgroundImage: key==(participants.length-1)?null: NetworkImage(value),
      child:  key==(participants.length-1)?Icon(Icons.add, color: Colors.white,size: getSize(24),):null
  );
  final left =getSize(25)*key;
  final user =
  Padding(
      padding: EdgeInsets.only(left: left.toDouble()),
      child:  userValue
  );

  return MapEntry(key,user);
}).values.toList();