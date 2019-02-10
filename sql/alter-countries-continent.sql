/**
  * merging tables
  *
  */

-- ALTER TABLE `countries` ADD COLUMN `continent` int(1) NOT NULL COMMENT 'Continent index based on 7 continents ranked by size' AFTER `alpha_3`;
-- REPLACE INTO `countries` (`id`, `numeric`, `alpha_2`, `alpha_3`, `continent`, `name_en`, `name_de`) SELECT countries.id, countries_2.number, countries.alpha_2, countries.alpha_3, countries_2.continent, countries.name_en, countries.name_de FROM countries, countries_2 WHERE countries.numeric LIKE countries_2.number;
