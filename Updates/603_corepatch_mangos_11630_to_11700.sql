ALTER TABLE db_version CHANGE COLUMN required_11613_01_mangos_spell_bonus_data required_11646_01_mangos_item_expire_convert bit;

DROP TABLE IF EXISTS `item_expire_convert`;
CREATE TABLE `item_expire_convert` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `item` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Item Convert System';

INSERT INTO `item_expire_convert` VALUES (44623, 44625), (44625, 44627);

ALTER TABLE db_version CHANGE COLUMN required_11646_01_mangos_item_expire_convert required_11661_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN(75455,75457,75465,75474,75475,75481,71634,71640);
INSERT INTO spell_proc_event VALUES
(75455, 0x7F, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
(75457, 0x7F, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
(75465, 0x7F, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
(75474, 0x7F, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
(75475, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
(75481, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
(71634, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 30),
(71640, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 30);

ALTER TABLE db_version CHANGE COLUMN required_11661_01_mangos_spell_proc_event required_11664_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (12298);
INSERT INTO `spell_proc_event` VALUES
(12298, 0x7F, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000070, 0.000000, 0.000000,  0);

ALTER TABLE db_version CHANGE COLUMN required_11664_01_mangos_spell_proc_event required_11673_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (63086);
INSERT INTO `spell_proc_event` VALUES
(63086, 0x00, 9, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00010000, 0x00010000, 0x00000000, 0x0000000, 0.000000, 0.000000,  0);

ALTER TABLE db_version CHANGE COLUMN required_11673_01_mangos_spell_proc_event required_11678_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (64890);
INSERT INTO `spell_proc_event` VALUES
(64890, 0x00, 10, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00010000, 0x00010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x0000002, 0.000000, 0.000000,  0);

ALTER TABLE db_version CHANGE COLUMN required_11678_01_mangos_spell_proc_event required_11679_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 31785;
INSERT INTO spell_proc_event VALUES (31785, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00088800, 0x00040003, 0.000000, 0.000000,  0);

ALTER TABLE db_version CHANGE COLUMN required_11679_01_mangos_spell_proc_event required_11680_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 64824;
INSERT INTO spell_proc_event VALUES
(64824, 0x00, 7, 0x00200000, 0x00200000, 0x00200000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

ALTER TABLE db_version CHANGE COLUMN required_11680_01_mangos_spell_proc_event required_11681_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 67209;
INSERT INTO spell_proc_event VALUES
(67209, 0x00, 8, 0x00100000, 0x00100000, 0x00100000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

ALTER TABLE db_version CHANGE COLUMN required_11681_01_mangos_spell_proc_event required_11682_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 70770;
INSERT INTO spell_proc_event VALUES
(70770, 0x00, 6, 0x00000800, 0x00000800, 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

ALTER TABLE db_version CHANGE COLUMN required_11682_01_mangos_spell_proc_event required_11685_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 67115;
INSERT INTO spell_proc_event VALUES
(67115, 0x00, 15, 0x01400000, 0x01400000, 0x01400000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

ALTER TABLE db_version CHANGE COLUMN required_11685_01_mangos_spell_proc_event required_11686_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 31785;
INSERT INTO spell_proc_event VALUES
(31785, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00040003, 0.000000, 0.000000,  0);

ALTER TABLE db_version CHANGE COLUMN required_11686_01_mangos_spell_proc_event required_11687_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 64867;
INSERT INTO spell_proc_event VALUES
(64867, 0x00,  3, 0x20000021, 0x20000021, 0x20000021, 0x00001000, 0x00001000, 0x00001000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

ALTER TABLE db_version CHANGE COLUMN required_11687_01_mangos_spell_proc_event required_11688_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 64908;
INSERT INTO spell_proc_event VALUES
(64908, 0x00,  6, 0x00002000, 0x00002000, 0x00002000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

ALTER TABLE db_version CHANGE COLUMN required_11688_01_mangos_spell_proc_event required_11689_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 64912;
INSERT INTO spell_proc_event VALUES
(64912, 0x00,  6, 0x00000001, 0x00000001, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

ALTER TABLE db_version CHANGE COLUMN required_11689_01_mangos_spell_proc_event required_11690_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (70807, 70808);
INSERT INTO spell_proc_event VALUES
(70807, 0x00, 11, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000010, 0x00000010, 0x00000010, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(70808, 0x00, 11, 0x00000100, 0x00000100, 0x00000100, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0);


# SD2_2233
UPDATE creature_template SET ScriptName='npc_crystal_channel_target' WHERE entry=26712;
UPDATE gameobject_template SET ScriptName='go_relic_coffer_door' WHERE entry IN (174554, 174555, 174556, 174557, 174558, 174559, 174560, 174561, 174562, 174563, 174564, 174566);
