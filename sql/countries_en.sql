--
--  List of world's countries containing the official short names in English as given by ISO 3166-1,
--  the ISO 3166-1-alpha-2 code provided by the International Organization for Standardization
--  (http://www.iso.org/iso/prods-services/iso3166ma/02iso-3166-code-lists/country_names_and_code_elements)
--  and the ISO alpha-3 code provided by the United Nations Statistics Division
--  (http://unstats.un.org/unsd/methods/m49/m49alpha.htm)
--
--  compiled by Stefan Gabos
--  version 1.2.1 (last revision: January 27, 2016)
--  version 1.2.2 (last revision: Februrary 09, 2017) added numeric iso codes by @kixe
--
--  http://stefangabos.ro/other-projects/list-of-world-countries-with-national-flags/
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL auto_increment,
  `numeric` smallint(3) ZEROFILL UNSIGNED NOT NULL default 0,
  `alpha_2` varchar(2) NOT NULL default '',
  `alpha_3` varchar(3) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `countries` (`name`, `alpha_2`, `alpha_3`, `numeric`) VALUES
    ('Afghanistan', 'af', 'afg', 4 ),
    ('Aland Islands', 'ax', 'ala', 248),
    ('Albania', 'al', 'alb', 8),
    ('Algeria', 'dz', 'dza', 12),
    ('American Samoa', 'as', 'asm', 16),
    ('Andorra', 'ad', 'and', 20),
    ('Angola', 'ao', 'ago', 24),
    ('Anguilla', 'ai', 'aia', 660),
    ('Antarctica', 'aq', 'ata', 10),
    ('Antigua and Barbuda', 'ag', 'atg', 28),
    ('Argentina', 'ar', 'arg', 32),
    ('Armenia', 'am', 'arm', 51),
    ('Aruba', 'aw', 'abw', 533),
    ('Australia', 'au', 'aus', 36),
    ('Austria', 'at', 'aut', 40),
    ('Azerbaijan', 'az', 'aze', 31),
    ('Bahamas', 'bs', 'bhs', 44),
    ('Bahrain', 'bh', 'bhr', 48),
    ('Bangladesh', 'bd', 'bgd', 50),
    ('Barbados', 'bb', 'brb', 52),
    ('Belarus', 'by', 'blr', 112),
    ('Belgium', 'be', 'bel', 56),
    ('Belize', 'bz', 'blz', 84),
    ('Benin', 'bj', 'ben', 204),
    ('Bermuda', 'bm', 'bmu', 60),
    ('Bhutan', 'bt', 'btn', 64),
    ('Bolivia, Plurinational State of', 'bo', 'bol', 68),
    ('Bonaire, Sint Eustatius and Saba', 'bq', 'bes', 535),
    ('Bosnia and Herzegovina', 'ba', 'bih', 70),
    ('Botswana', 'bw', 'bwa', 72),
    ('Bouvet Island', 'bv', 'bvt', 74),
    ('Brazil', 'br', 'bra', 76),
    ('British Indian Ocean Territory', 'io', 'iot', 86),
    ('Brunei Darussalam', 'bn', 'brn', 96),
    ('Bulgaria', 'bg', 'bgr', 100),
    ('Burkina Faso', 'bf', 'bfa', 854),
    ('Burundi', 'bi', 'bdi', 108),
    ('Cambodia', 'kh', 'khm', 116),
    ('Cameroon', 'cm', 'cmr', 120),
    ('Canada', 'ca', 'can', 124),
    ('Cape Verde', 'cv', 'cpv', 132),
    ('Cayman Islands', 'ky', 'cym', 136),
    ('Central African Republic', 'cf', 'caf', 140),
    ('Chad', 'td', 'tcd', 148),
    ('Chile', 'cl', 'chl', 152),
    ('China', 'cn', 'chn', 156),
    ('Christmas Island', 'cx', 'cxr', 162),
    ('Cocos (Keeling) Islands', 'cc', 'cck', 166),
    ('Colombia', 'co', 'col', 170),
    ('Comoros', 'km', 'com', 174),
    ('Congo', 'cg', 'cog', 178),
    ('Congo, The Democratic Republic of the', 'cd', 'cod', 180),
    ('Cook Islands', 'ck', 'cok', 184),
    ('Costa Rica', 'cr', 'cri', 188),
    ('Cote d\'Ivoire', 'ci', 'civ', 384),
    ('Croatia', 'hr', 'hrv', 191),
    ('Cuba', 'cu', 'cub', 192),
    ('Curaçao', 'cw', 'cuw', 531),
    ('Cyprus', 'cy', 'cyp', 196),
    ('Czech Republic', 'cz', 'cze', 203),
    ('Denmark', 'dk', 'dnk', 208),
    ('Djibouti', 'dj', 'dji', 262),
    ('Dominica', 'dm', 'dma', 212),
    ('Dominican Republic', 'do', 'dom', 214),
    ('Ecuador', 'ec', 'ecu', 218),
    ('Egypt', 'eg', 'egy', 818),
    ('El Salvador', 'sv', 'slv', 222),
    ('Equatorial Guinea', 'gq', 'gnq', 226),
    ('Eritrea', 'er', 'eri', 232),
    ('Estonia', 'ee', 'est', 233),
    ('Ethiopia', 'et', 'eth', 231),
    ('Falkland Islands (Malvinas)', 'fk', 'flk', 238),
    ('Faroe Islands', 'fo', 'fro', 234),
    ('Fiji', 'fj', 'fji', 242),
    ('Finland', 'fi', 'fin', 246),
    ('France', 'fr', 'fra', 250),
    ('French Guiana', 'gf', 'guf', 254),
    ('French Polynesia', 'pf', 'pyf', 258),
    ('French Southern Territories', 'tf', 'atf', 260),
    ('Gabon', 'ga', 'gab', 266),
    ('Gambia', 'gm', 'gmb', 270),
    ('Georgia', 'ge', 'geo', 268),
    ('Germany', 'de', 'deu', 276),
    ('Ghana', 'gh', 'gha', 288),
    ('Gibraltar', 'gi', 'gib', 292),
    ('Greece', 'gr', 'grc', 300),
    ('Greenland', 'gl', 'grl', 304),
    ('Grenada', 'gd', 'grd', 308),
    ('Guadeloupe', 'gp', 'glp', 312),
    ('Guam', 'gu', 'gum', 316),
    ('Guatemala', 'gt', 'gtm', 320),
    ('Guernsey', 'gg', 'ggy', 831),
    ('Guinea', 'gn', 'gin', 324),
    ('Guinea-Bissau', 'gw', 'gnb', 624),
    ('Guyana', 'gy', 'guy', 328),
    ('Haiti', 'ht', 'hti', 332),
    ('Heard Island and McDonald Islands', 'hm', 'hmd', 334),
    ('Holy See (Vatican City State)', 'va', 'vat', 336),
    ('Honduras', 'hn', 'hnd', 340),
    ('Hong Kong', 'hk', 'hkg', 344),
    ('Hungary', 'hu', 'hun', 348),
    ('Iceland', 'is', 'isl', 352),
    ('India', 'in', 'ind', 356),
    ('Indonesia', 'id', 'idn', 360),
    ('Iran, Islamic Republic of', 'ir', 'irn', 364),
    ('Iraq', 'iq', 'irq', 368),
    ('Ireland', 'ie', 'irl', 372),
    ('Isle of Man', 'im', 'imn', 833),
    ('Israel', 'il', 'isr', 376),
    ('Italy', 'it', 'ita', 380),
    ('Jamaica', 'jm', 'jam', 388),
    ('Japan', 'jp', 'jpn', 392),
    ('Jersey', 'je', 'jey', 832),
    ('Jordan', 'jo', 'jor', 400),
    ('Kazakhstan', 'kz', 'kaz', 398),
    ('Kenya', 'ke', 'ken', 404),
    ('Kiribati', 'ki', 'kir', 296),
    ('Korea, Democratic People\'s Republic of', 'kp', 'prk', 408),
    ('Korea, Republic of', 'kr', 'kor', 410),
    ('Kuwait', 'kw', 'kwt', 414),
    ('Kyrgyzstan', 'kg', 'kgz', 417),
    ('Lao People\'s Democratic Republic', 'la', 'lao', 418),
    ('Latvia', 'lv', 'lva', 428),
    ('Lebanon', 'lb', 'lbn', 422),
    ('Lesotho', 'ls', 'lso', 426),
    ('Liberia', 'lr', 'lbr', 430),
    ('Libyan Arab Jamahiriya', 'ly', 'lby', 434),
    ('Liechtenstein', 'li', 'lie', 438),
    ('Lithuania', 'lt', 'ltu', 440),
    ('Luxembourg', 'lu', 'lux', 442),
    ('Macao', 'mo', 'mac', 446),
    ('Macedonia, The former Yugoslav Republic of', 'mk', 'mkd', 807),
    ('Madagascar', 'mg', 'mdg', 450),
    ('Malawi', 'mw', 'mwi', 454),
    ('Malaysia', 'my', 'mys', 458),
    ('Maldives', 'mv', 'mdv', 462),
    ('Mali', 'ml', 'mli', 466),
    ('Malta', 'mt', 'mlt', 470),
    ('Marshall Islands', 'mh', 'mhl', 504),
    ('Martinique', 'mq', 'mtq', 584),
    ('Mauritania', 'mr', 'mrt', 478),
    ('Mauritius', 'mu', 'mus', 480),
    ('Mayotte', 'yt', 'myt', 175),
    ('Mexico', 'mx', 'mex', 484),
    ('Micronesia, Federated States of', 'fm', 'fsm', 583),
    ('Moldova, Republic of', 'md', 'mda', 498),
    ('Monaco', 'mc', 'mco', 492),
    ('Mongolia', 'mn', 'mng', 496),
    ('Montenegro', 'me', 'mne', 499),
    ('Montserrat', 'ms', 'msr', 500),
    ('Morocco', 'ma', 'mar', 504),
    ('Mozambique', 'mz', 'moz', 508),
    ('Myanmar', 'mm', 'mmr', 104),
    ('Namibia', 'na', 'nam', 516),
    ('Nauru', 'nr', 'nru', 520),
    ('Nepal', 'np', 'npl', 524),
    ('Netherlands', 'nl', 'nld', 528),
    ('New Caledonia', 'nc', 'ncl', 540),
    ('New Zealand', 'nz', 'nzl', 554),
    ('Nicaragua', 'ni', 'nic', 558),
    ('Niger', 'ne', 'ner', 562),
    ('Nigeria', 'ng', 'nga', 566),
    ('Niue', 'nu', 'niu', 570),
    ('Norfolk Island', 'nf', 'nfk', 574),
    ('Northern Mariana Islands', 'mp', 'mnp', 580),
    ('Norway', 'no', 'nor', 578),
    ('Oman', 'om', 'omn', 512),
    ('Pakistan', 'pk', 'pak', 586),
    ('Palau', 'pw', 'plw', 585),
    ('Palestinian Territory, Occupied', 'ps', 'pse', 275),
    ('Panama', 'pa', 'pan', 591),
    ('Papua New Guinea', 'pg', 'png', 598),
    ('Paraguay', 'py', 'pry', 600),
    ('Peru', 'pe', 'per', 604),
    ('Philippines', 'ph', 'phl', 608),
    ('Pitcairn', 'pn', 'pcn', 612),
    ('Poland', 'pl', 'pol', 616),
    ('Portugal', 'pt', 'prt', 620),
    ('Puerto Rico', 'pr', 'pri', 630),
    ('Qatar', 'qa', 'qat', 634),
    ('Reunion', 're', 'reu', 638),
    ('Romania', 'ro', 'rou', 642),
    ('Russian Federation', 'ru', 'rus', 643),
    ('Rwanda', 'rw', 'rwa', 646),
    ('Saint Barthelemy', 'bl', 'blm', 652),
    ('Saint Helena, Ascension and Tristan Da Cunha', 'sh', 'shn', 654),
    ('Saint Kitts and Nevis', 'kn', 'kna', 659),
    ('Saint Lucia', 'lc', 'lca', 662),
    ('Saint Martin (French Part)', 'mf', 'maf', 663),
    ('Saint Pierre and Miquelon', 'pm', 'spm', 666),
    ('Saint Vincent and The Grenadines', 'vc', 'vct', 670),
    ('Samoa', 'ws', 'wsm', 882),
    ('San Marino', 'sm', 'smr', 674),
    ('Sao Tome and Principe', 'st', 'stp', 678),
    ('Saudi Arabia', 'sa', 'sau', 682),
    ('Senegal', 'sn', 'sen', 686),
    ('Serbia', 'rs', 'srb', 688),
    ('Seychelles', 'sc', 'syc', 690),
    ('Sierra Leone', 'sl', 'sle', 694),
    ('Singapore', 'sg', 'sgp', 702),
    ('Sint Maarten (Dutch Part)', 'sx', 'sxm', 534),
    ('Slovakia', 'sk', 'svk', 703),
    ('Slovenia', 'si', 'svn', 705),
    ('Solomon Islands', 'sb', 'slb', 90),
    ('Somalia', 'so', 'som', 706),
    ('South Africa', 'za', 'zaf', 710),
    ('South Georgia and The South Sandwich Islands', 'gs', 'sgs', 239),
    ('South Sudan', 'ss', 'ssd', 728),
    ('Spain', 'es', 'esp', 724),
    ('Sri Lanka', 'lk', 'lka', 144),
    ('Sudan', 'sd', 'sdn', 729),
    ('Suriname', 'sr', 'sur', 740),
    ('Svalbard and Jan Mayen', 'sj', 'sjm', 744),
    ('Swaziland', 'sz', 'swz', 748),
    ('Sweden', 'se', 'swe', 752),
    ('Switzerland', 'ch', 'che', 756),
    ('Syrian Arab Republic', 'sy', 'syr', 760),
    ('Taiwan, Province of China', 'tw', 'twn', 158),
    ('Tajikistan', 'tj', 'tjk', 762),
    ('Tanzania, United Republic of', 'tz', 'tza', 834),
    ('Thailand', 'th', 'tha', 764),
    ('Timor-Leste', 'tl', 'tls', 626),
    ('Togo', 'tg', 'tgo', 768),
    ('Tokelau', 'tk', 'tkl', 772),
    ('Tonga', 'to', 'ton', 776),
    ('Trinidad and Tobago', 'tt', 'tto', 780),
    ('Tunisia', 'tn', 'tun', 788),
    ('Turkey', 'tr', 'tur', 792),
    ('Turkmenistan', 'tm', 'tkm', 795),
    ('Turks and Caicos Islands', 'tc', 'tca', 796),
    ('Tuvalu', 'tv', 'tuv', 798),
    ('Uganda', 'ug', 'uga', 800),
    ('Ukraine', 'ua', 'ukr', 804),
    ('United Arab Emirates', 'ae', 'are', 784),
    ('United Kingdom', 'gb', 'gbr', 826),
    ('United States', 'us', 'usa', 840),
    ('United States Minor Outlying Islands', 'um', 'umi', 581),
    ('Uruguay', 'uy', 'ury', 858),
    ('Uzbekistan', 'uz', 'uzb', 860),
    ('Vanuatu', 'vu', 'vut', 548),
    ('Venezuela, Bolivarian Republic of', 've', 'ven', 862),
    ('Viet Nam', 'vn', 'vnm', 704),
    ('Virgin Islands, British', 'vg', 'vgb', 92),
    ('Virgin Islands, U.S.', 'vi', 'vir', 850),
    ('Wallis and Futuna', 'wf', 'wlf', 876),
    ('Western Sahara', 'eh', 'esh', 732),
    ('Yemen', 'ye', 'yem', 887),
    ('Zambia', 'zm', 'zmb', 894),
    ('Zimbabwe', 'zw', 'zwe', 716)