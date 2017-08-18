USE npshopdb;

CREATE TABLE `np_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


insert into `np_user_group`(`user_group_id`,`name`,`permission`) values (1,'Administrator','a:2:{s:6:"access";a:182:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:18:"common/filemanager";i:13;s:11:"common/menu";i:14;s:14:"common/profile";i:15;s:12:"common/stats";i:16;s:13:"design/banner";i:17;s:13:"design/layout";i:18;s:14:"extension/feed";i:19;s:15:"extension/fraud";i:20;s:19:"extension/installer";i:21;s:22:"extension/modification";i:22;s:16:"extension/module";i:23;s:17:"extension/openbay";i:24;s:17:"extension/payment";i:25;s:18:"extension/shipping";i:26;s:15:"extension/total";i:27;s:16:"feed/google_base";i:28;s:19:"feed/google_sitemap";i:29;s:15:"feed/openbaypro";i:30;s:18:"fraud/fraudlabspro";i:31;s:13:"fraud/maxmind";i:32;s:20:"localisation/country";i:33;s:21:"localisation/currency";i:34;s:21:"localisation/geo_zone";i:35;s:21:"localisation/language";i:36;s:25:"localisation/length_class";i:37;s:21:"localisation/location";i:38;s:25:"localisation/order_status";i:39;s:26:"localisation/return_action";i:40;s:26:"localisation/return_reason";i:41;s:26:"localisation/return_status";i:42;s:25:"localisation/stock_status";i:43;s:22:"localisation/tax_class";i:44;s:21:"localisation/tax_rate";i:45;s:25:"localisation/weight_class";i:46;s:17:"localisation/zone";i:47;s:19:"marketing/affiliate";i:48;s:17:"marketing/contact";i:49;s:16:"marketing/coupon";i:50;s:19:"marketing/marketing";i:51;s:14:"module/account";i:52;s:16:"module/affiliate";i:53;s:20:"module/amazon_button";i:54;s:19:"module/amazon_login";i:55;s:17:"module/amazon_pay";i:56;s:13:"module/banner";i:57;s:17:"module/bestseller";i:58;s:15:"module/carousel";i:59;s:15:"module/category";i:60;s:19:"module/ebay_listing";i:61;s:15:"module/featured";i:62;s:13:"module/filter";i:63;s:22:"module/google_hangouts";i:64;s:11:"module/html";i:65;s:18:"module/information";i:66;s:13:"module/latest";i:67;s:16:"module/pp_button";i:68;s:15:"module/pp_login";i:69;s:16:"module/slideshow";i:70;s:14:"module/special";i:71;s:12:"module/store";i:72;s:14:"openbay/amazon";i:73;s:22:"openbay/amazon_listing";i:74;s:22:"openbay/amazon_product";i:75;s:16:"openbay/amazonus";i:76;s:24:"openbay/amazonus_listing";i:77;s:24:"openbay/amazonus_product";i:78;s:12:"openbay/ebay";i:79;s:20:"openbay/ebay_profile";i:80;s:21:"openbay/ebay_template";i:81;s:12:"openbay/etsy";i:82;s:20:"openbay/etsy_product";i:83;s:21:"openbay/etsy_shipping";i:84;s:17:"openbay/etsy_shop";i:85;s:23:"payment/amazon_checkout";i:86;s:24:"payment/amazon_login_pay";i:87;s:24:"payment/authorizenet_aim";i:88;s:24:"payment/authorizenet_sim";i:89;s:21:"payment/bank_transfer";i:90;s:22:"payment/bluepay_hosted";i:91;s:24:"payment/bluepay_redirect";i:92;s:14:"payment/cheque";i:93;s:11:"payment/cod";i:94;s:17:"payment/firstdata";i:95;s:24:"payment/firstdata_remote";i:96;s:21:"payment/free_checkout";i:97;s:14:"payment/g2apay";i:98;s:17:"payment/globalpay";i:99;s:24:"payment/globalpay_remote";i:100;s:22:"payment/klarna_account";i:101;s:22:"payment/klarna_invoice";i:102;s:14:"payment/liqpay";i:103;s:14:"payment/nochex";i:104;s:15:"payment/paymate";i:105;s:16:"payment/paypoint";i:106;s:13:"payment/payza";i:107;s:26:"payment/perpetual_payments";i:108;s:18:"payment/pp_express";i:109;s:18:"payment/pp_payflow";i:110;s:25:"payment/pp_payflow_iframe";i:111;s:14:"payment/pp_pro";i:112;s:21:"payment/pp_pro_iframe";i:113;s:19:"payment/pp_standard";i:114;s:14:"payment/realex";i:115;s:21:"payment/realex_remote";i:116;s:22:"payment/sagepay_direct";i:117;s:22:"payment/sagepay_server";i:118;s:18:"payment/sagepay_us";i:119;s:24:"payment/securetrading_pp";i:120;s:24:"payment/securetrading_ws";i:121;s:14:"payment/skrill";i:122;s:19:"payment/twocheckout";i:123;s:28:"payment/web_payment_software";i:124;s:16:"payment/worldpay";i:125;s:16:"report/affiliate";i:126;s:25:"report/affiliate_activity";i:127;s:22:"report/affiliate_login";i:128;s:24:"report/customer_activity";i:129;s:22:"report/customer_credit";i:130;s:21:"report/customer_login";i:131;s:22:"report/customer_online";i:132;s:21:"report/customer_order";i:133;s:22:"report/customer_reward";i:134;s:16:"report/marketing";i:135;s:24:"report/product_purchased";i:136;s:21:"report/product_viewed";i:137;s:18:"report/sale_coupon";i:138;s:17:"report/sale_order";i:139;s:18:"report/sale_return";i:140;s:20:"report/sale_shipping";i:141;s:15:"report/sale_tax";i:142;s:17:"sale/custom_field";i:143;s:13:"sale/customer";i:144;s:20:"sale/customer_ban_ip";i:145;s:19:"sale/customer_group";i:146;s:10:"sale/order";i:147;s:14:"sale/recurring";i:148;s:11:"sale/return";i:149;s:12:"sale/voucher";i:150;s:18:"sale/voucher_theme";i:151;s:15:"setting/setting";i:152;s:13:"setting/store";i:153;s:16:"shipping/auspost";i:154;s:17:"shipping/citylink";i:155;s:14:"shipping/fedex";i:156;s:13:"shipping/flat";i:157;s:13:"shipping/free";i:158;s:13:"shipping/item";i:159;s:23:"shipping/parcelforce_48";i:160;s:15:"shipping/pickup";i:161;s:19:"shipping/royal_mail";i:162;s:12:"shipping/ups";i:163;s:13:"shipping/usps";i:164;s:15:"shipping/weight";i:165;s:11:"tool/backup";i:166;s:14:"tool/error_log";i:167;s:11:"tool/upload";i:168;s:12:"total/coupon";i:169;s:12:"total/credit";i:170;s:14:"total/handling";i:171;s:16:"total/klarna_fee";i:172;s:19:"total/low_order_fee";i:173;s:12:"total/reward";i:174;s:14:"total/shipping";i:175;s:15:"total/sub_total";i:176;s:9:"total/tax";i:177;s:11:"total/total";i:178;s:13:"total/voucher";i:179;s:8:"user/api";i:180;s:9:"user/user";i:181;s:20:"user/user_permission";}s:6:"modify";a:182:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:18:"common/filemanager";i:13;s:11:"common/menu";i:14;s:14:"common/profile";i:15;s:12:"common/stats";i:16;s:13:"design/banner";i:17;s:13:"design/layout";i:18;s:14:"extension/feed";i:19;s:15:"extension/fraud";i:20;s:19:"extension/installer";i:21;s:22:"extension/modification";i:22;s:16:"extension/module";i:23;s:17:"extension/openbay";i:24;s:17:"extension/payment";i:25;s:18:"extension/shipping";i:26;s:15:"extension/total";i:27;s:16:"feed/google_base";i:28;s:19:"feed/google_sitemap";i:29;s:15:"feed/openbaypro";i:30;s:18:"fraud/fraudlabspro";i:31;s:13:"fraud/maxmind";i:32;s:20:"localisation/country";i:33;s:21:"localisation/currency";i:34;s:21:"localisation/geo_zone";i:35;s:21:"localisation/language";i:36;s:25:"localisation/length_class";i:37;s:21:"localisation/location";i:38;s:25:"localisation/order_status";i:39;s:26:"localisation/return_action";i:40;s:26:"localisation/return_reason";i:41;s:26:"localisation/return_status";i:42;s:25:"localisation/stock_status";i:43;s:22:"localisation/tax_class";i:44;s:21:"localisation/tax_rate";i:45;s:25:"localisation/weight_class";i:46;s:17:"localisation/zone";i:47;s:19:"marketing/affiliate";i:48;s:17:"marketing/contact";i:49;s:16:"marketing/coupon";i:50;s:19:"marketing/marketing";i:51;s:14:"module/account";i:52;s:16:"module/affiliate";i:53;s:20:"module/amazon_button";i:54;s:19:"module/amazon_login";i:55;s:17:"module/amazon_pay";i:56;s:13:"module/banner";i:57;s:17:"module/bestseller";i:58;s:15:"module/carousel";i:59;s:15:"module/category";i:60;s:19:"module/ebay_listing";i:61;s:15:"module/featured";i:62;s:13:"module/filter";i:63;s:22:"module/google_hangouts";i:64;s:11:"module/html";i:65;s:18:"module/information";i:66;s:13:"module/latest";i:67;s:16:"module/pp_button";i:68;s:15:"module/pp_login";i:69;s:16:"module/slideshow";i:70;s:14:"module/special";i:71;s:12:"module/store";i:72;s:14:"openbay/amazon";i:73;s:22:"openbay/amazon_listing";i:74;s:22:"openbay/amazon_product";i:75;s:16:"openbay/amazonus";i:76;s:24:"openbay/amazonus_listing";i:77;s:24:"openbay/amazonus_product";i:78;s:12:"openbay/ebay";i:79;s:20:"openbay/ebay_profile";i:80;s:21:"openbay/ebay_template";i:81;s:12:"openbay/etsy";i:82;s:20:"openbay/etsy_product";i:83;s:21:"openbay/etsy_shipping";i:84;s:17:"openbay/etsy_shop";i:85;s:23:"payment/amazon_checkout";i:86;s:24:"payment/amazon_login_pay";i:87;s:24:"payment/authorizenet_aim";i:88;s:24:"payment/authorizenet_sim";i:89;s:21:"payment/bank_transfer";i:90;s:22:"payment/bluepay_hosted";i:91;s:24:"payment/bluepay_redirect";i:92;s:14:"payment/cheque";i:93;s:11:"payment/cod";i:94;s:17:"payment/firstdata";i:95;s:24:"payment/firstdata_remote";i:96;s:21:"payment/free_checkout";i:97;s:14:"payment/g2apay";i:98;s:17:"payment/globalpay";i:99;s:24:"payment/globalpay_remote";i:100;s:22:"payment/klarna_account";i:101;s:22:"payment/klarna_invoice";i:102;s:14:"payment/liqpay";i:103;s:14:"payment/nochex";i:104;s:15:"payment/paymate";i:105;s:16:"payment/paypoint";i:106;s:13:"payment/payza";i:107;s:26:"payment/perpetual_payments";i:108;s:18:"payment/pp_express";i:109;s:18:"payment/pp_payflow";i:110;s:25:"payment/pp_payflow_iframe";i:111;s:14:"payment/pp_pro";i:112;s:21:"payment/pp_pro_iframe";i:113;s:19:"payment/pp_standard";i:114;s:14:"payment/realex";i:115;s:21:"payment/realex_remote";i:116;s:22:"payment/sagepay_direct";i:117;s:22:"payment/sagepay_server";i:118;s:18:"payment/sagepay_us";i:119;s:24:"payment/securetrading_pp";i:120;s:24:"payment/securetrading_ws";i:121;s:14:"payment/skrill";i:122;s:19:"payment/twocheckout";i:123;s:28:"payment/web_payment_software";i:124;s:16:"payment/worldpay";i:125;s:16:"report/affiliate";i:126;s:25:"report/affiliate_activity";i:127;s:22:"report/affiliate_login";i:128;s:24:"report/customer_activity";i:129;s:22:"report/customer_credit";i:130;s:21:"report/customer_login";i:131;s:22:"report/customer_online";i:132;s:21:"report/customer_order";i:133;s:22:"report/customer_reward";i:134;s:16:"report/marketing";i:135;s:24:"report/product_purchased";i:136;s:21:"report/product_viewed";i:137;s:18:"report/sale_coupon";i:138;s:17:"report/sale_order";i:139;s:18:"report/sale_return";i:140;s:20:"report/sale_shipping";i:141;s:15:"report/sale_tax";i:142;s:17:"sale/custom_field";i:143;s:13:"sale/customer";i:144;s:20:"sale/customer_ban_ip";i:145;s:19:"sale/customer_group";i:146;s:10:"sale/order";i:147;s:14:"sale/recurring";i:148;s:11:"sale/return";i:149;s:12:"sale/voucher";i:150;s:18:"sale/voucher_theme";i:151;s:15:"setting/setting";i:152;s:13:"setting/store";i:153;s:16:"shipping/auspost";i:154;s:17:"shipping/citylink";i:155;s:14:"shipping/fedex";i:156;s:13:"shipping/flat";i:157;s:13:"shipping/free";i:158;s:13:"shipping/item";i:159;s:23:"shipping/parcelforce_48";i:160;s:15:"shipping/pickup";i:161;s:19:"shipping/royal_mail";i:162;s:12:"shipping/ups";i:163;s:13:"shipping/usps";i:164;s:15:"shipping/weight";i:165;s:11:"tool/backup";i:166;s:14:"tool/error_log";i:167;s:11:"tool/upload";i:168;s:12:"total/coupon";i:169;s:12:"total/credit";i:170;s:14:"total/handling";i:171;s:16:"total/klarna_fee";i:172;s:19:"total/low_order_fee";i:173;s:12:"total/reward";i:174;s:14:"total/shipping";i:175;s:15:"total/sub_total";i:176;s:9:"total/tax";i:177;s:11:"total/total";i:178;s:13:"total/voucher";i:179;s:8:"user/api";i:180;s:9:"user/user";i:181;s:20:"user/user_permission";}}');
insert into `np_user_group`(`user_group_id`,`name`,`permission`) values (10,'Demonstration','');
