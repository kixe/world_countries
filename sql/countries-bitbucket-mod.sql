/**
  * Country names, continent names and ISO-3166 codes.
  *
  * @updated  2017-12-09
  * @author	  Christoph Thelen aka kixe 
  * @link     http://www.geekality.net/?p=1182
  * @link     https://bitbucket.org/svish/iso-3166-country-codes
  *
  */
DROP TABLE IF EXISTS `countries`;
DROP TABLE IF EXISTS `continents`;

CREATE TABLE IF NOT EXISTS `continents` (
  `id` int(1) NOT NULL AUTO_INCREMENT COMMENT 'Index by size',
  `code` CHAR(2) NOT NULL COMMENT 'Continent code',
  `name` VARCHAR(255),
  PRIMARY KEY (`id`,`code`)
) ENGINE=InnoDB;

INSERT INTO `continents` (`code`, `name`) VALUES
  ('AS', 'Asia'),
  ('AF', 'Africa'),
  ('NA', 'North America'),
  ('SA', 'South America'),
  ('AN', 'Antarctica'),
  ('EU', 'Europe'),
  ('OC', 'Oceania');


CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Unique index',
  `code` CHAR(2) NOT NULL COMMENT 'Two-letter country code (ISO 3166-1 alpha-2)',
  `iso3` CHAR(3) NOT NULL COMMENT 'Three-letter country code (ISO 3166-1 alpha-3)',
  `number` SMALLINT(3) ZEROFILL NOT NULL COMMENT 'Three-digit country number (ISO 3166-1 numeric)',
  `continent` int(1) NOT NULL COMMENT 'Continent index based on 7 continents ranked by size',
  `name` VARCHAR(255) NOT NULL COMMENT 'English country name',
  `full_name` VARCHAR(255) NOT NULL COMMENT 'Full English country name',
  PRIMARY KEY (`id`,`code`),
  KEY `continent` (`continent`),
  CONSTRAINT `fk_countries_continents` FOREIGN KEY (`continent`) REFERENCES `continents` (`id`)
) ENGINE=InnoDB;

INSERT INTO `countries` (`code`, `continent`, `name`, `iso3`, `number`, `full_name`) VALUES
  ('AF', 1, "Afghanistan", 'AFG', '004', "Islamic Republic of Afghanistan"),
  ('AX', 6, "Åland Islands", 'ALA', '248', "Åland Islands"),
  ('AL', 6, "Albania", 'ALB', '008', "Republic of Albania"),
  ('DZ', 2, "Algeria", 'DZA', '012', "People's Democratic Republic of Algeria"),
  ('AS', 7, "American Samoa", 'ASM', '016', "American Samoa"),
  ('AD', 6, "Andorra", 'AND', '020', "Principality of Andorra"),
  ('AO', 2, "Angola", 'AGO', '024', "Republic of Angola"),
  ('AI', 3, "Anguilla", 'AIA', '660', "Anguilla"),
  ('AQ', 5, "Antarctica", 'ATA', '010', "Antarctica (the territory South of 60 deg S)"),
  ('AG', 3, "Antigua and Barbuda", 'ATG', '028', "Antigua and Barbuda"),
  ('AR', 4, "Argentina", 'ARG', '032', "Argentine Republic"),
  ('AM', 1, "Armenia", 'ARM', '051', "Republic of Armenia"),
  ('AW', 3, "Aruba", 'ABW', '533', "Aruba"),
  ('AU', 7, "Australia", 'AUS', '036', "Commonwealth of Australia"),
  ('AT', 6, "Austria", 'AUT', '040', "Republic of Austria"),
  ('AZ', 1, "Azerbaijan", 'AZE', '031', "Republic of Azerbaijan"),
  ('BS', 3, "Bahamas", 'BHS', '044', "Commonwealth of the Bahamas"),
  ('BH', 1, "Bahrain", 'BHR', '048', "Kingdom of Bahrain"),
  ('BD', 1, "Bangladesh", 'BGD', '050', "People's Republic of Bangladesh"),
  ('BB', 3, "Barbados", 'BRB', '052', "Barbados"),
  ('BY', 6, "Belarus", 'BLR', '112', "Republic of Belarus"),
  ('BE', 6, "Belgium", 'BEL', '056', "Kingdom of Belgium"),
  ('BZ', 3, "Belize", 'BLZ', '084', "Belize"),
  ('BJ', 2, "Benin", 'BEN', '204', "Republic of Benin"),
  ('BM', 3, "Bermuda", 'BMU', '060', "Bermuda"),
  ('BT', 1, "Bhutan", 'BTN', '064', "Kingdom of Bhutan"),
  ('BO', 4, "Bolivia", 'BOL', '068', "Plurinational State of Bolivia"),
  ('BQ', 3, "Bonaire, Sint Eustatius and Saba", 'BES', '535', "Bonaire, Sint Eustatius and Saba"),
  ('BA', 6, "Bosnia and Herzegovina", 'BIH', '070', "Bosnia and Herzegovina"),
  ('BW', 2, "Botswana", 'BWA', '072', "Republic of Botswana"),
  ('BV', 5, "Bouvet Island (Bouvetøya)", 'BVT', '074', "Bouvet Island (Bouvetøya)"),
  ('BR', 4, "Brazil", 'BRA', '076', "Federative Republic of Brazil"),
  ('IO', 1, "British Indian Ocean Territory (Chagos Archipelago)", 'IOT', '086', "British Indian Ocean Territory (Chagos Archipelago)"),
  ('VG', 3, "British Virgin Islands", 'VGB', '092', "British Virgin Islands"),
  ('BN', 1, "Brunei Darussalam", 'BRN', '096', "Brunei Darussalam"),
  ('BG', 6, "Bulgaria", 'BGR', '100', "Republic of Bulgaria"),
  ('BF', 2, "Burkina Faso", 'BFA', '854', "Burkina Faso"),
  ('BI', 2, "Burundi", 'BDI', '108', "Republic of Burundi"),
  ('KH', 1, "Cambodia", 'KHM', '116', "Kingdom of Cambodia"),
  ('CM', 2, "Cameroon", 'CMR', '120', "Republic of Cameroon"),
  ('CA', 3, "Canada", 'CAN', '124', "Canada"),
  ('CV', 2, "Cabo Verde", 'CPV', '132', "Republic of Cabo Verde"),
  ('KY', 3, "Cayman Islands", 'CYM', '136', "Cayman Islands"),
  ('CF', 2, "Central African Republic", 'CAF', '140', "Central African Republic"),
  ('TD', 2, "Chad", 'TCD', '148', "Republic of Chad"),
  ('CL', 4, "Chile", 'CHL', '152', "Republic of Chile"),
  ('CN', 1, "China", 'CHN', '156', "People's Republic of China"),
  ('CX', 1, "Christmas Island", 'CXR', '162', "Christmas Island"),
  ('CC', 1, "Cocos (Keeling) Islands", 'CCK', '166', "Cocos (Keeling) Islands"),
  ('CO', 4, "Colombia", 'COL', '170', "Republic of Colombia"),
  ('KM', 2, "Comoros", 'COM', '174', "Union of the Comoros"),
  ('CD', 2, "Congo", 'COD', '180', "Democratic Republic of the Congo"),
  ('CG', 2, "Congo", 'COG', '178', "Republic of the Congo"),
  ('CK', 7, "Cook Islands", 'COK', '184', "Cook Islands"),
  ('CR', 3, "Costa Rica", 'CRI', '188', "Republic of Costa Rica"),
  ('CI', 2, "Cote d'Ivoire", 'CIV', '384', "Republic of Cote d'Ivoire"),
  ('HR', 6, "Croatia", 'HRV', '191', "Republic of Croatia"),
  ('CU', 3, "Cuba", 'CUB', '192', "Republic of Cuba"),
  ('CW', 3, "Curaçao", 'CUW', '531', "Curaçao"),
  ('CY', 1, "Cyprus", 'CYP', '196', "Republic of Cyprus"),
  ('CZ', 6, "Czechia", 'CZE', '203', "Czech Republic"),
  ('DK', 6, "Denmark", 'DNK', '208', "Kingdom of Denmark"),
  ('DJ', 2, "Djibouti", 'DJI', '262', "Republic of Djibouti"),
  ('DM', 3, "Dominica", 'DMA', '212', "Commonwealth of Dominica"),
  ('DO', 3, "Dominican Republic", 'DOM', '214', "Dominican Republic"),
  ('EC', 4, "Ecuador", 'ECU', '218', "Republic of Ecuador"),
  ('EG', 2, "Egypt", 'EGY', '818', "Arab Republic of Egypt"),
  ('SV', 3, "El Salvador", 'SLV', '222', "Republic of El Salvador"),
  ('GQ', 2, "Equatorial Guinea", 'GNQ', '226', "Republic of Equatorial Guinea"),
  ('ER', 2, "Eritrea", 'ERI', '232', "State of Eritrea"),
  ('EE', 6, "Estonia", 'EST', '233', "Republic of Estonia"),
  ('ET', 2, "Ethiopia", 'ETH', '231', "Federal Democratic Republic of Ethiopia"),
  ('FO', 6, "Faroe Islands", 'FRO', '234', "Faroe Islands"),
  ('FK', 4, "Falkland Islands (Malvinas)", 'FLK', '238', "Falkland Islands (Malvinas)"),
  ('FJ', 7, "Fiji", 'FJI', '242', "Republic of Fiji"),
  ('FI', 6, "Finland", 'FIN', '246', "Republic of Finland"),
  ('FR', 6, "France", 'FRA', '250', "French Republic"),
  ('GF', 4, "French Guiana", 'GUF', '254', "French Guiana"),
  ('PF', 7, "French Polynesia", 'PYF', '258', "French Polynesia"),
  ('TF', 5, "French Southern Territories", 'ATF', '260', "French Southern Territories"),
  ('GA', 2, "Gabon", 'GAB', '266', "Gabonese Republic"),
  ('GM', 2, "Gambia", 'GMB', '270', "Islamic Republic of the Gambia"),
  ('GE', 1, "Georgia", 'GEO', '268', "Georgia"),
  ('DE', 6, "Germany", 'DEU', '276', "Federal Republic of Germany"),
  ('GH', 2, "Ghana", 'GHA', '288', "Republic of Ghana"),
  ('GI', 6, "Gibraltar", 'GIB', '292', "Gibraltar"),
  ('GR', 6, "Greece", 'GRC', '300', "Hellenic Republic of Greece"),
  ('GL', 3, "Greenland", 'GRL', '304', "Greenland"),
  ('GD', 3, "Grenada", 'GRD', '308', "Grenada"),
  ('GP', 3, "Guadeloupe", 'GLP', '312', "Guadeloupe"),
  ('GU', 7, "Guam", 'GUM', '316', "Guam"),
  ('GT', 3, "Guatemala", 'GTM', '320', "Republic of Guatemala"),
  ('GG', 6, "Guernsey", 'GGY', '831', "Bailiwick of Guernsey"),
  ('GN', 2, "Guinea", 'GIN', '324', "Republic of Guinea"),
  ('GW', 2, "Guinea-Bissau", 'GNB', '624', "Republic of Guinea-Bissau"),
  ('GY', 4, "Guyana", 'GUY', '328', "Co-operative Republic of Guyana"),
  ('HT', 3, "Haiti", 'HTI', '332', "Republic of Haiti"),
  ('HM', 5, "Heard Island and McDonald Islands", 'HMD', '334', "Heard Island and McDonald Islands"),
  ('VA', 6, "Holy See (Vatican City State)", 'VAT', '336', "Holy See (Vatican City State)"),
  ('HN', 3, "Honduras", 'HND', '340', "Republic of Honduras"),
  ('HK', 1, "Hong Kong", 'HKG', '344', "Hong Kong Special Administrative Region of China"),
  ('HU', 6, "Hungary", 'HUN', '348', "Hungary"),
  ('IS', 6, "Iceland", 'ISL', '352', "Republic of Iceland"),
  ('IN', 1, "India", 'IND', '356', "Republic of India"),
  ('ID', 1, "Indonesia", 'IDN', '360', "Republic of Indonesia"),
  ('IR', 1, "Iran", 'IRN', '364', "Islamic Republic of Iran"),
  ('IQ', 1, "Iraq", 'IRQ', '368', "Republic of Iraq"),
  ('IE', 6, "Ireland", 'IRL', '372', "Ireland"),
  ('IM', 6, "Isle of Man", 'IMN', '833', "Isle of Man"),
  ('IL', 1, "Israel", 'ISR', '376', "State of Israel"),
  ('IT', 6, "Italy", 'ITA', '380', "Italian Republic"),
  ('JM', 3, "Jamaica", 'JAM', '388', "Jamaica"),
  ('JP', 1, "Japan", 'JPN', '392', "Japan"),
  ('JE', 6, "Jersey", 'JEY', '832', "Bailiwick of Jersey"),
  ('JO', 1, "Jordan", 'JOR', '400', "Hashemite Kingdom of Jordan"),
  ('KZ', 1, "Kazakhstan", 'KAZ', '398', "Republic of Kazakhstan"),
  ('KE', 2, "Kenya", 'KEN', '404', "Republic of Kenya"),
  ('KI', 7, "Kiribati", 'KIR', '296', "Republic of Kiribati"),
  ('KP', 1, "Korea", 'PRK', '408', "Democratic People's Republic of Korea"),
  ('KR', 1, "Korea", 'KOR', '410', "Republic of Korea"),
  ('KW', 1, "Kuwait", 'KWT', '414', "State of Kuwait"),
  ('KG', 1, "Kyrgyz Republic", 'KGZ', '417', "Kyrgyz Republic"),
  ('LA', 1, "Lao People's Democratic Republic", 'LAO', '418', "Lao People's Democratic Republic"),
  ('LV', 6, "Latvia", 'LVA', '428', "Republic of Latvia"),
  ('LB', 1, "Lebanon", 'LBN', '422', "Lebanese Republic"),
  ('LS', 2, "Lesotho", 'LSO', '426', "Kingdom of Lesotho"),
  ('LR', 2, "Liberia", 'LBR', '430', "Republic of Liberia"),
  ('LY', 2, "Libya", 'LBY', '434', "Libya"),
  ('LI', 6, "Liechtenstein", 'LIE', '438', "Principality of Liechtenstein"),
  ('LT', 6, "Lithuania", 'LTU', '440', "Republic of Lithuania"),
  ('LU', 6, "Luxembourg", 'LUX', '442', "Grand Duchy of Luxembourg"),
  ('MO', 1, "Macao", 'MAC', '446', "Macao Special Administrative Region of China"),
  ('MK', 6, "Macedonia", 'MKD', '807', "Republic of Macedonia"),
  ('MG', 2, "Madagascar", 'MDG', '450', "Republic of Madagascar"),
  ('MW', 2, "Malawi", 'MWI', '454', "Republic of Malawi"),
  ('MY', 1, "Malaysia", 'MYS', '458', "Malaysia"),
  ('MV', 1, "Maldives", 'MDV', '462', "Republic of Maldives"),
  ('ML', 2, "Mali", 'MLI', '466', "Republic of Mali"),
  ('MT', 6, "Malta", 'MLT', '470', "Republic of Malta"),
  ('MH', 7, "Marshall Islands", 'MHL', '584', "Republic of the Marshall Islands"),
  ('MQ', 3, "Martinique", 'MTQ', '474', "Martinique"),
  ('MR', 2, "Mauritania", 'MRT', '478', "Islamic Republic of Mauritania"),
  ('MU', 2, "Mauritius", 'MUS', '480', "Republic of Mauritius"),
  ('YT', 2, "Mayotte", 'MYT', '175', "Mayotte"),
  ('MX', 3, "Mexico", 'MEX', '484', "United Mexican States"),
  ('FM', 7, "Micronesia", 'FSM', '583', "Federated States of Micronesia"),
  ('MD', 6, "Moldova", 'MDA', '498', "Republic of Moldova"),
  ('MC', 6, "Monaco", 'MCO', '492', "Principality of Monaco"),
  ('MN', 1, "Mongolia", 'MNG', '496', "Mongolia"),
  ('ME', 6, "Montenegro", 'MNE', '499', "Montenegro"),
  ('MS', 3, "Montserrat", 'MSR', '500', "Montserrat"),
  ('MA', 2, "Morocco", 'MAR', '504', "Kingdom of Morocco"),
  ('MZ', 2, "Mozambique", 'MOZ', '508', "Republic of Mozambique"),
  ('MM', 1, "Myanmar", 'MMR', '104', "Republic of the Union of Myanmar"),
  ('NA', 2, "Namibia", 'NAM', '516', "Republic of Namibia"),
  ('NR', 7, "Nauru", 'NRU', '520', "Republic of Nauru"),
  ('NP', 1, "Nepal", 'NPL', '524', "Federal Democratic Republic of Nepal"),
  ('NL', 6, "Netherlands", 'NLD', '528', "Kingdom of the Netherlands"),
  ('NC', 7, "New Caledonia", 'NCL', '540', "New Caledonia"),
  ('NZ', 7, "New Zealand", 'NZL', '554', "New Zealand"),
  ('NI', 3, "Nicaragua", 'NIC', '558', "Republic of Nicaragua"),
  ('NE', 2, "Niger", 'NER', '562', "Republic of Niger"),
  ('NG', 2, "Nigeria", 'NGA', '566', "Federal Republic of Nigeria"),
  ('NU', 7, "Niue", 'NIU', '570', "Niue"),
  ('NF', 7, "Norfolk Island", 'NFK', '574', "Norfolk Island"),
  ('MP', 7, "Northern Mariana Islands", 'MNP', '580', "Commonwealth of the Northern Mariana Islands"),
  ('NO', 6, "Norway", 'NOR', '578', "Kingdom of Norway"),
  ('OM', 1, "Oman", 'OMN', '512', "Sultanate of Oman"),
  ('PK', 1, "Pakistan", 'PAK', '586', "Islamic Republic of Pakistan"),
  ('PW', 7, "Palau", 'PLW', '585', "Republic of Palau"),
  ('PS', 1, "Palestine", 'PSE', '275', "State of Palestine"),
  ('PA', 3, "Panama", 'PAN', '591', "Republic of Panama"),
  ('PG', 7, "Papua New Guinea", 'PNG', '598', "Independent State of Papua New Guinea"),
  ('PY', 4, "Paraguay", 'PRY', '600', "Republic of Paraguay"),
  ('PE', 4, "Peru", 'PER', '604', "Republic of Peru"),
  ('PH', 1, "Philippines", 'PHL', '608', "Republic of the Philippines"),
  ('PN', 7, "Pitcairn Islands", 'PCN', '612', "Pitcairn Islands"),
  ('PL', 6, "Poland", 'POL', '616', "Republic of Poland"),
  ('PT', 6, "Portugal", 'PRT', '620', "Portuguese Republic"),
  ('PR', 3, "Puerto Rico", 'PRI', '630', "Commonwealth of Puerto Rico"),
  ('QA', 1, "Qatar", 'QAT', '634', "State of Qatar"),
  ('RE', 2, "Réunion", 'REU', '638', "Réunion"),
  ('RO', 6, "Romania", 'ROU', '642', "Romania"),
  ('RU', 6, "Russian Federation", 'RUS', '643', "Russian Federation"),
  ('RW', 2, "Rwanda", 'RWA', '646', "Republic of Rwanda"),
  ('BL', 3, "Saint Barthélemy", 'BLM', '652', "Saint Barthélemy"),
  ('SH', 2, "Saint Helena, Ascension and Tristan da Cunha", 'SHN', '654', "Saint Helena, Ascension and Tristan da Cunha"),
  ('KN', 3, "Saint Kitts and Nevis", 'KNA', '659', "Federation of Saint Kitts and Nevis"),
  ('LC', 3, "Saint Lucia", 'LCA', '662', "Saint Lucia"),
  ('MF', 3, "Saint Martin", 'MAF', '663', "Saint Martin (French part)"),
  ('PM', 3, "Saint Pierre and Miquelon", 'SPM', '666', "Saint Pierre and Miquelon"),
  ('VC', 3, "Saint Vincent and the Grenadines", 'VCT', '670', "Saint Vincent and the Grenadines"),
  ('WS', 7, "Samoa", 'WSM', '882', "Independent State of Samoa"),
  ('SM', 6, "San Marino", 'SMR', '674', "Republic of San Marino"),
  ('ST', 2, "Sao Tome and Principe", 'STP', '678', "Democratic Republic of Sao Tome and Principe"),
  ('SA', 1, "Saudi Arabia", 'SAU', '682', "Kingdom of Saudi Arabia"),
  ('SN', 2, "Senegal", 'SEN', '686', "Republic of Senegal"),
  ('RS', 6, "Serbia", 'SRB', '688', "Republic of Serbia"),
  ('SC', 2, "Seychelles", 'SYC', '690', "Republic of Seychelles"),
  ('SL', 2, "Sierra Leone", 'SLE', '694', "Republic of Sierra Leone"),
  ('SG', 1, "Singapore", 'SGP', '702', "Republic of Singapore"),
  ('SX', 3, "Sint Maarten (Dutch part)", 'SXM', '534', "Sint Maarten (Dutch part)"),
  ('SK', 6, "Slovakia (Slovak Republic)", 'SVK', '703', "Slovakia (Slovak Republic)"),
  ('SI', 6, "Slovenia", 'SVN', '705', "Republic of Slovenia"),
  ('SB', 7, "Solomon Islands", 'SLB', '090', "Solomon Islands"),
  ('SO', 2, "Somalia", 'SOM', '706', "Federal Republic of Somalia"),
  ('ZA', 2, "South Africa", 'ZAF', '710', "Republic of South Africa"),
  ('GS', 5, "South Georgia and the South Sandwich Islands", 'SGS', '239', "South Georgia and the South Sandwich Islands"),
  ('SS', 2, "South Sudan", 'SSD', '728', "Republic of South Sudan"),
  ('ES', 6, "Spain", 'ESP', '724', "Kingdom of Spain"),
  ('LK', 1, "Sri Lanka", 'LKA', '144', "Democratic Socialist Republic of Sri Lanka"),
  ('SD', 2, "Sudan", 'SDN', '729', "Republic of Sudan"),
  ('SR', 4, "Suriname", 'SUR', '740', "Republic of Suriname"),
  ('SJ', 6, "Svalbard & Jan Mayen Islands", 'SJM', '744', "Svalbard & Jan Mayen Islands"),
  ('SZ', 2, "Swaziland", 'SWZ', '748', "Kingdom of Swaziland"),
  ('SE', 6, "Sweden", 'SWE', '752', "Kingdom of Sweden"),
  ('CH', 6, "Switzerland", 'CHE', '756', "Swiss Confederation"),
  ('SY', 1, "Syrian Arab Republic", 'SYR', '760', "Syrian Arab Republic"),
  ('TW', 1, "Taiwan", 'TWN', '158', "Taiwan, Province of China"),
  ('TJ', 1, "Tajikistan", 'TJK', '762', "Republic of Tajikistan"),
  ('TZ', 2, "Tanzania", 'TZA', '834', "United Republic of Tanzania"),
  ('TH', 1, "Thailand", 'THA', '764', "Kingdom of Thailand"),
  ('TL', 1, "Timor-Leste", 'TLS', '626', "Democratic Republic of Timor-Leste"),
  ('TG', 2, "Togo", 'TGO', '768', "Togolese Republic"),
  ('TK', 7, "Tokelau", 'TKL', '772', "Tokelau"),
  ('TO', 7, "Tonga", 'TON', '776', "Kingdom of Tonga"),
  ('TT', 3, "Trinidad and Tobago", 'TTO', '780', "Republic of Trinidad and Tobago"),
  ('TN', 2, "Tunisia", 'TUN', '788', "Tunisian Republic"),
  ('TR', 1, "Turkey", 'TUR', '792', "Republic of Turkey"),
  ('TM', 1, "Turkmenistan", 'TKM', '795', "Turkmenistan"),
  ('TC', 3, "Turks and Caicos Islands", 'TCA', '796', "Turks and Caicos Islands"),
  ('TV', 7, "Tuvalu", 'TUV', '798', "Tuvalu"),
  ('UG', 2, "Uganda", 'UGA', '800', "Republic of Uganda"),
  ('UA', 6, "Ukraine", 'UKR', '804', "Ukraine"),
  ('AE', 1, "United Arab Emirates", 'ARE', '784', "United Arab Emirates"),
  ('GB', 6, "United Kingdom of Great Britain & Northern Ireland", 'GBR', '826', "United Kingdom of Great Britain & Northern Ireland"),
  ('US', 3, "United States of America", 'USA', '840', "United States of America"),
  ('UM', 7, "United States Minor Outlying Islands", 'UMI', '581', "United States Minor Outlying Islands"),
  ('VI', 3, "United States Virgin Islands", 'VIR', '850', "United States Virgin Islands"),
  ('UY', 4, "Uruguay", 'URY', '858', "Eastern Republic of Uruguay"),
  ('UZ', 1, "Uzbekistan", 'UZB', '860', "Republic of Uzbekistan"),
  ('VU', 7, "Vanuatu", 'VUT', '548', "Republic of Vanuatu"),
  ('VE', 4, "Venezuela", 'VEN', '862', "Bolivarian Republic of Venezuela"),
  ('VN', 1, "Vietnam", 'VNM', '704', "Socialist Republic of Vietnam"),
  ('WF', 7, "Wallis and Futuna", 'WLF', '876', "Wallis and Futuna"),
  ('EH', 2, "Western Sahara", 'ESH', '732', "Western Sahara"),
  ('YE', 1, "Yemen", 'YEM', '887', "Yemen"),
  ('ZM', 2, "Zambia", 'ZMB', '894', "Republic of Zambia"),
  ('ZW', 2, "Zimbabwe", 'ZWE', '716', "Republic of Zimbabwe");
