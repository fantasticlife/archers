--
-- Generated from mysql2pgsql.perl
-- http://gborg.postgresql.org/project/mysql2psql/
-- (c) 2001 - 2007 Jose M. Duarte, Joseph Speigle
--

-- warnings are printed for drop tables if they do not exist
-- please see http://archives.postgresql.org/pgsql-novice/2004-10/msg00158.php

-- ##############################################################
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
-- MySQL dump 10.11
--
-- Host: localhost    Database: mengine
-- ------------------------------------------------------
-- Server version	5.0.77


--
-- Table structure for table artifact_types
--

DROP TABLE "artifact_types" CASCADE\g
DROP SEQUENCE "artifact_types_id_seq" CASCADE ;

CREATE SEQUENCE "artifact_types_id_seq"  START WITH 3 ;

CREATE TABLE  "artifact_types" (
   "id" integer DEFAULT nextval('"artifact_types_id_seq"') NOT NULL,
   "created_at"   timestamp without time zone default NULL, 
   "updated_at"   timestamp without time zone default NULL, 
   primary key ("id")
)    ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE artifact_types DISABLE KEYS */;

--
-- Dumping data for table artifact_types
--

INSERT INTO "artifact_types" VALUES (1,E'vessel',E'2009-11-17 17:50:05',E'2009-11-17 17:50:05');
INSERT INTO "artifact_types" VALUES (2,E'object',E'2009-11-17 17:50:09',E'2009-11-17 17:50:09');

/*!40000 ALTER TABLE artifact_types ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE INDEX "artifact_types_255_idx" ON "artifact_types" USING btree ("255");
CREATE INDEX "artifact_types_key_idx" ON "artifact_types" USING btree ("key");

--
-- Table structure for table artifacts
--

DROP TABLE "artifacts" CASCADE\g
DROP SEQUENCE "artifacts_id_seq" CASCADE ;

CREATE SEQUENCE "artifacts_id_seq"  START WITH 19 ;

CREATE TABLE  "artifacts" (
   "id" integer DEFAULT nextval('"artifacts_id_seq"') NOT NULL,
   "url_key"   varchar(255) NOT NULL, 
   "title"   varchar(255) default NULL, 
   "long_synopsis"   text, 
   "artifact_type_id"   int default NULL, 
   "created_at"   timestamp without time zone default NULL, 
   "updated_at"   timestamp without time zone default NULL, 
   "imga_file_name"   varchar(255) default NULL, 
   "imga_content_type"   varchar(255) default NULL, 
   "imga_file_size"   int default NULL, 
   "imga_updated_at"   timestamp without time zone default NULL, 
   "short_synopsis"   varchar(40) default NULL, 
   primary key ("id")
)    ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE artifacts DISABLE KEYS */;

--
-- Dumping data for table artifacts
--

INSERT INTO "artifacts" VALUES (2,E'xmn8',E'Hair Tonic',E'Having lost most of his hair due to stress, [Klineman Halpen](/characters/nq8c) almost obsessively consumed hair tonic. However, he was unaware that his [Ood](/groups/gfw6) servant, [Sigma](/characters/hzjw), was actually providing him with Ood graft suspended in a biological compound. The eventual result was that Halpen metamorphosed into an Ood.',2,E'2009-11-18 11:54:03',E'2010-01-26 16:07:08',E'Halpen_takes_hair_tonic.png',E'image/png',682465,E'2010-01-04 15:03:00',E'Halpens hair restorer');
INSERT INTO "artifacts" VALUES (4,E'n84h',E'The TARDIS',E'Officially referred to as a TT Capsule, the TARDIS ships are the product of advanced [Time Lord](/groups/d325) technology, allowing the occupants to travel anywhere in time and space. The name TARDIS was invented by the [Doctor](/characters/m2qv)\'s granddaughter, Susan who created the acronym from the initials Time and Relative Dimension in Space. \r\n\r\nThe Doctor\'s TARDIS is a now obsolete Type 40 model. The interior of the ship is dimensionally transcendental, which means that it is bigger on the inside than the outside. A fully operational TARDIS has a chameleon circuit that allows the exterior of the ship to change form and to blend in with its surroundings. However, on a visit to [London](/places/wdxm), the chameleon circuit of the Doctor\'s TARDIS malfunctioned and the exterior has remained stuck in the shape of an old fashioned police telephone box ever since.\r\n\r\nThe design and layout of the interior of the TARDIS has frequently changed over the many years that the Doctor has been travelling in it. In one form or another though, it has always had a main control room, known as the Console Room, from which the ship can be operated. However, the Doctor\'s ability to accurately direct the flight of his ship has often been rather hit-and-miss. Amongst other rooms and facilities, the TARDIS also has a large wardrobe, a swimming pool, a laboratory, a zero room, bedrooms, cloisters and a food machine.',2,E'2009-11-19 10:49:20',E'2010-01-25 13:30:23',E'Picture_27.png',E'image/png',658449,E'2010-01-04 15:03:49',E'The Doctor\'s time/space vehicle');
INSERT INTO "artifacts" VALUES (5,E'qvcz',E'The Doctor\'s Message',E'A message scrawled on the wall of the [house at West Drumlins](/places/96p2) in large black letters. It was written by the [Doctor](/characters/m2qv) in 1969 who left it for [Sally Sparrow](/characters/jfw6) to find over thirty-five years later. Sally has to peel back the wallpaper to read the full message beneath which reads:\r\n\r\nBEWARE THE WEEPING ANGELS. OH, AND DUCK. NO, REALLY, DUCK! SALLY SPARROW DUCK NOW. LOVE FROM THE DOCTOR (1969)',2,E'2009-11-19 15:54:07',E'2010-01-25 13:18:19',E'message.jpg',E'image/jpeg',69483,E'2010-01-08 10:58:44',E'A warning from the past');
INSERT INTO "artifacts" VALUES (6,E'54rg',E'DVD List',E'[Larry Nightingale](/characters/w963) has compiled a list of seventeen DVDs. On each DVD is an identical [hidden extra](/things/hdxm) known as an Easter egg. When Larry meets [Sally Sparrow](/characters/jfw6), Sally soon realised that the seventeen DVDs on the list are all the DVDs that she herself owns.\r\n\r\nIn 2008, Sally gives the list of DVDs, along with other useful information, to [the Doctor](/characters/m2qv) so that he will have all the information he needs to contact her in 2007.',2,E'2009-11-19 15:54:23',E'2010-01-25 13:25:19',E'list.jpg',E'image/jpeg',76575,E'2010-01-08 11:02:31',E'Sally\'s seventeen DVDs');
INSERT INTO "artifacts" VALUES (9,E'zfw6',E'Sonic Screwdriver',E'First used by the [Second Doctor](/characters/p4rg), the sonic screwdriver is a hand held, multi-purpose electronic device that resembles a pen torch. Frequently employed by the [Doctor](/characters/3mn8) as a sophisticated lock pick, the sonic screwdriver has also been used to cut through metal, detonate explosives, disable surveillance devices and, occasionally, to unscrew screws (without touching the screws!).\r\n\r\nThe Doctor has used several versions of the sonic screwdriver throughout his lives, either upgrading it or replacing it when the previous model was damaged or lost. The [Fifth Doctor](/characters/mrzf)\'s sonic screwdriver was destroyed by a blast from a Tereleptil\'s gun and he did not acquire a new model until late in his [Seventh Incarnation](/characters/cgf9). The [Tenth Doctor](/characters/m2qv)\'s screwdriver was burnt out when he used ito modify an X-ray scanner. He replaced it with a larger model. ',2,E'2009-11-19 16:30:30',E'2010-01-26 16:09:44',E'Sonic_screwdriver_2.png',E'image/png',577180,E'2010-01-04 15:03:29',E'Multi-purpose electronic tool');
INSERT INTO "artifacts" VALUES (10,E'wpmq',E'The Hand of Omega',E'A remote stellar manipulator used by the [Time Lords](/groups/d325), Rassilon and Omega in the ancient past of Gallifrey. \r\n\r\nThe [First Doctor](/characters/4zjw) took the all powerful Hand with him when he originally fled Gallifrey and hid the device in a funeral parlour in 1960\'s [London](/places/wdxm). Years later, the [Seventh Doctor](/characters/cgf9) returns to collect the hand and uses it as bate in a trap for [Davros](/characters/b963) and the [Daleks](/groups/284h). \r\n\r\nDavros intends to use the Hand to transform the sun of [Skaro](/places/6mn8), the Dalek homeworld, into an energy source for time travel. However, the Doctor had secretly reprogrammed the Hand. When Davros launched the device, it causes Skaro\'s sun to errupt into a supernova, completely destroying Skaro in the process.',2,E'2009-12-21 12:45:44',E'2010-01-26 11:25:14',E'handofomega.jpg',E'image/jpeg',84919,E'2010-01-05 11:09:23',E'A Time Lord stellar manipulator');
INSERT INTO "artifacts" VALUES (13,E'wmn8',E'Translator Ball',E'Created by [Ood Operations](/places/6pmq), the translator ball is a device which replaces the [Ood](/groups/gfw6)\'s natural hindbrain. The ball is held within the Oods hand and allows the individual Ood to communicate verbally with their owner. \r\n\r\nDuring the Ood uprising in 4126, rabid Oods were able to use their translator balls as weapons, electrocuting their enemies by smashing the ball against their enemies\' skulls.',2,E'2010-01-05 10:36:46',E'2010-02-01 16:05:20',E'ball.jpg',E'image/jpeg',70371,E'2010-01-29 10:06:03',E'Translation device used by the Ood');
INSERT INTO "artifacts" VALUES (14,E'5gf9',E'TARDIS Key',E'Without the key, access to the [TARDIS](/things/n84h) is virtually impossible, even for the [Doctor](/characters/3mn8). However, the Doctor has suggested that it might be possible for him to construct a new key if necessary. \r\n\r\nOver the many years of the Doctor\'s travels in his TARDIS, the key has taken on different forms. It has most often resembled a standard Yale key as would probably have been used to open the door of a real police telephone box. However, despite its appearance, the key is the product of highly sophisticated [Time Lord](/groups/d325) technology.\r\n\r\nThe key has been seen to glow and become warm when the TARDIS is about to materialise in its vicinity. The Doctor has, on occasions, used his TARDIS key to gain access to another Time Lord\'s TARDIS such as the Rani\'s.\r\n',2,E'2010-01-08 11:31:45',E'2010-01-25 13:46:58',E'key.jpg',E'image/jpeg',50155,E'2010-01-08 11:32:03',E'Opens the door of the TARDIS');
INSERT INTO "artifacts" VALUES (15,E'hdxm',E'DVD',E'[Larry Nightingale](/characters/w963) and other DVD enthusiasts have discovered that a hidden extra, known as an Easter Egg, has been placed on seventeen DVDs. The extra is a recording of the Doctor apparently holding one side of a conversation. After extensive research, Larry has been unable to discover how these Easter eggs have been added to the DVDs as even the publishers and the manufacturers are unaware of their existence.\r\n\r\nThe Easter egg has, in fact, been placed there by [Billy Shipton](/characters/9dxm) on behalf of the [Doctor](/characters/m2qv). It has been specifically placed on all seventeen of the DVDs owned by [Sally Sparrow](/characters/jfw6).\r\n\r\nSally is able to hold a conversation with the Doctor on the DVD in which he explains vital information to her about the threat of the [Weeping Angels](/groups/xpmq).\r\n',2,E'2010-01-08 12:06:29',E'2010-01-25 13:28:14',E'dvd.jpg',E'image/jpeg',77310,E'2010-01-08 12:06:29',E'The Doctor\'s secret message');
INSERT INTO "artifacts" VALUES (16,E'b2qv',E'Time Ring',E'A piece of [Time Lord](/groups/d325) technology that resembled a copper bracelet with a three pronged design that could be worn on the wrist.\r\n\r\nThe Time Lords gave the [Doctor](/characters/wx3n) a time ring when they sent him to [Skaro](/places/6mn8) to destroy the [Daleks](/groups/284h). It was pre-programmed to return the Doctor, [Sarah](/characters/9pmq) and [Harry](/characters/wn54) to the [TARDIS](/things/n84h) once the mission had been completed.',2,E'2010-01-14 12:05:02',E'2010-01-25 15:21:16',E'timering.jpg',E'image/jpeg',49370,E'2010-01-18 09:40:44',E'Time Lord time travel device');
INSERT INTO "artifacts" VALUES (17,E'9q8c',E'Nitro-9',E'A volatile explosive that [Ace](/characters/rjbd) created at school where it destroyed the science building. Ace uses deodorant cans to carry the cocktail. \r\n\r\nThe [Doctor](/characters/cgf9) disapproves of Ace\'s use of Nitro-9 but has in fact employed it himself to destroy a [Dalek](/groups/284h). Ace has also used it destroy a Cyberman shuttlecraft and to gain access to King Arthur\'s spaceship.',2,E'2010-01-14 13:29:59',E'2010-01-26 11:21:45',E'nitro.jpg',E'image/jpeg',76189,E'2010-01-14 13:29:58',E'Ace\'s homemade explosives');
INSERT INTO "artifacts" VALUES (18,E'vb9x',E'The Doctor\'s Hand',E'In a fight with the Sycorax leader on the Sycorax spacecraft above [London](/places/wdxm), the Leader cut off the [Doctor](/characters/m2qv)\'s right hand. The severed hand fell from the ship to London below. \r\n\r\nThe hand was eventually found and kept by [Captain Jack Harkness](/characters/hb9x) at Torchwood Three in Cardiff. Jack used the hand as a way to detect the Doctor as it would glow whenever the Doctor was in the vicinity. When Jack joined the Doctor in the [TARDIS](/things/n84h) once again, he brought the hand with him.\r\n\r\nThe hand, along with the TARDIS, was captured by the Master who used the hand to extract the Doctor\'s biological code and aged the Doctor by a hundred years.\r\n\r\nFollowing this, the hand remained in the TARDIS. When the Doctor was shot by a [Dalek](/groups/284h), he managed to avoid full regeneration by re-directing the excess regenerative energy into the hand. When [Donna Noble](/characters/2n54) touched the hand, the absorbed regenerative energy allowed triggered a metacrisis and the hand grew into a new version of the Tenth Doctor.',2,E'2010-01-19 10:45:15',E'2010-01-26 14:57:33',E'hand.jpg',E'image/jpeg',52715,E'2010-01-19 10:45:15',E'The severed hand of the Doctor');

/*!40000 ALTER TABLE artifacts ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE INDEX "artifacts_artifact_type_id_idx" ON "artifacts" USING btree ("artifact_type_id");
CREATE INDEX "artifacts_url_key_idx" ON "artifacts" USING btree ("url_key");

--
-- Table structure for table belongings
--

DROP TABLE "belongings" CASCADE\g
DROP SEQUENCE "belongings_id_seq" CASCADE ;

CREATE SEQUENCE "belongings_id_seq"  START WITH 36 ;

CREATE TABLE  "belongings" (
   "id" integer DEFAULT nextval('"belongings_id_seq"') NOT NULL,
   "artifact_id"   int default NULL, 
   "character_id"   int default NULL, 
   "created_at"   timestamp without time zone default NULL, 
   "updated_at"   timestamp without time zone default NULL, 
   primary key ("id")
)    ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE belongings DISABLE KEYS */;

--
-- Dumping data for table belongings
--

INSERT INTO "belongings" VALUES (1,4,10,E'2009-11-19 10:52:53',E'2009-11-19 10:52:53');
INSERT INTO "belongings" VALUES (2,4,34,E'2009-12-22 11:13:24',E'2009-12-22 11:13:24');
INSERT INTO "belongings" VALUES (3,10,34,E'2009-12-22 11:13:38',E'2009-12-22 11:13:38');
INSERT INTO "belongings" VALUES (4,4,33,E'2009-12-22 16:22:50',E'2009-12-22 16:22:50');
INSERT INTO "belongings" VALUES (5,4,29,E'2009-12-22 16:23:02',E'2009-12-22 16:23:02');
INSERT INTO "belongings" VALUES (6,9,10,E'2010-01-04 16:28:17',E'2010-01-04 16:28:17');
INSERT INTO "belongings" VALUES (7,16,29,E'2010-01-14 13:23:38',E'2010-01-14 13:23:38');
INSERT INTO "belongings" VALUES (8,17,35,E'2010-01-14 13:30:24',E'2010-01-14 13:30:24');
INSERT INTO "belongings" VALUES (9,4,11,E'2010-01-18 12:31:28',E'2010-01-18 12:31:28');
INSERT INTO "belongings" VALUES (10,14,11,E'2010-01-18 12:31:38',E'2010-01-18 12:31:38');
INSERT INTO "belongings" VALUES (11,9,11,E'2010-01-18 12:31:49',E'2010-01-18 12:31:49');
INSERT INTO "belongings" VALUES (12,13,23,E'2010-02-01 15:10:52',E'2010-02-01 15:10:52');
INSERT INTO "belongings" VALUES (13,14,33,E'2010-02-01 15:14:51',E'2010-02-01 15:14:51');
INSERT INTO "belongings" VALUES (14,4,49,E'2010-02-01 15:15:17',E'2010-02-01 15:15:17');
INSERT INTO "belongings" VALUES (15,14,49,E'2010-02-01 15:15:25',E'2010-02-01 15:15:25');
INSERT INTO "belongings" VALUES (16,4,50,E'2010-02-01 15:15:52',E'2010-02-01 15:15:52');
INSERT INTO "belongings" VALUES (17,14,50,E'2010-02-01 15:16:02',E'2010-02-01 15:16:02');
INSERT INTO "belongings" VALUES (18,14,29,E'2010-02-01 15:16:44',E'2010-02-01 15:16:44');
INSERT INTO "belongings" VALUES (19,4,51,E'2010-02-01 15:17:49',E'2010-02-01 15:17:49');
INSERT INTO "belongings" VALUES (20,14,51,E'2010-02-01 15:17:55',E'2010-02-01 15:17:55');
INSERT INTO "belongings" VALUES (21,9,51,E'2010-02-01 15:18:01',E'2010-02-01 15:18:01');
INSERT INTO "belongings" VALUES (22,9,29,E'2010-02-01 15:18:23',E'2010-02-01 15:18:23');
INSERT INTO "belongings" VALUES (23,9,50,E'2010-02-01 15:18:45',E'2010-02-01 15:18:45');
INSERT INTO "belongings" VALUES (24,9,49,E'2010-02-01 15:19:00',E'2010-02-01 15:19:00');
INSERT INTO "belongings" VALUES (25,4,52,E'2010-02-01 15:19:25',E'2010-02-01 15:19:25');
INSERT INTO "belongings" VALUES (26,14,52,E'2010-02-01 15:19:30',E'2010-02-01 15:19:30');
INSERT INTO "belongings" VALUES (27,14,34,E'2010-02-01 15:19:48',E'2010-02-01 15:19:48');
INSERT INTO "belongings" VALUES (28,9,34,E'2010-02-01 15:19:55',E'2010-02-01 15:19:55');
INSERT INTO "belongings" VALUES (29,4,53,E'2010-02-01 15:20:10',E'2010-02-01 15:20:10');
INSERT INTO "belongings" VALUES (30,14,53,E'2010-02-01 15:20:16',E'2010-02-01 15:20:16');
INSERT INTO "belongings" VALUES (31,9,53,E'2010-02-01 15:20:21',E'2010-02-01 15:20:21');
INSERT INTO "belongings" VALUES (32,14,54,E'2010-02-01 15:20:52',E'2010-02-01 15:20:52');
INSERT INTO "belongings" VALUES (33,4,54,E'2010-02-01 15:21:00',E'2010-02-01 15:21:00');
INSERT INTO "belongings" VALUES (34,9,54,E'2010-02-01 15:21:09',E'2010-02-01 15:21:09');
INSERT INTO "belongings" VALUES (35,18,38,E'2010-02-01 15:58:47',E'2010-02-01 15:58:47');

/*!40000 ALTER TABLE belongings ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE INDEX "belongings_artifact_id_idx" ON "belongings" USING btree ("artifact_id");
CREATE INDEX "belongings_character_id_idx" ON "belongings" USING btree ("character_id");

--
-- Table structure for table character_occurrences
--

DROP TABLE "character_occurrences" CASCADE\g
DROP SEQUENCE "character_occurrences_id_seq" CASCADE ;

CREATE SEQUENCE "character_occurrences_id_seq"  START WITH 214 ;

CREATE TABLE  "character_occurrences" (
   "id" integer DEFAULT nextval('"character_occurrences_id_seq"') NOT NULL,
   "event_id"   int default NULL, 
   "created_at"   timestamp without time zone default NULL, 
   "updated_at"   timestamp without time zone default NULL, 
   "involvement_type_id"   int default NULL, 
   "description"   text, 
   "character_id"   int default NULL, 
   "position"   float default NULL, 
   primary key ("id")
)    ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE character_occurrences DISABLE KEYS */;

--
-- Dumping data for table character_occurrences
--

INSERT INTO "character_occurrences" VALUES (35,13,E'2009-12-21 12:05:59',E'2010-01-14 09:58:16',1,E'use the Doctor to carry out their plans',31,NULL);
INSERT INTO "character_occurrences" VALUES (36,13,E'2009-12-21 12:06:21',E'2010-01-14 09:56:37',1,E'is initially resentful of being used as an agent by the Time Lords',29,NULL);
INSERT INTO "character_occurrences" VALUES (37,14,E'2009-12-21 12:10:18',E'2010-01-14 10:09:15',1,E'is delighted by the progress of his Dalek creations',26,NULL);
INSERT INTO "character_occurrences" VALUES (38,14,E'2009-12-21 12:10:35',E'2010-01-18 14:27:55',1,E'recognises the Dalek from her previous encounter with the creatures',30,NULL);
INSERT INTO "character_occurrences" VALUES (39,14,E'2009-12-21 12:12:10',E'2010-01-14 10:10:34',1,E'are born out of the ashes of the war on Skaro',32,NULL);
INSERT INTO "character_occurrences" VALUES (40,15,E'2009-12-21 12:14:04',E'2010-01-14 10:32:25',1,E'is torn between betraying the future and saving Sarah and Harry',29,NULL);
INSERT INTO "character_occurrences" VALUES (41,15,E'2009-12-21 12:14:13',E'2010-01-14 10:33:07',1,E'is hungry for the Doctor\'s future knowledge',26,NULL);
INSERT INTO "character_occurrences" VALUES (42,15,E'2009-12-21 12:14:45',E'2010-01-14 10:33:40',1,E'urges the Doctor not to surrender to Davros\'s demands',30,NULL);
INSERT INTO "character_occurrences" VALUES (43,16,E'2009-12-21 12:16:01',E'2010-01-14 10:50:18',1,E'is fascinated by the Doctor\'s proposal',26,NULL);
INSERT INTO "character_occurrences" VALUES (44,16,E'2009-12-21 12:16:41',E'2010-01-14 10:51:16',1,E'gauges Davros\'s mentle stability with a doomsday scenario',29,NULL);
INSERT INTO "character_occurrences" VALUES (45,17,E'2009-12-21 12:17:59',E'2010-01-14 11:05:49',1,E'is overwhelmed by the implications of destroying the Daleks',29,NULL);
INSERT INTO "character_occurrences" VALUES (46,17,E'2009-12-21 12:18:25',E'2010-01-14 11:06:15',1,E'urges the Doctor to destroy the Daleks',30,NULL);
INSERT INTO "character_occurrences" VALUES (47,18,E'2009-12-21 12:20:11',E'2010-01-14 11:28:04',1,E'realises too late that his creations consider him inferior',26,NULL);
INSERT INTO "character_occurrences" VALUES (48,18,E'2009-12-21 12:20:24',E'2010-01-14 11:31:20',1,E'begin their quest for universal domination',32,NULL);
INSERT INTO "character_occurrences" VALUES (49,19,E'2009-12-21 12:22:31',E'2010-01-14 11:43:39',1,E'has no regrets that he was unsuccessful in destroying the Daleks',29,NULL);
INSERT INTO "character_occurrences" VALUES (50,19,E'2009-12-21 12:22:42',E'2010-01-14 11:44:15',1,E'wonders if the Doctor is disappointed that he failed in his mission',30,NULL);
INSERT INTO "character_occurrences" VALUES (51,20,E'2009-12-21 12:50:57',E'2010-01-14 13:19:35',1,E'doesn\'t hesitate in putting a Dalek out of action',34,NULL);
INSERT INTO "character_occurrences" VALUES (52,20,E'2009-12-21 12:51:06',E'2010-01-18 14:56:45',1,E'hands over her Nitro-9 explosives to the Doctor',35,NULL);
INSERT INTO "character_occurrences" VALUES (53,20,E'2009-12-21 12:51:16',E'2010-01-14 15:29:48',1,E'aren\'t afraid to take on a force superior in numbers',48,NULL);
INSERT INTO "character_occurrences" VALUES (54,21,E'2009-12-21 12:54:12',E'2010-01-14 14:16:45',1,E'examines the Dalek transmat station',34,NULL);
INSERT INTO "character_occurrences" VALUES (55,21,E'2009-12-21 12:54:24',E'2010-01-14 14:17:07',1,E'gets a bit worried when a Dalek begins to materialise',35,NULL);
INSERT INTO "character_occurrences" VALUES (56,22,E'2009-12-21 12:56:22',E'2010-01-14 14:25:16',1,E'is cornered by a flying Dalek',34,NULL);
INSERT INTO "character_occurrences" VALUES (57,22,E'2009-12-21 12:56:47',E'2010-01-14 15:32:03',1,E'are able to climb stairs - when they want to',47,NULL);
INSERT INTO "character_occurrences" VALUES (58,23,E'2009-12-21 12:59:38',E'2010-01-14 14:47:43',1,E'is taken by surprise by the landing of the Daleks',34,NULL);
INSERT INTO "character_occurrences" VALUES (60,24,E'2009-12-21 13:07:46',E'2010-01-15 10:49:38',2,E'is deployed against the Renegade Daleks',36,NULL);
INSERT INTO "character_occurrences" VALUES (61,25,E'2009-12-21 13:10:48',E'2010-01-15 11:01:17',1,E'meets the Seventh Doctor for the first time',26,NULL);
INSERT INTO "character_occurrences" VALUES (62,25,E'2009-12-21 13:10:59',E'2010-01-15 11:01:23',1,E'is not surprised to discover Davros\'s involvement',34,NULL);
INSERT INTO "character_occurrences" VALUES (63,26,E'2009-12-21 13:12:12',E'2010-01-15 11:14:57',1,E'is infuriated by the Doctor\'s attempts to defeat him',26,NULL);
INSERT INTO "character_occurrences" VALUES (64,26,E'2009-12-21 13:12:50',E'2010-01-18 15:00:07',1,E'deliberately goads Davros into a rage',34,NULL);
INSERT INTO "character_occurrences" VALUES (65,27,E'2009-12-21 13:14:28',E'2010-01-15 11:22:28',1,E'demonstrates that he is prepared to use ultimate force',26,NULL);
INSERT INTO "character_occurrences" VALUES (66,29,E'2009-12-21 13:17:08',E'2010-01-15 11:36:58',1,E'has lost and flees to escape destruction',26,NULL);
INSERT INTO "character_occurrences" VALUES (67,30,E'2009-12-21 16:07:10',E'2010-01-19 16:27:12',1,E'fears the worst when the Earth vanishes',11,0.382979);
INSERT INTO "character_occurrences" VALUES (68,30,E'2009-12-21 16:07:33',E'2010-01-15 10:30:17',1,E'struggles to understand how the Earth can have disappeared',12,NULL);
INSERT INTO "character_occurrences" VALUES (69,31,E'2009-12-21 16:10:43',E'2010-01-19 16:27:12',1,E'is in awe of the perfect alignment of the planets',11,0.851064);
INSERT INTO "character_occurrences" VALUES (70,31,E'2009-12-21 16:10:59',E'2010-01-15 15:37:36',1,E'wants to know what a planetary power house could be used for',12,NULL);
INSERT INTO "character_occurrences" VALUES (71,31,E'2009-12-21 16:11:09',E'2010-01-15 15:38:19',1,E'is amazed that the Doctor so easily solves the mystery',41,NULL);
INSERT INTO "character_occurrences" VALUES (72,32,E'2009-12-21 16:12:22',E'2010-01-15 16:02:51',1,E'uses her computer, Mr Smith to call the Doctor',30,NULL);
INSERT INTO "character_occurrences" VALUES (73,32,E'2009-12-21 16:12:38',E'2010-01-15 16:01:15',1,E'is unable to communicate with the Doctor\'s other friends',37,NULL);
INSERT INTO "character_occurrences" VALUES (74,32,E'2009-12-21 16:12:50',E'2010-01-15 16:02:00',1,E'boosts the sub-wave network to full power',39,NULL);
INSERT INTO "character_occurrences" VALUES (75,32,E'2009-12-21 16:12:59',E'2010-01-15 16:02:26',1,E'uses Torchwood to transmit the phone message',38,NULL);
INSERT INTO "character_occurrences" VALUES (76,32,E'2009-12-21 16:13:15',E'2010-01-19 14:54:53',1,E'sends the Doctor\'s phone number across the network',3,0.666667);
INSERT INTO "character_occurrences" VALUES (77,33,E'2009-12-21 16:17:30',E'2010-01-19 16:27:12',1,E'is speechless when confronted with his old enemy who he believed dead',11,0.808511);
INSERT INTO "character_occurrences" VALUES (78,33,E'2009-12-21 16:17:37',E'2010-01-15 16:16:40',1,E'confronts the Doctor once again',26,NULL);
INSERT INTO "character_occurrences" VALUES (79,34,E'2009-12-21 16:18:57',E'2010-01-19 16:27:12',1,E'is caught in a Dalek death ray',11,0.680851);
INSERT INTO "character_occurrences" VALUES (80,34,E'2009-12-21 16:19:03',E'2010-01-15 17:06:23',1,E'rushes to the Doctor\'s aid',12,NULL);
INSERT INTO "character_occurrences" VALUES (81,34,E'2009-12-21 16:19:17',E'2010-01-15 17:06:40',1,E'watches in horror as a Dalek exterminates the Doctor',37,NULL);
INSERT INTO "character_occurrences" VALUES (82,34,E'2009-12-21 16:19:28',E'2010-01-15 17:06:55',1,E'arrives in time to dispatch the Dalek',38,NULL);
INSERT INTO "character_occurrences" VALUES (83,34,E'2009-12-21 16:19:41',E'2010-01-15 17:07:15',1,E'don\'t lose an opportunity to kill the Doctor',32,NULL);
INSERT INTO "character_occurrences" VALUES (84,35,E'2009-12-21 16:22:02',E'2010-01-18 16:26:19',1,E'explains how he intends to destroy the whole of reality',26,NULL);
INSERT INTO "character_occurrences" VALUES (85,35,E'2009-12-21 16:22:23',E'2010-01-19 16:27:12',1,E'is appalled by Davros\'s scheme for universal domination',11,0.638298);
INSERT INTO "character_occurrences" VALUES (86,36,E'2009-12-21 16:23:09',E'2010-01-19 12:26:26',1,E'is created from the Doctor\'s severed hand',42,NULL);
INSERT INTO "character_occurrences" VALUES (87,36,E'2009-12-21 16:23:15',E'2010-01-19 12:26:54',1,E'is amazed to see a new Doctor take shape before her',12,NULL);
INSERT INTO "character_occurrences" VALUES (88,37,E'2009-12-21 16:24:03',E'2010-01-19 12:20:13',1,E'threatens to destroy the Dalek\'s Crucible',38,NULL);
INSERT INTO "character_occurrences" VALUES (89,37,E'2009-12-21 16:24:09',E'2010-01-19 12:19:55',1,E'recalls the face of Sarah Jane Smith from Skaro',26,NULL);
INSERT INTO "character_occurrences" VALUES (90,38,E'2009-12-21 16:24:55',E'2010-01-19 14:52:22',1,E'accuses the Doctor of using his friends as weapons',26,NULL);
INSERT INTO "character_occurrences" VALUES (91,38,E'2009-12-21 16:25:02',E'2010-01-19 14:53:08',1,E'is prepared to sacrifice herself to save the Earth',30,NULL);
INSERT INTO "character_occurrences" VALUES (92,38,E'2009-12-21 16:25:09',E'2010-01-19 14:53:34',1,E'will detonate the warp star crystal if he has to',38,NULL);
INSERT INTO "character_occurrences" VALUES (93,39,E'2009-12-21 16:25:56',E'2010-01-19 15:39:47',1,E'is suddenly powerless when Donna takes control',26,NULL);
INSERT INTO "character_occurrences" VALUES (94,39,E'2009-12-21 16:26:08',E'2010-01-19 15:40:10',1,E'deduces that Donna is now part Time Lord',42,NULL);
INSERT INTO "character_occurrences" VALUES (96,39,E'2009-12-21 16:26:46',E'2010-01-19 15:40:33',1,E'has been trasnformed into Time Lord/human hybrid',12,NULL);
INSERT INTO "character_occurrences" VALUES (97,40,E'2009-12-21 16:27:55',E'2010-01-19 15:56:53',1,E'is furious at Dalek Caan\'s betrayal of the Dalek race',26,NULL);
INSERT INTO "character_occurrences" VALUES (98,40,E'2009-12-21 16:28:53',E'2010-01-19 15:57:14',1,E'reveals that he has been working against the Daleks all along',43,NULL);
INSERT INTO "character_occurrences" VALUES (99,41,E'2009-12-21 16:30:00',E'2010-02-01 15:05:39',1,E'has no reservations about eliminating the Dalek threat forever',42,NULL);
INSERT INTO "character_occurrences" VALUES (100,41,E'2009-12-21 16:30:07',E'2010-02-01 15:04:32',NULL,E'can only watch as his Dalek creations are destroyed around him',26,NULL);
INSERT INTO "character_occurrences" VALUES (101,42,E'2009-12-21 16:31:45',E'2010-01-19 16:27:12',1,E'is willing to save Davros, despite what he has done',11,0.702128);
INSERT INTO "character_occurrences" VALUES (102,42,E'2009-12-21 16:35:03',E'2010-01-19 16:26:45',1,E'declines the Doctor\'s offer to come aboard the TARDIS',26,NULL);
INSERT INTO "character_occurrences" VALUES (103,43,E'2009-12-21 16:35:58',E'2010-01-19 16:46:31',1,E'chooses the love of a good Doctor',37,NULL);
INSERT INTO "character_occurrences" VALUES (104,43,E'2009-12-21 16:36:23',E'2010-01-19 16:47:07',1,E'is half-human and will grow old and die rather than regenerate',42,NULL);
INSERT INTO "character_occurrences" VALUES (105,43,E'2009-12-21 16:36:40',E'2010-01-19 16:47:53',1,E'says goodbye to Rose and leaves her with his half-human self',11,0.734043);
INSERT INTO "character_occurrences" VALUES (106,44,E'2009-12-21 16:37:52',E'2010-01-19 17:03:45',1,E'regrets having to take Donna\'s memories from her',11,0.531914);
INSERT INTO "character_occurrences" VALUES (107,44,E'2009-12-21 16:38:11',E'2010-01-19 17:03:28',1,E'wanted to spend the rest of her life travelling in the TARDIS with the Doctor',12,NULL);
INSERT INTO "character_occurrences" VALUES (108,29,E'2009-12-23 11:11:25',E'2010-01-15 11:37:26',1,E'are left to be destroyed on the doomed mothership',47,NULL);
INSERT INTO "character_occurrences" VALUES (109,28,E'2009-12-23 11:11:57',E'2010-01-15 11:30:47',1,E'realises that he has been a victim of the Doctor\'s scheming',26,NULL);
INSERT INTO "character_occurrences" VALUES (111,45,E'2010-01-05 10:38:57',E'2010-01-21 11:00:19',2,E'is consumed by red eye and attacks his master',20,NULL);
INSERT INTO "character_occurrences" VALUES (112,46,E'2010-01-05 10:42:58',E'2010-01-21 10:58:46',1,E'prepares Halpen\'s hair tonic for him',21,NULL);
INSERT INTO "character_occurrences" VALUES (113,46,E'2010-01-05 10:43:12',E'2010-01-21 10:59:24',1,E'blames his hair loss on the stress of running Ood Operations ',13,NULL);
INSERT INTO "character_occurrences" VALUES (114,47,E'2010-01-05 10:46:04',E'2010-01-21 10:55:32',1,E'attempts to comfort the wounded the Ood Delta 50',12,NULL);
INSERT INTO "character_occurrences" VALUES (115,47,E'2010-01-05 10:46:17',E'2010-01-21 10:58:03',1,E'is too late to save the dieing Ood',11,0.0638298);
INSERT INTO "character_occurrences" VALUES (116,47,E'2010-01-05 10:46:27',E'2010-01-21 10:56:11',1,E'tells the Doctor and Donna that the circle must be broken',20,NULL);
INSERT INTO "character_occurrences" VALUES (117,48,E'2010-01-05 10:49:03',E'2010-01-21 11:46:08',1,E'is angered by the enslavement and mutilation of the Ood',11,0.0957449);
INSERT INTO "character_occurrences" VALUES (118,48,E'2010-01-05 10:49:11',E'2010-01-21 11:44:57',1,E'is appalled by humanity\'s treatment of the Ood',12,NULL);
INSERT INTO "character_occurrences" VALUES (119,48,E'2010-01-05 10:49:23',E'2010-01-21 11:45:30',1,E'have been subjugated by manking for centuries',23,NULL);
INSERT INTO "character_occurrences" VALUES (120,49,E'2010-01-05 10:51:27',E'2010-01-21 10:54:02',1,E'turn on their masters with murderous intent',23,NULL);
INSERT INTO "character_occurrences" VALUES (121,50,E'2010-01-05 10:54:20',E'2010-01-21 11:55:20',1,E'has been held captive for centuries',19,NULL);
INSERT INTO "character_occurrences" VALUES (123,50,E'2010-01-05 10:54:59',E'2010-01-21 11:56:11',1,E'finds his theories are correct when he discovers the Ood Brain',11,0.132979);
INSERT INTO "character_occurrences" VALUES (124,50,E'2010-01-05 10:55:08',E'2010-01-21 11:55:40',1,E'is amazed to see the giant living Ood Brain',12,NULL);
INSERT INTO "character_occurrences" VALUES (127,51,E'2010-01-05 11:01:30',E'2010-01-21 15:14:08',1,E'is horrofied to learn the truth of Ood Sigma\'s betrayal',13,NULL);
INSERT INTO "character_occurrences" VALUES (128,51,E'2010-01-05 11:01:38',E'2010-01-21 15:14:35',1,E'can\'t believe her own eyes as Halpen transforms into an Ood',12,NULL);
INSERT INTO "character_occurrences" VALUES (129,51,E'2010-01-05 11:01:48',E'2010-01-21 15:16:36',1,E'marvels at the fantastic transformation brought about by the Ood graft',11,0.172872);
INSERT INTO "character_occurrences" VALUES (130,51,E'2010-01-05 11:01:57',E'2010-01-21 15:15:58',1,E'has been patiently planning the Ood\'s revenge on Halpen',21,NULL);
INSERT INTO "character_occurrences" VALUES (131,52,E'2010-01-05 11:04:05',E'2010-01-21 15:35:59',1,E'is free to sing again after many years of imprisonment',19,NULL);
INSERT INTO "character_occurrences" VALUES (132,52,E'2010-01-05 11:04:14',E'2010-01-21 15:37:27',1,E'has the honour of releasing the Ood Brain from captivity',11,0.214096);
INSERT INTO "character_occurrences" VALUES (133,52,E'2010-01-05 11:04:22',E'2010-01-21 15:36:23',1,E'is overjoyed that the Ood have been set free',12,NULL);
INSERT INTO "character_occurrences" VALUES (134,52,E'2010-01-05 11:04:32',E'2010-01-21 15:36:49',1,E'joins the song of freedom sung by Ood across the Universe',21,NULL);
INSERT INTO "character_occurrences" VALUES (135,53,E'2010-01-05 11:06:12',E'2010-01-21 15:51:45',1,E'senses that the Doctor\'s own song may end soon',21,NULL);
INSERT INTO "character_occurrences" VALUES (136,53,E'2010-01-05 11:06:20',E'2010-01-21 15:52:08',1,E'is happy to continue her journeys with the Doctor',12,NULL);
INSERT INTO "character_occurrences" VALUES (137,53,E'2010-01-05 11:06:28',E'2010-01-21 15:53:05',1,E'is slightly troubled by Ood Sigma\'s prophecy',11,0.23504);
INSERT INTO "character_occurrences" VALUES (138,54,E'2010-01-05 12:04:22',E'2010-01-05 12:04:22',1,E'',37,NULL);
INSERT INTO "character_occurrences" VALUES (139,54,E'2010-01-05 12:04:31',E'2010-01-19 16:27:12',1,E'',11,0.468085);
INSERT INTO "character_occurrences" VALUES (140,54,E'2010-01-05 12:04:42',E'2010-01-05 12:04:42',1,E'',23,NULL);
INSERT INTO "character_occurrences" VALUES (141,55,E'2010-01-05 12:06:42',E'2010-01-05 12:06:42',1,E'',23,NULL);
INSERT INTO "character_occurrences" VALUES (143,55,E'2010-01-05 12:10:03',E'2010-01-19 16:27:12',1,E'',11,0.510638);
INSERT INTO "character_occurrences" VALUES (144,55,E'2010-01-05 12:10:13',E'2010-01-05 12:10:13',1,E'',37,NULL);
INSERT INTO "character_occurrences" VALUES (146,56,E'2010-01-08 11:20:06',E'2010-01-18 11:27:20',1,E'nervously explores the abandoned house at Wester Drumlins',1,NULL);
INSERT INTO "character_occurrences" VALUES (147,57,E'2010-01-08 11:21:16',E'2010-01-13 12:15:43',1,E'discovers a hidden message addressed to her from the past',1,NULL);
INSERT INTO "character_occurrences" VALUES (148,58,E'2010-01-08 11:21:58',E'2010-01-13 12:16:36',1,E'wonders how a statue could throw a rock at her',1,NULL);
INSERT INTO "character_occurrences" VALUES (150,59,E'2010-01-08 11:27:31',E'2010-01-18 11:30:34',1,E'meets Larry Nightingale for the first time and sees more than she\'d like to',1,NULL);
INSERT INTO "character_occurrences" VALUES (151,59,E'2010-01-08 11:27:37',E'2010-01-18 11:31:23',1,E'is irritated by her brother and wishes he would cover his embarrassment',2,0.034722);
INSERT INTO "character_occurrences" VALUES (152,59,E'2010-01-08 11:27:44',E'2010-01-18 11:30:54',1,E'has a late night visitor and forgets to wear his pants',4,NULL);
INSERT INTO "character_occurrences" VALUES (153,60,E'2010-01-08 11:28:15',E'2010-01-13 12:18:25',1,E'persaudes Kathy to return with her to the Wester Drumlins House',1,NULL);
INSERT INTO "character_occurrences" VALUES (154,60,E'2010-01-08 11:28:23',E'2010-01-13 12:18:33',1,E'keeps Sally company as they explore the old house',2,0.222221);
INSERT INTO "character_occurrences" VALUES (155,61,E'2010-01-08 11:32:57',E'2010-01-13 12:19:27',1,E'suspects a sick joke when she receives a letter and photographs from her friend',1,NULL);
INSERT INTO "character_occurrences" VALUES (156,61,E'2010-01-08 11:33:08',E'2010-01-13 12:20:47',1,E'becomes and unsuspecting victim of the Weeping Angels',2,0.409722);
INSERT INTO "character_occurrences" VALUES (157,61,E'2010-01-08 11:33:30',E'2010-01-13 12:19:33',1,E'fulfils his promise to his grandmother and delivers a letter to Sally Sparrow',6,NULL);
INSERT INTO "character_occurrences" VALUES (158,61,E'2010-01-08 11:33:42',E'2010-01-13 12:19:57',2,E'strike, sending Kathy into the past and feasting on her time energy',8,NULL);
INSERT INTO "character_occurrences" VALUES (159,62,E'2010-01-08 11:37:02',E'2010-01-13 12:21:22',1,E'learns about the appearance of the Doctor\'s hidden DVD message',1,NULL);
INSERT INTO "character_occurrences" VALUES (160,62,E'2010-01-08 11:37:09',E'2010-01-13 12:21:31',1,E'enjoys sharing his knowledge of DVD trivia with Sally',4,NULL);
INSERT INTO "character_occurrences" VALUES (161,63,E'2010-01-08 11:54:10',E'2010-01-13 12:40:41',1,E'meets Billy and discovers Kathy isn\'t the only person to go missing',1,NULL);
INSERT INTO "character_occurrences" VALUES (162,63,E'2010-01-08 11:54:22',E'2010-01-13 15:12:29',1,E'takes a shine to Sally and is happy share his knowledge with her',5,0.571429);
INSERT INTO "character_occurrences" VALUES (163,64,E'2010-01-08 11:59:08',E'2010-01-19 16:27:12',1,E'tells Billy about time travel and evil angels',11,0.425532);
INSERT INTO "character_occurrences" VALUES (164,64,E'2010-01-08 11:59:14',E'2010-01-19 14:54:53',1,E'has a few kind words for Billy after his ordeal',3,0.444444);
INSERT INTO "character_occurrences" VALUES (165,64,E'2010-01-08 11:59:21',E'2010-01-13 15:14:45',1,E'is dazed and confused by his experience of time travel',5,0.785715);
INSERT INTO "character_occurrences" VALUES (166,65,E'2010-01-08 12:03:10',E'2010-01-13 12:55:59',1,E'meets the elderly Billy and listens to his story',1,NULL);
INSERT INTO "character_occurrences" VALUES (167,65,E'2010-01-08 12:03:17',E'2010-01-13 15:15:20',1,E'meets Sally Sparrow just one more time and passes on his messge',5,0.892857);
INSERT INTO "character_occurrences" VALUES (168,66,E'2010-01-08 12:07:02',E'2010-01-19 16:27:12',1,E'is able to speak to Sally from the past via DVD',11,0.0425532);
INSERT INTO "character_occurrences" VALUES (169,66,E'2010-01-08 12:07:10',E'2010-01-13 13:08:14',1,E'finds it hard to believe that she can have a conversation with a DVD',1,NULL);
INSERT INTO "character_occurrences" VALUES (171,67,E'2010-01-08 12:10:31',E'2010-01-13 13:19:08',1,E'does his best to keep looking at the Angels to prevent them moving',4,NULL);
INSERT INTO "character_occurrences" VALUES (172,67,E'2010-01-08 12:10:44',E'2010-01-13 13:19:40',1,E'hopes that the Doctor\'s TARDIS can save them from the Angels',1,NULL);
INSERT INTO "character_occurrences" VALUES (173,67,E'2010-01-08 12:11:00',E'2010-01-13 13:20:12',2,E'are desperate to gain access to the TARDIS',8,NULL);
INSERT INTO "character_occurrences" VALUES (175,68,E'2010-01-08 12:12:30',E'2010-01-13 13:28:56',1,E'is terrified by the Angels as the TARDIS dematerialises',4,NULL);
INSERT INTO "character_occurrences" VALUES (176,68,E'2010-01-08 12:12:42',E'2010-01-13 13:29:31',2,E'become the victims of the Doctor\'s trap as they gaze upon each other',8,NULL);
INSERT INTO "character_occurrences" VALUES (177,69,E'2010-01-08 12:13:45',E'2010-01-19 16:27:12',1,E'is delighted to meet Sally for the first time',11,0.340426);
INSERT INTO "character_occurrences" VALUES (178,69,E'2010-01-08 12:14:26',E'2010-01-19 14:54:53',1,E'is eager that the Doctor shouldn\'t be distracted from their mission',3,0.222222);
INSERT INTO "character_occurrences" VALUES (179,69,E'2010-01-08 12:14:39',E'2010-01-18 11:40:47',1,E'is happy as Larry to find his feelings for Sally being returned',4,NULL);
INSERT INTO "character_occurrences" VALUES (180,69,E'2010-01-08 12:14:51',E'2010-01-13 13:39:55',1,E'solves the mystery of how the Doctor knew how to contact her',1,NULL);
INSERT INTO "character_occurrences" VALUES (182,66,E'2010-01-08 13:07:40',E'2010-01-13 13:09:41',1,E'finally solves the mystery of the Easter egg message',4,NULL);
INSERT INTO "character_occurrences" VALUES (183,70,E'2010-01-12 15:58:27',E'2010-01-13 12:13:37',1,E'finds it hard to accept that she has travelled through time and space',2,0.729168);
INSERT INTO "character_occurrences" VALUES (184,70,E'2010-01-12 15:58:34',E'2010-01-13 12:13:27',1,E'takes an immediate liking to the strange girl from nowhere',7,NULL);
INSERT INTO "character_occurrences" VALUES (185,68,E'2010-01-13 13:30:04',E'2010-01-13 13:30:04',1,E'fears that the Doctor has abandoned her at the last moment',1,NULL);
INSERT INTO "character_occurrences" VALUES (186,15,E'2010-01-14 12:10:05',E'2010-01-14 12:10:05',1,E'is tortured by Davros to force the Doctor\'s hand',46,NULL);
INSERT INTO "character_occurrences" VALUES (187,17,E'2010-01-14 12:10:58',E'2010-01-14 12:10:58',1,E'helps prepare the explosives that could destroy the Daleks',46,NULL);
INSERT INTO "character_occurrences" VALUES (188,19,E'2010-01-14 12:12:08',E'2010-01-14 12:12:08',1,E'is relieved to have survived another adventure with the Doctor',46,NULL);
INSERT INTO "character_occurrences" VALUES (189,23,E'2010-01-14 14:48:13',E'2010-01-14 14:48:13',1,E'nearly gets caught in the blast as the Dalek ship lands',35,NULL);
INSERT INTO "character_occurrences" VALUES (190,23,E'2010-01-14 14:48:57',E'2010-01-14 15:33:36',2,E'disembark to find the Hand of Omega',47,NULL);
INSERT INTO "character_occurrences" VALUES (191,24,E'2010-01-15 10:39:18',E'2010-01-15 10:50:14',2,E'are on a mission to retrieve the Hand of Omega',47,NULL);
INSERT INTO "character_occurrences" VALUES (192,24,E'2010-01-15 10:39:29',E'2010-01-15 10:50:35',2,E'retaliate against the Imperial Dalek attack',48,NULL);
INSERT INTO "character_occurrences" VALUES (193,27,E'2010-01-15 11:21:53',E'2010-01-15 11:21:53',1,E'begs Davros not to use the Hand of Omega',34,NULL);
INSERT INTO "character_occurrences" VALUES (194,28,E'2010-01-15 11:30:00',E'2010-01-15 11:30:00',1,E'takes no joy in defeating Davros and his Daleks',34,NULL);
INSERT INTO "character_occurrences" VALUES (195,28,E'2010-01-15 11:30:21',E'2010-01-15 11:30:21',1,E'witness the destruction of their home planet',47,NULL);
INSERT INTO "character_occurrences" VALUES (196,29,E'2010-01-15 11:36:15',E'2010-01-15 11:38:07',1,E'has condemned the Daleks to their fate',34,NULL);
INSERT INTO "character_occurrences" VALUES (197,33,E'2010-01-15 16:17:41',E'2010-01-15 16:17:41',1,E'can\'t believe she is seeing Davros once again',30,NULL);
INSERT INTO "character_occurrences" VALUES (198,33,E'2010-01-15 16:18:11',E'2010-01-15 16:18:11',1,E'is revulted by Davros\'s grotesque appearance',12,NULL);
INSERT INTO "character_occurrences" VALUES (199,33,E'2010-01-15 16:20:13',E'2010-01-15 16:20:13',1,E'is delighted at the prospect of the Doctor\'s return',43,NULL);
INSERT INTO "character_occurrences" VALUES (200,35,E'2010-01-18 16:25:49',E'2010-01-18 16:25:49',1,E'listens in horror to Davros\'s insane plan',37,NULL);
INSERT INTO "character_occurrences" VALUES (201,37,E'2010-01-19 12:17:28',E'2010-01-19 16:27:12',1,E'is a prisoner of Davros and the Daleks',11,0.595745);
INSERT INTO "character_occurrences" VALUES (202,37,E'2010-01-19 12:17:40',E'2010-01-19 12:19:30',1,E'is ready to fight Davros',30,NULL);
INSERT INTO "character_occurrences" VALUES (203,37,E'2010-01-19 12:25:26',E'2010-01-19 12:25:26',1,E'is amazed to see her mother with Captain Jack, Sarah and Mickey',37,NULL);
INSERT INTO "character_occurrences" VALUES (204,38,E'2010-01-19 12:39:18',E'2010-01-19 14:54:00',1,E'delights in the Doctor\'s humiliation',43,NULL);
INSERT INTO "character_occurrences" VALUES (205,38,E'2010-01-19 12:40:36',E'2010-01-19 14:54:20',1,E'tells the Doctor that Harriet Jones gave her life for him',37,NULL);
INSERT INTO "character_occurrences" VALUES (206,38,E'2010-01-19 12:41:06',E'2010-01-19 14:54:53',1,E'posesses the means to destroy the Earth to save it from the Daleks',3,0.777778);
INSERT INTO "character_occurrences" VALUES (207,39,E'2010-01-19 15:41:44',E'2010-01-19 16:27:12',1,E'is amazed that Donna has been able to defeat Davros and the Daleks',11,0.893617);
INSERT INTO "character_occurrences" VALUES (208,40,E'2010-01-19 15:56:29',E'2010-01-19 16:27:12',1,E'deduces that Dalek Caan has been manipulating the time lines',11,0.93617);
INSERT INTO "character_occurrences" VALUES (209,41,E'2010-01-19 16:08:47',E'2010-02-01 15:04:38',NULL,E'is unsure about the hybrid Doctor\'s drastic course of action',12,NULL);
INSERT INTO "character_occurrences" VALUES (210,41,E'2010-01-19 16:10:11',E'2010-02-01 15:04:44',NULL,E'is insistent that his prophecy must be fulfilled',43,NULL);
INSERT INTO "character_occurrences" VALUES (211,41,E'2010-01-19 16:19:33',E'2010-02-01 15:04:57',NULL,E'is horrofied at his alternative self\'s ruthless actions',11,0.946809);
INSERT INTO "character_occurrences" VALUES (212,42,E'2010-01-19 16:26:14',E'2010-01-19 16:26:14',1,E'knows that one part of his propecy has still to come true',43,NULL);
INSERT INTO "character_occurrences" VALUES (213,41,E'2010-02-01 15:03:43',E'2010-02-01 15:03:43',NULL,E'are destroyed by the Doctor\'s duplicate',32,NULL);

/*!40000 ALTER TABLE character_occurrences ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE INDEX "character_occurrences_event_id_idx" ON "character_occurrences" USING btree ("event_id");
CREATE INDEX "character_occurrences_character_id_idx" ON "character_occurrences" USING btree ("character_id");

--
-- Table structure for table character_types
--

DROP TABLE "character_types" CASCADE\g
DROP SEQUENCE "character_types_id_seq" CASCADE ;

CREATE SEQUENCE "character_types_id_seq"  START WITH 4 ;

CREATE TABLE  "character_types" (
   "id" integer DEFAULT nextval('"character_types_id_seq"') NOT NULL,
   "created_at"   timestamp without time zone default NULL, 
   "updated_at"   timestamp without time zone default NULL, 
   "is_group"    smallint default '0', 
   primary key ("id")
)    ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE character_types DISABLE KEYS */;

--
-- Dumping data for table character_types
--

INSERT INTO "character_types" VALUES (1,E'individual',E'2009-11-17 17:26:25',E'2009-11-17 17:26:25',0);
INSERT INTO "character_types" VALUES (2,E'species',E'2009-11-17 17:28:25',E'2010-01-13 13:46:31',1);
INSERT INTO "character_types" VALUES (3,E'Organisation',E'2009-12-21 15:57:55',E'2009-12-21 15:57:55',1);

/*!40000 ALTER TABLE character_types ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE INDEX "character_types_255_idx" ON "character_types" USING btree ("255");
CREATE INDEX "character_types_key_idx" ON "character_types" USING btree ("key");

--
-- Table structure for table characters
--

DROP TABLE "characters" CASCADE\g
DROP SEQUENCE "characters_id_seq" CASCADE ;

CREATE SEQUENCE "characters_id_seq"  START WITH 56 ;

CREATE TABLE  "characters" (
   "id" integer DEFAULT nextval('"characters_id_seq"') NOT NULL,
   "url_key"   varchar(255) NOT NULL, 
   "title"   varchar(255) default NULL, 
   "long_synopsis"   text, 
   "character_type_id"   int default NULL, 
   "created_at"   timestamp without time zone default NULL, 
   "updated_at"   timestamp without time zone default NULL, 
   "imgc_file_name"   varchar(255) default NULL, 
   "imgc_content_type"   varchar(255) default NULL, 
   "imgc_img_file_size"   int default NULL, 
   "imgc_updated_at"   timestamp without time zone default NULL, 
   "strapline"   varchar(255) default NULL, 
   "short_synopsis"   varchar(40) default NULL, 
   "time_traveller"    smallint default NULL, 
   "disposition"   varchar(255) default NULL, 
   primary key ("id")
)    ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE characters DISABLE KEYS */;

--
-- Dumping data for table characters
--

INSERT INTO "characters" VALUES (1,E'jfw6',E'Sally Sparrow',E'A young, attractive woman with long blonde hair. Sally lives in [London](/places/wdxm) and has a strong interest in photography. In particular, she likes to take pictures of old things and enjoys the melancholic feelings that she has for ancient objects and buildings.\r\n\r\nSally\'s hobby takes her to an old abandoned house where she finds a message addressed to her that was written before she was born. In the course of her investigation into the mystery, Sally loses her best friend [Kathy](/characters/fb9x), and meets her future partner, [Larry](/characters/w963).',1,E'2009-11-17 17:30:25',E'2010-01-25 11:48:48',E'sallysparrow.jpg',E'image/jpeg',NULL,E'2010-01-04 14:56:18',E'Addicted to the past',E'Addicted to the past',0,E'Goodie');
INSERT INTO "characters" VALUES (2,E'fb9x',E'Kathy Nightingale',E'An attractive, dark haired girl in her early twenties with a bubbly and enthusiastic personality. In 2007, with both her parents deceased, Katherine Costello Nightingale lives in [London](/places/wdxm) and shares a house with her brother, [Larry](/characters/w963). Although she loves her brother, Kathy sometimes despairs of his laid-back approach to life. Kathy enjoys a warm friendship with her friend, [Sally Sparrow](/characters/jfw6).\r\n\r\nWhen Kathy accompanies Sally to the [Wester Drumlins House](/places/96p2), she encounters the [Weeping Angels](/groups/xpmq) and is thrown back in time to Hull in 1920. There she meets [Ben Wainwright](/characters/6x3n) whom she will eventually marry and begin a new life with.',1,E'2009-11-17 17:30:43',E'2010-01-25 11:46:34',E'kathyn.jpg',E'image/jpeg',NULL,E'2010-01-04 14:52:23',E'Friend of Sally Sparrow',E'Friend of Sally Sparrow',1,E'Goodie');
INSERT INTO "characters" VALUES (3,E'bwdp',E'Martha Jones',E'When the Royal Hope Hospital is transported to the Moon by the Judoon, student doctor, Martha Jones, is amongst those abducted in the building. Able to keep a cool head, Martha meets the [Doctor](/characters/m2qv) and works with him to help resolve the crisis. She then joins him on his travels in the [TARDIS](/things/n84h).\r\n\r\nThe daughter of Francine and Clive Jones, Martha has a sister, Tish and a brother, Leo. Her cousin, Adeoli Oshodi was killed by the Cybermen whilst working at Torchwood in Canary Wharf.\r\n\r\nAfter travelling with the Doctor for a while, Martha chooses to leave the TARDIS when it became clear that her romantic feelings for the Doctor were not being returned. She subsequently joins UNIT and, for a brief time, works with [Captain Jack Harkness](/characters/hb9x) at Torchwood Three in Cardiff. \r\n\r\nEngaged to Doctor Thomas Milligan, the relationship wasn\'t to last. Martha eventually married Mickey Smith and together the couple became freelance alien fighters.',1,E'2009-11-17 17:30:52',E'2010-01-25 11:47:41',E'martha.jpg',E'image/jpeg',NULL,E'2010-01-12 12:44:44',E'Companion to the Tenth Doctor',E'Companion to the Tenth Doctor',1,E'Goodie');
INSERT INTO "characters" VALUES (4,E'w963',E'Larry Nightingale',E'With tousled blonde hair and a slightly scruffy appearance, Laurence Nightingale is single, in his twenties, has a laid-back approach to life and is a bit of a geek. He works for a London based DVD shop called [Bantos](/places/vfw6). Larry is the proud owner of a large library of DVDs and is obsessed with hidden DVD extras, known as Easter Eggs, which he enjoys discussing on internet chat forums.\r\n\r\nBoth Larry\'s parents are deceased and he shares a house with his sister, [Kathy](/characters/fb9x). It is through Kathy that Larry first meets [Sally Sparrow](/characters/jfw6) with whom he will eventually become romantically involved.',1,E'2009-11-17 17:31:02',E'2010-01-25 11:47:16',E'larry.jpg',E'image/jpeg',NULL,E'2010-01-04 14:53:33',E'Amiable geek',E'Amiable geek',0,E'Goodie');
INSERT INTO "characters" VALUES (5,E'9dxm',E'Billy Shipton',E'A good-looking and confident young Caribbean man in his twenties. Billy is a detective inspector in the London Metropolitan Police Force. \r\n\r\nFor two years prior to 2007, Billy has been principal investigator of a series of unsolved disappearances at the [Wester Drumlins House](/places/96p2). Unfortunately, Billy also disappears when he is thrown back in time to 1969 by the [Weeping Angels](/groups/xpmq). There he meets the [Doctor](/characters/m2qv) who asks Billy to help him, a request that will take Billy a lifetime to fulfil.',1,E'2009-11-17 17:31:12',E'2010-01-25 11:44:11',E'billy.jpg',E'image/jpeg',NULL,E'2010-01-04 14:46:25',E'Detective Inspector',E'Detective Inspector',1,E'Goodie');
INSERT INTO "characters" VALUES (6,E'd6p2',E'Malcolm Wainwright',E'A well dressed and fastidious young man in his thirties with fair hair. He is the grandson of [Katherine](/characters/fb9x) and [Ben Wainwright](/characters/6x3n). Prior to her death, Malcolm\'s grandmother wrote a letter which she asked Malcolm to deliver to [Sally Sparrow](/characters/jfw6) at the [Wester Drumlins House](/places/96p2) on a very specific date and time. Malcolm promised to honour the request and remained true to his word.',1,E'2009-11-17 17:31:21',E'2010-01-25 11:47:30',E'malcolm.jpg',E'image/jpeg',NULL,E'2010-01-04 14:53:51',E'Grandson of Kathy Nightingale',E'Grandson of Kathy Nightingale',0,E'Goodie');
INSERT INTO "characters" VALUES (7,E'6x3n',E'Ben Wainwright',E'Resident in Hull in 1920, Ben is a working class, twenty-three-year-old, single young man with an eye out for his bride-to-be. When [Kathy Nightingale](/characters/fb9x) approaches him, Ben is immediately drawn to her.',1,E'2009-11-17 17:31:30',E'2010-01-25 11:44:25',E'ben.jpg',E'image/jpeg',NULL,E'2010-01-08 10:35:28',E'Husband of Kathy Nightingale',E'No description available',0,E'Goodie');
INSERT INTO "characters" VALUES (8,E'xpmq',E'The Weeping Angels',E'Very nearly as old as the Universe itself, the Weeping Angels, or Lonely Assassins as they are sometimes known, are a species of fanged, winged humanoids. \r\n\r\nPossessing a natural and unique defence mechanism, the Angels are quantum locked. This means that they can only move when no other living creature, including their own kind, is looking at them. As soon as they are observed, they instantly turn to stone and cannot be killed.\r\n\r\nThe Angels have the ability to send other beings into the past. This allows the Angels to feed on the potential time energy of what would have been the rest of their victim\'s lives.',2,E'2009-11-17 17:31:38',E'2010-01-25 11:53:16',E'angels.jpg',E'image/jpeg',NULL,E'2010-01-08 10:52:06',E'The lonely assassins',E'The lonely assassins',0,E'Baddie');
INSERT INTO "characters" VALUES (10,E'3mn8',E'The Doctor',E'A wanderer in time and space, the Doctor explores the Universe in his ship the TARDIS. He uses his amazing abilities and vast knowledge and experience to come to the aid of the weak and the oppressed. \r\n\r\nThe Doctor was born and raised as a Time Lord on the planet Gallifrey. As the years passed, the Doctor became disillusioned with Time Lord society, arriving at the belief that instead of just being observers, they should use their great powers to explore the Universe and help those in need. Accompanied by his granddaughter, Susan, the Doctor stole a TARDIS and fled Gallifrey to experience distant worlds and alien cultures first-hand. There is evil in the Universe and the Doctor is committed to opposing it wherever he encounters it.\r\n',1,E'2009-11-17 17:31:54',E'2010-02-01 15:26:26',E'Picture_14.png',E'image/png',NULL,E'2010-01-04 14:57:28',E'A wanderer in time and space',E'The champion of time',0,E'Goodie');
INSERT INTO "characters" VALUES (11,E'm2qv',E'The Tenth Doctor',E'Manic, playful and bursting with enthusiasm, the Tenth Doctor has a childish delight for his travels through time and space. \r\n\r\nTotally intolerant of those he considers his enemy, the Tenth Doctor can be ruthless in dispensing justice, frequently driven by a raging, self-righteous anger. In particular, he is fiercely protective of his companions and those that he allows himself to grow close to.\r\n\r\nAlthough frequently projecting a joyous and charming persona, the Tenth Doctor suffers from loneliness and perhaps appreciates the company of his travelling companions even more than his predecessors. The loss of his own people in the [Last Great Time War](/stories/cb9x) and his part in their downfall is never far from his mind.',1,E'2009-11-17 17:32:02',E'2010-01-25 11:52:45',E'The-10th-Doctor-1.jpg',E'image/jpeg',NULL,E'2010-01-04 14:58:25',E'The tenth incarnation of the Time Lord',E'The tenth incarnation of the Time Lord',1,E'Goodie');
INSERT INTO "characters" VALUES (12,E'2n54',E'Donna Noble',E'Fiercely independant and forthright in her opinions, Donna was a fiesty read-headed travelling companion for the [Tenth Doctor](/characters/m2qv). \r\n\r\nHaving first met the Doctor on the eve of her wedding on Christmas Eve 2007, Donna turned down the offer to accompany him in the [TARDIS](/things/n84h). However, she would later regret her decision and began actively investigating unusual events in the hope that she would meet the Doctor again. Ultimately she was successful when, in 2009, she encountered the Doctor at the offices of Adipose Industries. Greatful for a second chance, Donna was quick to join the Doctor on his travels, but making it clear that they would never be more than just friends.\r\n\r\nDonna was born in the late 1970s, the daughter of Geoff and Sylvia Noble. Shortly after her aborted wedding in 2007, her father passed away. Until she joined the Doctor on his travels, Donna lived in Chiswick with her mother and her maternal grandfather, Wilfred Mott. Her relationship with her mother was frequently strained, with Sylvia seemingly often disappointed with her daughter\'s life. However, Donna enjoyed a closeness with her grandfather, often sharing confidences with him that remained secret from her mother.',1,E'2009-11-17 17:32:10',E'2010-01-26 14:21:08',E'donna_noble_l.jpg',E'image/jpeg',NULL,E'2010-01-04 14:37:29',E'Companion to the Tenth Doctor',E'Companion to the Tenth Doctor',0,E'Goodie');
INSERT INTO "characters" VALUES (13,E'nq8c',E'Klineman Halpen',E'Klineman Halpen is the Chief Executive of [Ood Operations](/places/6pmq), a job that had been passed down from his Grandfather, to his Father, and eventually, himself. At the age of six he was taken to the [Ood Sphere](/places/32qv) where he saw the [Giant Ood Brain](/characters/crzf) for the first time. \r\n\r\nThe stress of running Ood Operations has taken its toll on Halpen and he is losing his hair. Halpen personal [Ood](/groups/gfw6) assistant, [Sigma](/characters/hzjw), attends to his needs and always has a tumbler of [hair tonic](/things/xmn8) ready for Halpen to drink.',1,E'2009-11-17 17:32:18',E'2010-01-26 15:50:30',E'Picture_7.png',E'image/png',NULL,E'2010-01-04 14:53:02',E'',E'Klineman Halpen was the Chief Executive',0,E'Baddie');
INSERT INTO "characters" VALUES (14,E'q5vr',E'Kess',E'Kess was the Commander of the security force on the Ood Sphere. He was a violent and a mad cold blooded killer who detested the Ood. Kess was charged with capturing the Ood who had the red eye virus and was also charged with capturing the Doctor and Donna Noble.',1,E'2009-11-17 17:32:31',E'2010-01-25 11:46:49',E'kes.jpg',E'image/jpeg',NULL,E'2010-01-08 10:42:33',E'',E'Kess was the Commander of the security',0,E'Baddie');
INSERT INTO "characters" VALUES (19,E'crzf',E'Ood Brain',E'The enormous living brain was the vital connection between all the [Ood](/groups/gfw6) across the galaxies. The Brain allowed the Ood to communicate telepathically and without the Brain, the individual Ood could not survive.\r\n\r\nThe Ood Brain was discovered by mankind beneath the Norther Glacier on the [Ood Sphere](/places/32qv). It was eventually moved to [Warehouse 15](/places/dx3n) at [Ood Operations](/places/6pmq) where it was surrounded by a telepathic barrier. This caused the Brain to be cut off from the individual Ood, allowing them to be enslaved.\r\n\r\n ',1,E'2009-11-17 17:33:16',E'2010-01-26 15:47:23',E'oodbrain.jpg',E'image/jpeg',NULL,E'2010-01-21 15:29:15',E'A giant living brain',E'A giant living brain',0,E'Goodie');
INSERT INTO "characters" VALUES (20,E'rhgb',E'Ood Delta 50',E'Servant to Mr Bartle in [Ood Operations](/places/6pmq). Delta 50 became infected with the \'red eye\' condition and electrocuted Bartle with his [translator ball](/things/wmn8). Fleeing Ood Operations, Delta 50 was shot and wounded but managed to escape to the wilderness of the Ood-Sphere. There he was discovered by the [Tenth Doctor](/characters/m2qv) and [Donna Noble](/characters/2n54). ',1,E'2009-11-17 17:33:23',E'2010-01-26 15:38:54',E'Ood_Delta_50_2.png',E'image/png',NULL,E'2010-01-04 14:54:56',E'A rebellious Ood',E'An Ood that killed his master',0,E'Goodie');
INSERT INTO "characters" VALUES (21,E'hzjw',E'Ood Sigma',E'The personal [Ood](/groups/gfw6) assistant assigned to [Klineman Halpen](/characters/nq8c).Designated as Sigma, the Greek letter is displayed on the right side of his uniform. Like other processed Ood, Sigma\'s hind brain has been removed and replaced with a [translator ball](/things/wmn8).',1,E'2009-11-17 17:33:34',E'2010-01-26 15:42:14',E'Picture_11.png',E'image/png',NULL,E'2010-01-04 14:55:15',E'Halpen\'s personal Ood',E'Halpen\'s personal Ood',0,E'Goodie');
INSERT INTO "characters" VALUES (23,E'gfw6',E'The Ood',E'A race of sentient humanoids that communicate only by telepathy. Although individuals in their own right, the Ood are connected by the giant [Ood Brain](/characters/crzf) which coordinates the entire race allowing them to \'sing\' to each other. Each individual Ood possesses two brains, a forebrain within the Ood\'s body and a second, external hindbrain usually carried in the Ood\'s hands. The vulnerability of the hindbrain makes the Ood a naturally pacifist race.\r\n\r\nThe Ood were discovered and enslaved by humanity. Their connection with the Ood Brain was cut off, reducing their telepathic abilities. Each enslaved Ood had its hindbrain removed and replaced with a [translator ball](/things/wmn8). This operation enabled the Ood to communicate audibly with their human masters and also rendered them servile. ',2,E'2009-11-17 17:42:50',E'2010-01-26 15:44:13',E'The_Ood.png',E'image/png',NULL,E'2010-01-04 14:48:51',E'Telepathic humanoids',E'Telepathic humanoids',0,E'Goodie');
INSERT INTO "characters" VALUES (26,E'b963',E'Davros',E'Crippled and disfigured by a terrible accident, Davros is a humanoid figure permanently encased in a wheelchair that resembles the lower half of a [Dalek](/groups/284h). He is entirely reliant on the mechanisms of his chair to keep him alive. He has only the use of his right arm. He is blind but is able to see by means of a single electronic eye implanted in his forehead. His speech is electronic and not unlike a Dalek.\r\n\r\nA Kaled scientist from the planet [Skaro](/places/6mn8), Davros was born during the thousand year war between the Kaleds and the Thals. Davros’s research leads him to theorise that the centuries long nuclear war between the Kaleds and Thals will eventually lead to the Kaleds mutating into helpless, immobile organisms.\r\n\r\nDavros creates the Mark 3 Travel Machine, which would later be known as a Dalek (an anagram of Kaled), as a means to allow the Kaled race to survive. However, in the course of his experiments in which he accelerates the Kaled mutation, Davros also removes what he considers to be debilitating emotions from the mutants. The creatures he creates are devoid of pity and compassion and consider themselves to be the superior creatures in the Universe.\r\n\r\n\r\n',1,E'2009-11-17 17:44:13',E'2010-01-25 14:49:00',E'DOCTORWHOx413x014.jpg',E'image/jpeg',NULL,E'2010-01-04 14:51:09',E'The insane genius who created the Daleks',E'Creator of the Daleks. A Kaled scientist',0,E'Baddie');
INSERT INTO "characters" VALUES (29,E'wx3n',E'The Fourth Doctor',E'Immediately recognisable by his curly brown hair, staring eyes and huge grin, the Doctor\'s fourth incarnation is a larger-than-life personality. Usually to be found wearing an enormously long scarf and a large floppy brown hat, the Fourth Doctor has a bohemian nature that defies convention and authority.\r\n\r\nThe Fourth Doctor is quick to break the ties with [Earth](/places/fx3n) that he had made in his third incarnation. Instead, he chooses to return to his life as a wanderer amongst the stars, occasionally, and reluctantly, carrying out missions on behalf of the [Time Lords](/groups/d325).\r\n\r\nAlthough others join the Fourth Doctor on his travels, he is more independent and perhaps less tolerant of his companions than previously. However, his sense of responsibility ensures that he never allows harm to come to any of his friends and he continues to fight against the evil forces of the Universe.',1,E'2009-12-21 11:48:21',E'2010-01-25 14:32:40',E'doctor4.jpg',E'image/jpeg',NULL,E'2010-01-06 14:37:27',E'The fourth incarnation of the Time Lord',E'The fourth incarnation of the Time Lord',0,E'Goodie');
INSERT INTO "characters" VALUES (30,E'9pmq',E'Sarah Jane Smith',E'With a sharp inquisitive mind and strong personality, Sarah is well suited to life aboard the [TARDIS](/things/n84h). In her early twenties when she first meets the [Doctor](/characters/3mn8) in his third incarnation, the direction of Sarah\'s life is dramatically influenced by her experiences with the [Time Lord](/groups/d325).\r\n\r\nWitnessing the Doctor\'s regeneration into his fourth body, Sarah continues to travel with him for a time but eventually leaves the TARDIS when the Doctor is summoned to his home world of Gallifrey. \r\n\r\nThe Doctor later leaves Sarah a Christmas present of a K9 and she encounters him again some years later in his tenth incarnation. Following this meeting, Sarah is reinvigorated with a new sense of purpose. With the Doctor as her inspiration, Sarah establishes a base of operations from her home in Ealing and plays a crucial role in protecting the Earth from alien threats.',1,E'2009-12-21 11:48:46',E'2010-01-25 14:45:06',E'DOCTORWHOx203x212.jpg',E'image/jpeg',NULL,E'2010-01-04 14:56:43',E'Companion to the Doctor',E'Companion to the Doctor',0,E'Goodie');
INSERT INTO "characters" VALUES (31,E'd325',E'The Time Lords',E'The Time Lords of Gallifrey were once one of the strongest forces in the Universe. Their advance science and technology gave them god-like powers which would allow them access to the whole of space and time. However, with such power came great responsibility. The Time Lords chose to only observe the events of the Universe and the interference in the affairs of others, however well intentioned, was strictly forbidden. In time though, the Time Lords did begin to relax their non-interference policy and would occasionally, but covertly, intervene in significant events.\r\n\r\nIt is one such intervention that proves to be the beginning of the Time Lords’ downfall. When the Time Lords attempt to change [Dalek](/groups/284h) history and avert their creation, the Daleks soon retaliate. Eventually a full scale conflict brakes out between the Daleks and the Time Lords. [The Last Great Time War](/stories/cb9x) would end in the destruction of both races.',2,E'2009-12-21 11:49:11',E'2010-01-25 16:17:57',E'timelords.jpg',E'image/jpeg',NULL,E'2010-01-07 15:33:24',E'The mighty rulers of Gallifrey',E'The mighty rulers of Gallifrey',0,E'');
INSERT INTO "characters" VALUES (32,E'284h',E'The Daleks',E'The product of a centuries long war between the Kaleds and the Thals, the Daleks were originally created by the crippled Kaled scientist, [Davros](/characters/b963) as travel machines. Davros had deduced that the years of radiation and chemical poisoning from the war would lead the Kaled race to mutate into immobile organisms. The Dalek travel machines would house these creatures and allow the Kaled race to survive. However, in the course of his experiments, Davros deliberately removed what he considered to be debilitating emotions from the Kaled mutants. \r\n\r\nThe Daleks were born without any ability to feel compassion or pity and were motivated only by hate and fear and an implacable belief that they were the superior creatures in the Universe.\r\n\r\n\r\n',2,E'2009-12-21 12:11:38',E'2010-01-25 14:49:55',E'daleks.jpg',E'image/jpeg',NULL,E'2010-01-14 15:29:07',E'The Doctor\'s arch enemies',E'Totally ruthless race of bio-mechanoids',0,E'Baddie');
INSERT INTO "characters" VALUES (33,E'4zjw',E'The First Doctor',E'With the appearance of an upper class Victorian gentleman, the First Doctor projects an air of authority and superiority. But beneath his seemingly unforgiving persona is a warm heart and an often child-like sense of humour. \r\n\r\nIt was while in his first incarnation that the Doctor stole his [TARDIS](/things/n84h) and escaped Gallifrey with his grandaughter, Susan. After many adventures, they eventually settled for a time on [Earth](/places/fx3n) in 1960\'s [London](/places/wdxm) where Susan attended [Coal Hill School](/places/g963).\r\n\r\nAfter Susan\'s teachers became too curious about her home life, the Doctor abducted them in the TARDIS and once again resumed his travels. ',1,E'2009-12-21 12:35:24',E'2010-02-02 11:39:58',E'dr1.jpg',E'image/jpeg',NULL,E'2010-01-18 12:47:57',E'First incarnation of the Time Lord',E'First incarnation of the Time Lord',0,E'Goodie');
INSERT INTO "characters" VALUES (34,E'cgf9',E'The Seventh Doctor',E'The Doctor\'s seventh incarnation is outwardly charming, witty and playful. Beneath this facade though, lies a darker persona. \r\n\r\nMore devious than his previous incarnations, the Seventh Doctor is secretive and manipulative. Frequently, he deliberately withholds information from those who are closest to him, allowing his companions to fear the worst in dire situations, even when he actually has the upper-hand. \r\n\r\nLike his previous incarnations, the Seventh Doctor fights evil wherever he encounters it. He is completely opposed to physical violence but can be brutal and uncompromising when dispensing justice to his enemies. ',1,E'2009-12-21 12:35:43',E'2010-01-25 11:52:14',E'doctor7.jpg',E'image/jpeg',NULL,E'2010-01-05 10:48:26',E'The seventh incarnation of the Time Lord',E'Devious and manipulative',0,E'Goodie');
INSERT INTO "characters" VALUES (35,E'rjbd',E'Ace',E'A difficult childhood lead teenager \'Dorothy\' to adopt the name Ace along with a tough, streetwise persona. When a bedroom science experiment goes badly wrong, Ace finds herself whisked away by a time storm to Iceworld where she works as a waitress. There she meets the [Seventh Doctor](/characters/cgf9) and joins him on his travels through time and space. \r\n\r\nIndependent, fearless and more than capable of looking after herself, Ace has joined the Doctor in his fight against evil. Although Ace is fiercely loyal to the Doctor, their relationship is tested by the Doctor\'s secretive and manipulative ways. With good intentions, the Doctor has on more than one occasion forced Ace, against her will, to face the demons of her past. Despite these difficult times in their friendship, there is a firm bond between the two travelers and Ace considers the [TARDIS](/things/n84h) her home.',1,E'2009-12-21 12:36:02',E'2010-01-25 15:36:19',E'ace.jpg',E'image/jpeg',NULL,E'2010-01-06 08:11:55',E'Fearless companion of the Seventh Doctor',E'Fearless companion of the Seventh Doctor',0,E'Goodie');
INSERT INTO "characters" VALUES (36,E'm84h',E'The Special Weapons Dalek',E'An [Imperial Dalek](/groups/d5vr) specially adapted to have both greater defensive and offensive capabilities. Its heavy armour allowed it to withstand attacks from intense energy weapon fire. The huge, centrally mounted energy cannon was able to discharge a devastating blast that could complete destroy multiple targets with just one shot.\r\n\r\nA Special Weapons Dalek was deployed against the [Renegade Dalek](/groups/684h) faction during the battle in the [streets of Shoreditch](/places/zb9x), [London](/places/wdxm) in 1963.',1,E'2009-12-21 13:01:13',E'2010-01-26 10:14:13',E'specialweapons.jpg',E'image/jpeg',NULL,E'2010-01-05 10:51:17',E'Imperial Dalek with enhanced fire power',E'Imperial Dalek with enhanced fire power',0,E'Baddie');
INSERT INTO "characters" VALUES (37,E'rfw6',E'Rose Tyler',E'Nineteen-year-old Rose lives with her mother, Jackie, on the Powell Estate in South [London](/places/wdxm). Her father, Pete, died when she was just one year old. Rose works as a shop assistant for Henrik’s Department Store and it’s there that she first meets the [Doctor](/characters/3mn8) in his [ninth incarnation](/characters/qgf9). The Doctor saves Rose from becoming a victim of the Nestene’s auton mannequins and together they defeat the Nestene Consciousness itself.\r\n\r\nHaving lead what she considers to be a dull life, Rose is attracted to the Doctor and his exciting adventures in the [TARDIS](/things/n84h). Accepting his offer to join him on his travels, Rose chooses to leave her mother and her boyfriend, Mickey for a new life.\r\n\r\nBright, bubbly and hungry for new experiences, Rose makes the perfect companion for the Doctor. Her feelings for the [Time Lord](/groups/d325) grow beyond just friendship, but although the Doctor has similar feelings, he is reluctant to express them knowing that, because he is a Time Lord, he will outlive Rose.\r\n\r\n',1,E'2009-12-21 15:56:04',E'2010-01-26 14:24:27',E'Picture_19.png',E'image/png',NULL,E'2010-01-04 14:55:41',E'Companion to the Ninth and Tenth Doctors',E'Companion to the Ninth and Tenth Doctors',0,E'Goodie');
INSERT INTO "characters" VALUES (38,E'hb9x',E'Captain Jack Harkness',E'An attractive and charming man, Jack Harkness is a time traveller from the 51st Century. He adopted his name and title from an American who died in [Earth](/places/fx3n)\'s World War Two in 1941.\r\n\r\nFor a time, Jack worked as a Time Agent but eventually left, becoming a con man by using his knowledge of future events. It was while carrying out a con with a Chula Ambulance in London during World War Two that Jack first met the [Doctor](/characters/qgf9), in his Ninth incarnation, and [Rose Tyler](/characters/rfw6). Jack joined them in the [TARDIS](/things/n84h) for many adventures. ',1,E'2009-12-21 15:56:40',E'2010-01-26 14:30:30',E'captainjack.jpg',E'image/jpeg',NULL,E'2010-01-07 15:46:15',E'Head of Torchwood Three',E'Head of Torchwood Three',0,E'Goodie');
INSERT INTO "characters" VALUES (39,E'zwdp',E'Harriet Jones',E'MP for the small constituency of Flydale North, Harriet Jones was content to be a back-bench MP. But when a Slytheen spacecraft crashed into the Thames, Harriet found herself on the frontline of the battle against the aliens at 10 Downing Street. \r\n\r\nFollowing the defeat of the Slytheen threat, with a little help from the [Doctor](/characters/m2qv), Harriet became Prime Minister. She joined forces with the Doctor once again on Christmas Day 2006 when they faced the Sycorax. However, the Doctor was far from happy when Harriet ordered the Torchwood Institute to destroy the retreating Sycorax spaceship. The Doctor punished Harriet by instigating her fall from power.\r\n\r\nAlthough she stood by her decision, Harriet held no bitter feelings toward the Doctor. When the [Earth](/places/fx3n) was stolen by the [Daleks](/groups/284h) in 2009, Harriet orchestrated the use of the subwave network to contact the Doctor for help. As a result, the Daleks were able to find her and exterminated her.',1,E'2009-12-21 15:56:52',E'2010-01-26 14:27:35',E'harrietjones.jpg',E'image/jpeg',NULL,E'2010-01-07 15:37:59',E'Former Prime Minister',E'Former Prime Minister',0,E'Goodie');
INSERT INTO "characters" VALUES (41,E'j6p2',E'The Shadow Proclamation',E'An intergalactic organisation responsible for upholding galactic law. On occasions, the Shadow Proclamation have employed the mercanery Judoon to enforce their regulations.\r\n\r\nThe [Doctor](/characters/m2qv) has, on several occasions, sited Shadow Proclamation laws when challenging his foes. \r\n',3,E'2009-12-21 15:59:05',E'2010-01-26 14:58:53',E'shadowproclamation_group.jpg',E'image/jpeg',NULL,E'2010-01-07 15:00:02',E'Intergalactic law enforcers',E'Intergalactic law enforcers',0,E'');
INSERT INTO "characters" VALUES (42,E'd2qv',E'Doctor 10.5',E'A human/[Time Lord](/groups/d325) hybrid that is identical in appearance to the [Tenth Doctor](/characters/m2qv). Doctor 10.5 was created when [Donna Noble](/characters/2n54)\'s life essence combined with the Doctor\'s preserved severed [hand](/things/vb9x) which grew into a full duplicate of the Doctor. This transformation was made possible because the hand had absorbed excess regenerative energy from the Doctor when he nearly regenerated. \r\n\r\nAlthough identical in appearance to the Tenth Doctor, Doctor 10.5 is physically human with only one heart and unable to regenerate. He does, however, possess all of the Doctor\'s memories but has a far more ruthless and aggressive aspect to his personality. \r\n\r\nAfter destroying the [Daleks](/groups/284h), Doctor 10.5 remains behind in the alternate universe to share a life with [Rose Tyler](/characters/rfw6).\r\n',1,E'2009-12-21 16:03:22',E'2010-01-26 14:46:46',E'10point5.jpg',E'image/jpeg',NULL,E'2010-01-13 16:00:09',E'An almost exact duplicate of the Doctor',E'An almost exact duplicate of the Doctor',0,E'Goodie');
INSERT INTO "characters" VALUES (43,E'cfw6',E'Dalek Caan',E'One of the four members of the Cult of Skaro who escaped destruction in the [Last Great Time War](/stories/cb9x) by hiding in the Void. \r\n\r\nThe Cult returned to normal space and time to [London](/places/wdxm) on [Earth](/places/fx3n) in 2007 where they battled the Cybermen as well as human forces. When the [Doctor](/characters/m2qv) defeated the Dalek and Cybermen forces, the Cult escaped by using emergency temporal shift to New York in 1930.  \r\n\r\nThere, the Cult leader, Dalek Sec attempted to created a new race of [Dalek](/groups/284h)/Human hybrids. Dalek Caan, however, did not agree with Sec\'s diluting of the Dalek essence and lead Dalek Thay and Dalek Jast, the other two members of the Cult in a revolt against Sec. \r\n\r\nThay, Jast and Sec were all destroyed, leaving Caan as the only surviving Dalek. To escape the Doctor, Caan once again employed an emergency temporal shift which this time took him back into the Last Great Time War. There he was able to rescue the Dalek creator, [Davros](/characters/b963). The cost to Caan, though, was high with him becoming physically damaged and driven almost insane. He did, however, gain the power to foresee certain future events.\r\n',1,E'2009-12-21 16:28:13',E'2010-01-26 14:53:03',E'caan.jpg',E'image/jpeg',NULL,E'2010-01-07 15:41:07',E'A member of the Cult of Skaro',E'A member of the Cult of Skaro',0,E'Baddie');
INSERT INTO "characters" VALUES (46,E'wn54',E'Harry Sullivan',E'Harry Sullivan is a naval doctor with a bright and breezy disposition. He is attached to the UNIT organisation and reports to Brigadier Lethbridge-Stewart. He was charged with looking after the [Doctor](/characters/wx3n) following his regeneration into his fourth body. He briefly joined the Doctor and [Sarah Jane Smith](/characters/9pmq) on their travels in the [TARDIS](/things/n84h) before returning to Earth.',1,E'2010-01-14 12:08:30',E'2010-01-25 14:47:01',E'harry.jpg',E'image/jpeg',NULL,E'2010-01-18 09:44:37',E'Companion to the Fourth Doctor',E'Companion to the Fourth Doctor',0,E'Goodie');
INSERT INTO "characters" VALUES (47,E'd5vr',E'The Imperial Daleks',E'A faction of [Daleks](/groups/284h) created by [Davros](/characters/b963) that remain loyal to him, regarding him as their emperor. The Imperial Daleks are distinguished by their cream and gold livery. ',2,E'2010-01-14 14:52:56',E'2010-01-25 15:50:51',E'daleks.jpg',E'image/jpeg',NULL,E'2010-01-14 15:17:44',E'Davros\'s Daleks',E'Davros\'s Daleks',0,E'Baddie');
INSERT INTO "characters" VALUES (48,E'684h',E'The Renegade Daleks',E'A faction of [Daleks](/groups/284h) descended from [Davros](/characters/b963)\'s original creations. However, the Renegade Daleks no longer recognise Davros\'s authority and are actively hostile to both him and his [Imperial Daleks](/groups/d5vr). The Renegade Daleks are distiguished by the gray and black colouring of their casings.',2,E'2010-01-14 15:23:34',E'2010-01-25 15:49:43',E'renegadedaleks.jpg',E'image/jpeg',NULL,E'2010-01-14 15:23:34',E'The original Daleks',E'The original Daleks',0,E'Baddie');
INSERT INTO "characters" VALUES (49,E'p4rg',E'The Second Doctor',E'Unlike his first incarnation, the Second Doctor cared little about his appearance, wearing a crumpled, ill-fitting version of his previous self\'s Victorian clothing. Younger than his previous self and far less formal, the Second Doctor\'s irreverence frequently leads to him not being taken seriously by those around him. This can often work in the Doctor\'s favour, allowing him to gain the upper hand with his adversaries until they realise too late their error of judgement.\r\n\r\nAfter enjoying his freedom to roam through time and space in the [TARDIS](/things/n84h), the Second Doctor is forced to call on the help of his people, the [Time Lords](/groups/d325) to return to [Earth](/places/fx3n) the humans abducted by the War Lords. The Doctor is put on trial for stealing the TARDIS and breaking the Time Lord law of non-intervention. He is found guilty and is punished by being exiled to Earth in the 20th Century and is forced to regenerate into a new body.\r\n',1,E'2010-01-18 12:21:39',E'2010-02-02 12:58:33',E'dr2.jpg',E'image/jpeg',NULL,E'2010-01-18 12:48:20',E'Second incarnation of the Time Lord',E'Second incarnation of the Time Lord',0,E'Goodie');
INSERT INTO "characters" VALUES (50,E'3chj',E'The Third Doctor',E'',1,E'2010-01-18 12:22:06',E'2010-01-25 11:52:59',E'dr3.jpg',E'image/jpeg',NULL,E'2010-01-18 12:48:48',E'Third incarnation of the Time Lord',E'Third incarnation of the Time Lord',0,E'Goodie');
INSERT INTO "characters" VALUES (51,E'mrzf',E'The Fifth Doctor',E'',1,E'2010-01-18 12:22:36',E'2010-01-25 11:50:14',E'dr5.jpg',E'image/jpeg',NULL,E'2010-01-18 12:49:07',E'Fifth incarnation of the Time Lord',E'Fifth incarnation of the Time Lord',0,E'Goodie');
INSERT INTO "characters" VALUES (52,E'2hgb',E'The Sixth Doctor',E'',1,E'2010-01-18 12:22:58',E'2010-01-25 11:52:34',E'dr6.jpg',E'image/jpeg',NULL,E'2010-01-18 12:49:31',E'Sixth incarnation of the Time Lord',E'Sixth incarnation of the Time Lord',0,E'Goodie');
INSERT INTO "characters" VALUES (53,E'nzjw',E'The Eighth Doctor',E'',1,E'2010-01-18 12:23:28',E'2010-01-25 11:49:53',E'dr8.jpg',E'image/jpeg',NULL,E'2010-01-18 12:49:50',E'Eighth incarnation of the Time Lord',E'Eighth incarnation of the Time Lord',0,E'Goodie');
INSERT INTO "characters" VALUES (54,E'qgf9',E'The Ninth Doctor',E'',1,E'2010-01-18 12:23:54',E'2010-01-25 11:51:08',E'dr9.jpg',E'image/jpeg',NULL,E'2010-01-18 12:50:14',E'Ninth incarnation of the Time Lord',E'Ninth incarnation of the Time Lord',0,E'Goodie');
INSERT INTO "characters" VALUES (55,E'5jbd',E'The Eleventh Doctor',E'',1,E'2010-01-18 12:24:16',E'2010-01-25 11:50:04',E'dr11.jpg',E'image/jpeg',NULL,E'2010-01-18 12:50:32',E'Eleventh incarnation of the Time Lord',E'Eleventh incarnation of the Time Lord',0,E'Goodie');

/*!40000 ALTER TABLE characters ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE INDEX "characters_url_key_idx" ON "characters" USING btree ("url_key");
CREATE INDEX "characters_character_type_id_idx" ON "characters" USING btree ("character_type_id");

--
-- Table structure for table collection_items
--

DROP TABLE "collection_items" CASCADE\g
DROP SEQUENCE "collection_items_id_seq" CASCADE ;

CREATE SEQUENCE "collection_items_id_seq"  START WITH 84 ;

CREATE TABLE  "collection_items" (
   "id" integer DEFAULT nextval('"collection_items_id_seq"') NOT NULL,
   "collection_id"   int default NULL, 
   "collectable_id"   int default NULL, 
   "created_at"   timestamp without time zone default NULL, 
   "updated_at"   timestamp without time zone default NULL, 
   "position"   int default NULL, 
   "description"   text, 
   primary key ("id")
)   ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE collection_items DISABLE KEYS */;

--
-- Dumping data for table collection_items
--

INSERT INTO "collection_items" VALUES (1,1,4,E'2010-01-28 16:07:47',E'2010-01-28 16:09:17',1,E'');
INSERT INTO "collection_items" VALUES (2,1,9,E'2010-01-28 16:08:01',E'2010-01-28 16:08:01',2,E'');
INSERT INTO "collection_items" VALUES (3,1,14,E'2010-01-28 16:08:12',E'2010-01-28 16:08:12',3,E'');
INSERT INTO "collection_items" VALUES (4,1,18,E'2010-01-28 16:10:34',E'2010-01-28 16:10:34',4,E'');
INSERT INTO "collection_items" VALUES (5,2,13,E'2010-01-28 16:12:01',E'2010-01-28 16:12:01',1,E'');
INSERT INTO "collection_items" VALUES (6,2,15,E'2010-01-28 16:12:09',E'2010-01-28 16:12:09',2,E'');
INSERT INTO "collection_items" VALUES (7,2,16,E'2010-01-28 16:12:19',E'2010-01-28 16:12:19',3,E'');
INSERT INTO "collection_items" VALUES (8,2,10,E'2010-01-28 16:12:41',E'2010-01-28 16:12:41',4,E'');
INSERT INTO "collection_items" VALUES (9,2,17,E'2010-01-28 16:12:54',E'2010-01-28 16:12:54',5,E'');
INSERT INTO "collection_items" VALUES (10,3,2,E'2010-01-28 16:13:46',E'2010-01-28 16:13:46',1,E'');
INSERT INTO "collection_items" VALUES (11,3,5,E'2010-01-28 16:13:58',E'2010-01-28 16:13:58',2,E'');
INSERT INTO "collection_items" VALUES (12,3,6,E'2010-01-28 16:14:05',E'2010-01-28 16:14:05',3,E'');
INSERT INTO "collection_items" VALUES (13,4,25,E'2010-01-28 16:15:52',E'2010-01-28 16:18:14',6,E'');
INSERT INTO "collection_items" VALUES (14,4,4,E'2010-01-28 16:16:06',E'2010-01-28 16:18:00',2,E'');
INSERT INTO "collection_items" VALUES (15,4,7,E'2010-01-28 16:16:15',E'2010-01-28 16:18:00',1,E'');
INSERT INTO "collection_items" VALUES (16,4,32,E'2010-01-28 16:16:25',E'2010-01-28 16:18:18',4,E'');
INSERT INTO "collection_items" VALUES (17,4,3,E'2010-01-28 16:16:39',E'2010-01-28 16:18:18',3,E'');
INSERT INTO "collection_items" VALUES (18,4,23,E'2010-01-28 16:16:51',E'2010-01-28 16:18:16',5,E'');
INSERT INTO "collection_items" VALUES (19,4,24,E'2010-01-28 16:17:02',E'2010-01-28 16:18:12',7,E'');
INSERT INTO "collection_items" VALUES (20,4,35,E'2010-01-28 16:17:15',E'2010-01-28 16:17:15',8,E'');
INSERT INTO "collection_items" VALUES (21,4,41,E'2010-01-28 16:17:26',E'2010-01-28 16:17:26',9,E'');
INSERT INTO "collection_items" VALUES (22,5,39,E'2010-01-28 16:19:28',E'2010-01-28 16:19:47',2,E'');
INSERT INTO "collection_items" VALUES (23,5,5,E'2010-01-28 16:19:44',E'2010-01-28 16:19:47',1,E'');
INSERT INTO "collection_items" VALUES (24,5,40,E'2010-01-28 16:19:57',E'2010-01-28 16:19:57',3,E'');
INSERT INTO "collection_items" VALUES (25,6,36,E'2010-01-28 16:21:49',E'2010-01-28 16:21:49',1,E'');
INSERT INTO "collection_items" VALUES (26,6,43,E'2010-01-28 16:22:03',E'2010-01-28 16:22:03',2,E'');
INSERT INTO "collection_items" VALUES (27,6,1,E'2010-01-28 16:22:18',E'2010-01-28 16:22:18',3,E'');
INSERT INTO "collection_items" VALUES (28,4,33,E'2010-01-28 16:23:05',E'2010-01-28 16:23:05',10,E'');
INSERT INTO "collection_items" VALUES (29,7,26,E'2010-01-28 16:23:59',E'2010-01-28 16:25:11',1,E'');
INSERT INTO "collection_items" VALUES (30,7,46,E'2010-01-28 16:24:11',E'2010-01-28 16:25:17',6,E'');
INSERT INTO "collection_items" VALUES (31,7,28,E'2010-01-28 16:24:20',E'2010-01-28 16:25:15',3,E'');
INSERT INTO "collection_items" VALUES (32,7,29,E'2010-01-28 16:24:37',E'2010-01-28 16:25:16',4,E'');
INSERT INTO "collection_items" VALUES (33,7,30,E'2010-01-28 16:24:43',E'2010-01-28 16:25:17',5,E'');
INSERT INTO "collection_items" VALUES (34,7,27,E'2010-01-28 16:24:57',E'2010-01-28 16:25:13',2,E'');
INSERT INTO "collection_items" VALUES (35,8,47,E'2010-01-28 16:25:56',E'2010-01-28 16:25:56',1,E'');
INSERT INTO "collection_items" VALUES (36,8,42,E'2010-01-28 16:26:11',E'2010-01-28 16:26:11',2,E'');
INSERT INTO "collection_items" VALUES (37,8,44,E'2010-01-28 16:26:18',E'2010-01-28 16:26:18',3,E'');
INSERT INTO "collection_items" VALUES (38,8,49,E'2010-01-28 16:26:48',E'2010-01-28 16:27:19',5,E'');
INSERT INTO "collection_items" VALUES (39,8,45,E'2010-01-28 16:26:57',E'2010-01-28 16:27:19',4,E'');
INSERT INTO "collection_items" VALUES (40,8,2,E'2010-01-28 16:27:37',E'2010-01-28 16:27:37',6,E'');
INSERT INTO "collection_items" VALUES (41,8,48,E'2010-01-28 16:27:46',E'2010-01-28 16:27:46',7,E'');
INSERT INTO "collection_items" VALUES (42,9,10,E'2010-01-28 16:29:53',E'2010-01-28 16:29:53',1,E'');
INSERT INTO "collection_items" VALUES (43,9,33,E'2010-01-28 16:30:01',E'2010-01-28 16:30:01',2,E'');
INSERT INTO "collection_items" VALUES (44,9,49,E'2010-01-28 16:30:11',E'2010-01-28 16:30:11',3,E'');
INSERT INTO "collection_items" VALUES (45,9,50,E'2010-01-28 16:30:19',E'2010-01-28 16:30:19',4,E'');
INSERT INTO "collection_items" VALUES (46,9,29,E'2010-01-28 16:30:24',E'2010-01-28 16:30:24',5,E'');
INSERT INTO "collection_items" VALUES (47,9,51,E'2010-01-28 16:30:30',E'2010-01-28 16:30:30',6,E'');
INSERT INTO "collection_items" VALUES (48,9,52,E'2010-01-28 16:30:42',E'2010-01-28 16:30:42',7,E'');
INSERT INTO "collection_items" VALUES (49,9,34,E'2010-01-28 16:30:49',E'2010-01-28 16:30:49',8,E'');
INSERT INTO "collection_items" VALUES (50,9,53,E'2010-01-28 16:30:55',E'2010-01-28 16:30:55',9,E'');
INSERT INTO "collection_items" VALUES (51,9,54,E'2010-01-28 16:31:00',E'2010-01-28 16:31:00',10,E'');
INSERT INTO "collection_items" VALUES (52,9,11,E'2010-01-28 16:31:09',E'2010-01-28 16:31:09',11,E'');
INSERT INTO "collection_items" VALUES (53,9,42,E'2010-01-28 16:31:18',E'2010-01-28 16:31:18',12,E'');
INSERT INTO "collection_items" VALUES (54,9,55,E'2010-01-28 16:31:25',E'2010-01-28 16:31:25',13,E'');
INSERT INTO "collection_items" VALUES (55,10,35,E'2010-01-28 16:32:08',E'2010-01-28 16:33:24',3,E'');
INSERT INTO "collection_items" VALUES (56,10,38,E'2010-01-28 16:32:13',E'2010-01-28 16:33:32',5,E'');
INSERT INTO "collection_items" VALUES (57,10,12,E'2010-01-28 16:32:19',E'2010-01-28 16:33:37',7,E'');
INSERT INTO "collection_items" VALUES (58,10,46,E'2010-01-28 16:32:24',E'2010-01-28 16:33:24',2,E'');
INSERT INTO "collection_items" VALUES (59,10,3,E'2010-01-28 16:32:33',E'2010-01-28 16:33:37',6,E'');
INSERT INTO "collection_items" VALUES (60,10,37,E'2010-01-28 16:32:42',E'2010-01-28 16:33:32',4,E'');
INSERT INTO "collection_items" VALUES (61,10,30,E'2010-01-28 16:32:49',E'2010-01-28 16:33:19',1,E'');
INSERT INTO "collection_items" VALUES (62,11,26,E'2010-01-28 16:34:23',E'2010-01-28 16:35:24',2,E'');
INSERT INTO "collection_items" VALUES (63,11,43,E'2010-01-28 16:34:30',E'2010-01-28 16:35:28',5,E'');
INSERT INTO "collection_items" VALUES (64,11,32,E'2010-01-28 16:34:44',E'2010-01-28 16:35:24',1,E'');
INSERT INTO "collection_items" VALUES (65,11,47,E'2010-01-28 16:34:52',E'2010-01-28 16:35:27',3,E'');
INSERT INTO "collection_items" VALUES (66,11,48,E'2010-01-28 16:34:57',E'2010-01-28 16:35:28',4,E'');
INSERT INTO "collection_items" VALUES (67,11,36,E'2010-01-28 16:35:04',E'2010-01-28 16:35:04',6,E'');
INSERT INTO "collection_items" VALUES (68,12,23,E'2010-01-28 16:36:20',E'2010-01-28 16:36:20',1,E'');
INSERT INTO "collection_items" VALUES (69,12,20,E'2010-01-28 16:36:58',E'2010-01-28 16:36:58',2,E'');
INSERT INTO "collection_items" VALUES (70,12,21,E'2010-01-28 16:37:03',E'2010-01-28 16:37:03',3,E'');
INSERT INTO "collection_items" VALUES (71,12,19,E'2010-01-28 16:37:07',E'2010-01-28 16:37:07',4,E'');
INSERT INTO "collection_items" VALUES (72,13,41,E'2010-01-28 16:38:22',E'2010-01-28 16:38:22',1,E'');
INSERT INTO "collection_items" VALUES (73,13,31,E'2010-01-28 16:38:33',E'2010-01-28 16:38:33',2,E'');
INSERT INTO "collection_items" VALUES (74,13,8,E'2010-01-28 16:38:37',E'2010-01-28 16:38:37',3,E'');
INSERT INTO "collection_items" VALUES (75,14,7,E'2010-01-28 16:39:15',E'2010-01-28 16:39:15',1,E'');
INSERT INTO "collection_items" VALUES (76,14,5,E'2010-01-28 16:39:20',E'2010-01-28 16:39:20',2,E'');
INSERT INTO "collection_items" VALUES (77,14,39,E'2010-01-28 16:39:28',E'2010-01-28 16:39:28',3,E'');
INSERT INTO "collection_items" VALUES (78,14,2,E'2010-01-28 16:39:36',E'2010-01-29 11:40:55',5,E'');
INSERT INTO "collection_items" VALUES (79,14,14,E'2010-01-28 16:39:42',E'2010-01-29 11:40:52',6,E'');
INSERT INTO "collection_items" VALUES (80,14,13,E'2010-01-28 16:39:48',E'2010-01-29 11:40:50',7,E'');
INSERT INTO "collection_items" VALUES (81,14,4,E'2010-01-28 16:39:54',E'2010-01-29 11:40:49',8,E'');
INSERT INTO "collection_items" VALUES (82,14,6,E'2010-01-28 16:39:59',E'2010-01-29 11:40:47',9,E'');
INSERT INTO "collection_items" VALUES (83,14,1,E'2010-01-29 11:40:43',E'2010-01-29 11:40:55',4,E'');

/*!40000 ALTER TABLE collection_items ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

--
-- Table structure for table collections
--

DROP TABLE "collections" CASCADE\g
DROP SEQUENCE "collections_id_seq" CASCADE ;

CREATE SEQUENCE "collections_id_seq"  START WITH 15 ;

CREATE TABLE  "collections" (
   "id" integer DEFAULT nextval('"collections_id_seq"') NOT NULL,
   "title"   varchar(255) default NULL, 
   "collection_type"   varchar(255) default NULL, 
   "created_at"   timestamp without time zone default NULL, 
   "updated_at"   timestamp without time zone default NULL, 
   "position"   int default NULL, 
   primary key ("id")
)   ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE collections DISABLE KEYS */;

--
-- Dumping data for table collections
--

INSERT INTO "collections" VALUES (1,E'The Doctor\'s Possessions',E'Artifact',E'2010-01-28 16:07:26',E'2010-01-28 16:07:26',1);
INSERT INTO "collections" VALUES (2,E'Gadgets',E'Artifact',E'2010-01-28 16:11:39',E'2010-01-28 16:11:39',2);
INSERT INTO "collections" VALUES (3,E'Ephemera',E'Artifact',E'2010-01-28 16:13:32',E'2010-01-28 16:13:32',3);
INSERT INTO "collections" VALUES (4,E'Other Worlds',E'Location',E'2010-01-28 16:15:11',E'2010-01-28 16:15:11',4);
INSERT INTO "collections" VALUES (5,E'Starships',E'Location',E'2010-01-28 16:19:20',E'2010-01-28 16:28:40',8);
INSERT INTO "collections" VALUES (6,E'Earth',E'Location',E'2010-01-28 16:21:26',E'2010-01-28 16:28:37',5);
INSERT INTO "collections" VALUES (7,E'East London',E'Location',E'2010-01-28 16:23:54',E'2010-01-28 16:28:39',6);
INSERT INTO "collections" VALUES (8,E'West London',E'Location',E'2010-01-28 16:25:47',E'2010-01-28 16:28:40',7);
INSERT INTO "collections" VALUES (9,E'The Doctor',E'Character',E'2010-01-28 16:29:43',E'2010-01-28 16:29:43',9);
INSERT INTO "collections" VALUES (10,E'The Companions',E'Character',E'2010-01-28 16:32:01',E'2010-01-28 16:32:01',10);
INSERT INTO "collections" VALUES (11,E'Daleks',E'Character',E'2010-01-28 16:34:13',E'2010-01-28 16:34:18',11);
INSERT INTO "collections" VALUES (12,E'The Ood',E'Character',E'2010-01-28 16:36:07',E'2010-01-28 16:36:07',12);
INSERT INTO "collections" VALUES (13,E'Aliens',E'Character',E'2010-01-28 16:38:11',E'2010-01-28 16:38:11',13);
INSERT INTO "collections" VALUES (14,E'Humans',E'Character',E'2010-01-28 16:39:04',E'2010-01-28 16:39:08',14);

/*!40000 ALTER TABLE collections ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

--
-- Table structure for table episode_occurrences
--

DROP TABLE "episode_occurrences" CASCADE\g
DROP SEQUENCE "episode_occurrences_id_seq" CASCADE ;

CREATE SEQUENCE "episode_occurrences_id_seq"  START WITH 84 ;

CREATE TABLE  "episode_occurrences" (
   "id" integer DEFAULT nextval('"episode_occurrences_id_seq"') NOT NULL,
   "event_id"   int default NULL, 
   "start_time"   time default '00:00:00', 
   "created_at"   timestamp without time zone default NULL, 
   "updated_at"   timestamp without time zone default NULL, 
   "end_time"   time default '00:00:00', 
   "episode_id"   int default NULL, 
   "video_filename"   varchar(255) default NULL, 
   "imgeo_file_name"   varchar(255) default NULL, 
   "imgeo_content_type"   varchar(255) default NULL, 
   "imgeo_img_file_size"   int default NULL, 
   "imgeo_updated_at"   timestamp without time zone default NULL, 
   primary key ("id")
)    ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE episode_occurrences DISABLE KEYS */;

--
-- Dumping data for table episode_occurrences
--

INSERT INTO "episode_occurrences" VALUES (13,20,E'00:12:23',E'2009-12-22 16:13:56',E'2010-01-15 14:59:56',E'00:13:00',10,E'remembrance_of_the_daleks_1.mp4',E'alien01.jpg',E'image/jpeg',NULL,E'2010-01-14 13:16:47');
INSERT INTO "episode_occurrences" VALUES (14,21,E'00:21:25',E'2009-12-22 16:28:12',E'2010-01-14 14:17:52',E'00:22:17',10,E'remembrance_of_the_daleks_1.mp4',E'transmat01.jpg',E'image/jpeg',NULL,E'2010-01-14 14:17:52');
INSERT INTO "episode_occurrences" VALUES (15,22,E'00:23:08',E'2009-12-22 16:32:43',E'2010-01-15 15:03:34',E'00:23:30',10,E'remembrance_of_the_daleks_1.mp4',E'dalekattack02.jpg',E'image/jpeg',NULL,E'2010-01-14 14:26:15');
INSERT INTO "episode_occurrences" VALUES (16,23,E'00:01:00',E'2009-12-22 16:40:11',E'2010-01-15 15:05:21',E'00:01:49',13,E'remembrance_of_the_daleks_4.mp4',E'landing01.jpg',E'image/jpeg',NULL,E'2010-01-14 14:46:07');
INSERT INTO "episode_occurrences" VALUES (17,24,E'00:03:18',E'2009-12-23 10:37:44',E'2010-01-15 10:53:06',E'00:03:48',13,E'remembrance_of_the_daleks_4.mp4',E'dalekattack01.jpg',E'image/jpeg',NULL,E'2010-01-15 10:53:05');
INSERT INTO "episode_occurrences" VALUES (18,25,E'00:13:43',E'2009-12-23 10:43:43',E'2010-01-15 11:02:50',E'00:14:40',13,E'remembrance_of_the_daleks_4.mp4',E'revealed.jpg',E'image/jpeg',NULL,E'2010-01-15 11:01:55');
INSERT INTO "episode_occurrences" VALUES (19,26,E'00:15:37',E'2009-12-23 10:52:58',E'2010-01-15 15:11:38',E'00:16:51',13,E'remembrance_of_the_daleks_4.mp4',E'confrontation.jpg',E'image/jpeg',NULL,E'2010-01-15 11:15:44');
INSERT INTO "episode_occurrences" VALUES (20,27,E'00:17:08',E'2009-12-23 11:05:13',E'2010-01-15 15:17:08',E'00:17:45',13,E'remembrance_of_the_daleks_4.mp4',E'activate.jpg',E'image/jpeg',NULL,E'2010-01-15 11:22:54');
INSERT INTO "episode_occurrences" VALUES (21,28,E'00:17:37',E'2009-12-23 11:07:05',E'2010-01-15 15:17:52',E'00:18:20',13,E'remembrance_of_the_daleks_4.mp4',E'skaro01.jpg',E'image/jpeg',NULL,E'2010-01-15 11:31:17');
INSERT INTO "episode_occurrences" VALUES (22,29,E'00:18:12',E'2009-12-23 11:09:23',E'2010-01-15 11:38:32',E'00:19:01',13,E'remembrance_of_the_daleks_4.mp4',E'escape.jpg',E'image/jpeg',NULL,E'2010-01-15 11:38:31');
INSERT INTO "episode_occurrences" VALUES (23,45,E'00:00:40',E'2010-01-05 10:35:09',E'2010-01-21 10:15:08',E'00:01:18',1,E'planet_of_the_ood.mp4',E'attack01.jpg',E'image/jpeg',NULL,E'2010-01-14 13:50:52');
INSERT INTO "episode_occurrences" VALUES (24,46,E'00:04:50',E'2010-01-05 10:44:01',E'2010-01-21 10:19:53',E'00:05:17',1,E'planet_of_the_ood.mp4',E'tonic.jpg',E'image/jpeg',NULL,E'2010-01-21 10:19:53');
INSERT INTO "episode_occurrences" VALUES (25,47,E'00:05:38',E'2010-01-05 10:46:58',E'2010-01-21 10:32:01',E'00:07:08',1,E'planet_of_the_ood.mp4',E'dying.jpg',E'image/jpeg',NULL,E'2010-01-21 10:27:59');
INSERT INTO "episode_occurrences" VALUES (26,48,E'00:26:39',E'2010-01-05 10:49:53',E'2010-01-21 11:41:50',E'00:27:40',1,E'planet_of_the_ood.mp4',E'brain.jpg',E'image/jpeg',NULL,E'2010-01-21 11:41:50');
INSERT INTO "episode_occurrences" VALUES (27,49,E'00:28:55',E'2010-01-05 10:51:57',E'2010-01-21 10:49:11',E'00:30:09',1,E'planet_of_the_ood.mp4',E'revolt.jpg',E'image/jpeg',NULL,E'2010-01-21 10:49:10');
INSERT INTO "episode_occurrences" VALUES (28,50,E'00:35:22',E'2010-01-05 10:56:04',E'2010-01-21 11:58:13',E'00:35:55',1,E'planet_of_the_ood.mp4',E'hidden.jpg',E'image/jpeg',NULL,E'2010-01-21 11:52:24');
INSERT INTO "episode_occurrences" VALUES (29,51,E'00:38:49',E'2010-01-05 11:02:30',E'2010-01-21 15:07:25',E'00:39:58',1,E'planet_of_the_ood.mp4',E'oodhalpen.jpg',E'image/jpeg',NULL,E'2010-01-21 15:03:39');
INSERT INTO "episode_occurrences" VALUES (30,52,E'00:40:11',E'2010-01-05 11:04:58',E'2010-01-21 15:28:27',E'00:41:23',1,E'planet_of_the_ood.mp4',NULL,NULL,NULL,NULL);
INSERT INTO "episode_occurrences" VALUES (31,53,E'00:41:33',E'2010-01-05 11:07:00',E'2010-01-21 15:48:44',E'00:41:50',1,E'planet_of_the_ood.mp4',E'endofsong.jpg',E'image/jpeg',NULL,E'2010-01-21 15:43:44');
INSERT INTO "episode_occurrences" VALUES (32,54,E'00:00:00',E'2010-01-05 12:05:13',E'2010-01-05 12:05:13',E'00:03:00',16,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "episode_occurrences" VALUES (33,55,E'00:04:10',E'2010-01-05 12:10:53',E'2010-01-05 12:10:53',E'00:05:50',16,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "episode_occurrences" VALUES (34,61,E'00:06:29',E'2010-01-12 15:48:45',E'2010-01-15 12:47:21',E'00:07:58',3,E'blink.mp4',E'visitor01.jpg',E'image/jpeg',NULL,E'2010-01-12 17:18:43');
INSERT INTO "episode_occurrences" VALUES (35,61,E'00:09:10',E'2010-01-12 15:49:23',E'2010-01-15 12:49:58',E'00:09:35',3,E'blink.mp4',E'visitor02.jpg',E'image/jpeg',NULL,E'2010-01-12 17:19:00');
INSERT INTO "episode_occurrences" VALUES (36,61,E'00:09:42',E'2010-01-12 15:49:44',E'2010-01-15 12:57:54',E'00:10:14',3,E'blink.mp4',E'visitor03.jpg',E'image/jpeg',NULL,E'2010-01-12 17:19:15');
INSERT INTO "episode_occurrences" VALUES (37,70,E'00:08:20',E'2010-01-12 15:59:03',E'2010-01-14 12:35:11',E'00:08:29',3,E'blink.mp4',E'sally_field1.jpg',E'image/jpeg',NULL,E'2010-01-12 17:07:55');
INSERT INTO "episode_occurrences" VALUES (38,70,E'00:08:40',E'2010-01-12 15:59:27',E'2010-01-15 13:01:58',E'00:09:00',3,E'blink.mp4',E'sally_field2.jpg',E'image/jpeg',NULL,E'2010-01-12 17:08:40');
INSERT INTO "episode_occurrences" VALUES (39,70,E'00:09:01',E'2010-01-12 15:59:46',E'2010-01-14 12:35:22',E'00:09:12',3,E'blink.mp4',E'sally_field3.jpg',E'image/jpeg',NULL,E'2010-01-12 17:09:09');
INSERT INTO "episode_occurrences" VALUES (41,70,E'00:11:51',E'2010-01-12 16:01:27',E'2010-01-15 13:06:42',E'00:12:22',3,E'blink.mp4',E'sally_field5.jpg',E'image/jpeg',NULL,E'2010-01-12 17:09:39');
INSERT INTO "episode_occurrences" VALUES (42,64,E'00:22:06',E'2010-01-12 16:07:14',E'2010-01-15 13:20:02',E'00:23:38',3,E'blink.mp4',E'billyandthedocclip.jpg',E'image/jpeg',NULL,E'2010-01-12 17:15:08');
INSERT INTO "episode_occurrences" VALUES (43,56,E'00:00:00',E'2010-01-13 10:47:25',E'2010-01-14 16:26:19',E'00:00:49',3,E'blink.mp4',E'sallydiscovers.jpg',E'image/jpeg',NULL,E'2010-01-13 10:47:24');
INSERT INTO "episode_occurrences" VALUES (44,57,E'00:01:04',E'2010-01-13 11:02:23',E'2010-01-14 16:48:02',E'00:01:47',3,E'blink.mp4',E'message02.jpg',E'image/jpeg',NULL,E'2010-01-13 11:02:22');
INSERT INTO "episode_occurrences" VALUES (45,58,E'00:01:54',E'2010-01-13 11:11:30',E'2010-01-14 16:53:10',E'00:02:07',3,E'blink.mp4',E'discover1.jpg',E'image/jpeg',NULL,E'2010-01-13 11:11:30');
INSERT INTO "episode_occurrences" VALUES (46,59,E'00:04:01',E'2010-01-13 11:25:13',E'2010-01-15 12:42:51',E'00:04:34',3,E'blink.mp4',E'meetlarry01.jpg',E'image/jpeg',NULL,E'2010-01-14 16:56:30');
INSERT INTO "episode_occurrences" VALUES (47,60,E'00:04:43',E'2010-01-13 11:36:18',E'2010-01-15 12:45:27',E'00:05:22',3,E'blink.mp4',E'return01.jpg',E'image/jpeg',NULL,E'2010-01-13 11:36:18');
INSERT INTO "episode_occurrences" VALUES (48,62,E'00:15:36',E'2010-01-13 11:56:21',E'2010-01-15 13:10:14',E'00:16:05',3,E'blink.mp4',E'list01.jpg',E'image/jpeg',NULL,E'2010-01-13 11:56:21');
INSERT INTO "episode_occurrences" VALUES (49,62,E'00:16:48',E'2010-01-13 11:56:52',E'2010-01-15 13:11:53',E'00:17:06',3,E'blink.mp4',E'list01.jpg',E'image/jpeg',NULL,E'2010-01-13 11:56:51');
INSERT INTO "episode_occurrences" VALUES (50,66,E'00:29:11',E'2010-01-13 13:09:14',E'2010-01-14 12:36:11',E'00:30:32',3,E'blink.mp4',E'dvdmessage01.jpg',E'image/jpeg',NULL,E'2010-01-13 13:09:14');
INSERT INTO "episode_occurrences" VALUES (51,67,E'00:35:36',E'2010-01-13 13:20:59',E'2010-01-15 13:32:40',E'00:36:42',3,E'blink.mp4',E'discovertardis02.jpg',E'image/jpeg',NULL,E'2010-01-13 13:20:59');
INSERT INTO "episode_occurrences" VALUES (52,69,E'00:40:24',E'2010-01-13 13:40:32',E'2010-01-14 12:36:28',E'00:41:41',3,E'blink.mp4',E'meetthedoctor01.jpg',E'image/jpeg',NULL,E'2010-01-13 13:40:31');
INSERT INTO "episode_occurrences" VALUES (53,13,E'00:01:36',E'2010-01-14 09:58:45',E'2010-01-15 14:27:37',E'00:03:10',4,E'genesis_of_the_daleks_ep1.mp4',E'mission01.jpg',E'image/jpeg',NULL,E'2010-01-14 09:58:44');
INSERT INTO "episode_occurrences" VALUES (54,14,E'00:22:34',E'2010-01-14 10:11:11',E'2010-01-14 13:52:28',E'00:23:37',4,E'genesis_of_the_daleks_ep1.mp4',E'first01.jpg',E'image/jpeg',NULL,E'2010-01-14 10:11:11');
INSERT INTO "episode_occurrences" VALUES (55,15,E'00:21:45',E'2010-01-14 10:37:14',E'2010-01-14 13:54:35',E'00:22:46',7,E'genesis_of_the_daleks_ep4.mp4',E'interrogation02.jpg',E'image/jpeg',NULL,E'2010-01-14 10:37:14');
INSERT INTO "episode_occurrences" VALUES (56,15,E'00:01:15',E'2010-01-14 10:37:40',E'2010-01-14 13:53:22',E'00:01:59',8,E'genesis_of_the_daleks_ep5.mp4',E'interrogation01.jpg',E'image/jpeg',NULL,E'2010-01-14 10:37:40');
INSERT INTO "episode_occurrences" VALUES (57,16,E'00:06:04',E'2010-01-14 10:51:49',E'2010-01-15 14:35:33',E'00:07:12',8,E'genesis_of_the_daleks_ep5.mp4',E'gods01.jpg',E'image/jpeg',NULL,E'2010-01-14 10:51:48');
INSERT INTO "episode_occurrences" VALUES (58,17,E'00:01:18',E'2010-01-14 11:06:53',E'2010-01-15 14:39:04',E'00:02:46',9,E'genesis_of_the_daleks_ep6.mp4',E'right01.jpg',E'image/jpeg',NULL,E'2010-01-14 11:06:53');
INSERT INTO "episode_occurrences" VALUES (59,18,E'00:19:50',E'2010-01-14 11:32:01',E'2010-01-15 14:49:54',E'00:20:36',9,E'genesis_of_the_daleks_ep6.mp4',E'revolution01.jpg',E'image/jpeg',NULL,E'2010-01-14 11:32:01');
INSERT INTO "episode_occurrences" VALUES (60,18,E'00:20:46',E'2010-01-14 11:32:33',E'2010-01-15 14:47:05',E'00:22:16',9,E'genesis_of_the_daleks_ep6.mp4',E'revoloution02.jpg',E'image/jpeg',NULL,E'2010-01-14 11:32:33');
INSERT INTO "episode_occurrences" VALUES (61,19,E'00:20:33',E'2010-01-14 11:44:56',E'2010-01-15 14:55:41',E'00:20:53',9,E'genesis_of_the_daleks_ep6.mp4',E'aftermath00.jpg',E'image/jpeg',NULL,E'2010-01-15 14:55:03');
INSERT INTO "episode_occurrences" VALUES (62,19,E'00:22:15',E'2010-01-14 11:45:31',E'2010-01-15 14:57:47',E'00:22:49',9,E'genesis_of_the_daleks_ep6.mp4',E'interrogation02.jpg',E'image/jpeg',NULL,E'2010-01-14 11:45:31');
INSERT INTO "episode_occurrences" VALUES (63,20,E'00:13:03',E'2010-01-14 13:17:51',E'2010-01-14 13:57:12',E'00:13:29',10,E'remembrance_of_the_daleks_1.mp4',E'alien02.jpg',E'image/jpeg',NULL,E'2010-01-14 13:17:51');
INSERT INTO "episode_occurrences" VALUES (64,68,E'00:37:36',E'2010-01-14 14:04:20',E'2010-01-14 14:04:20',E'00:38:10',3,E'blink.mp4',E'frozen02.jpg',E'image/jpeg',NULL,E'2010-01-14 14:04:19');
INSERT INTO "episode_occurrences" VALUES (65,30,E'00:01:23',E'2010-01-15 10:32:50',E'2010-01-15 10:32:50',E'00:02:02',14,E'stolen_earth.mp4',E'stolen01.jpg',E'image/jpeg',NULL,E'2010-01-15 10:32:50');
INSERT INTO "episode_occurrences" VALUES (66,24,E'00:04:16',E'2010-01-15 10:53:54',E'2010-01-15 15:07:27',E'00:04:33',13,E'remembrance_of_the_daleks_4.mp4',E'dalekattack02.jpg',E'image/jpeg',NULL,E'2010-01-15 10:53:53');
INSERT INTO "episode_occurrences" VALUES (67,63,E'00:18:14',E'2010-01-15 13:17:43',E'2010-01-15 13:17:43',E'00:19:21',3,E'blink.mp4',E'meetsbilly00.jpg',E'image/jpeg',NULL,E'2010-01-15 13:17:43');
INSERT INTO "episode_occurrences" VALUES (68,65,E'00:24:36',E'2010-01-15 13:27:38',E'2010-01-15 13:27:38',E'00:26:09',3,E'blink.mp4',E'billyinhospital01.jpg',E'image/jpeg',NULL,E'2010-01-15 13:27:38');
INSERT INTO "episode_occurrences" VALUES (69,31,E'00:14:08',E'2010-01-15 15:40:03',E'2010-01-15 15:41:46',E'00:15:24',14,E'stolen_earth.mp4',E'poosh.jpg',E'image/jpeg',NULL,E'2010-01-15 15:40:02');
INSERT INTO "episode_occurrences" VALUES (70,32,E'00:31:12',E'2010-01-15 16:03:22',E'2010-01-15 16:05:16',E'00:32:19',14,E'stolen_earth.mp4',E'calling01.jpg',E'image/jpeg',NULL,E'2010-01-15 16:03:21');
INSERT INTO "episode_occurrences" VALUES (71,33,E'00:36:43',E'2010-01-15 16:19:02',E'2010-01-15 16:19:02',E'00:38:36',14,E'stolen_earth.mp4',E'familiar.jpg',E'image/jpeg',NULL,E'2010-01-15 16:19:02');
INSERT INTO "episode_occurrences" VALUES (72,34,E'00:41:24',E'2010-01-15 17:08:17',E'2010-01-15 17:08:47',E'00:43:13',14,E'stolen_earth.mp4',E'reunion01.jpg',E'image/jpeg',NULL,E'2010-01-15 17:08:17');
INSERT INTO "episode_occurrences" VALUES (73,35,E'00:25:52',E'2010-01-18 16:28:09',E'2010-01-18 16:41:50',E'00:27:10',15,E'journeys_end.mp4',E'plan.jpg',E'image/jpeg',NULL,E'2010-01-18 16:28:09');
INSERT INTO "episode_occurrences" VALUES (74,36,E'00:11:39',E'2010-01-19 10:40:41',E'2010-01-19 11:02:09',E'00:12:02',15,E'journeys_end.mp4',E'meta01.jpg',E'image/jpeg',NULL,E'2010-01-19 10:40:41');
INSERT INTO "episode_occurrences" VALUES (75,36,E'00:12:11',E'2010-01-19 10:41:15',E'2010-01-19 10:41:15',E'00:12:47',15,E'journeys_end.mp4',E'meta02.jpg',E'image/jpeg',NULL,E'2010-01-19 10:41:15');
INSERT INTO "episode_occurrences" VALUES (76,37,E'00:31:18',E'2010-01-19 12:20:48',E'2010-01-19 12:23:59',E'00:32:13',15,E'journeys_end.mp4',E'fullcircle01.jpg',E'image/jpeg',NULL,E'2010-01-19 12:20:47');
INSERT INTO "episode_occurrences" VALUES (77,38,E'00:32:16',E'2010-01-19 12:51:09',E'2010-01-19 14:56:04',E'00:34:03',15,E'journeys_end.mp4',E'yourself01.jpg',E'image/jpeg',NULL,E'2010-01-19 12:51:08');
INSERT INTO "episode_occurrences" VALUES (78,39,E'00:37:25',E'2010-01-19 15:35:01',E'2010-01-19 15:37:19',E'00:38:59',15,E'journeys_end.mp4',E'doctordonna.jpg',E'image/jpeg',NULL,E'2010-01-19 15:35:00');
INSERT INTO "episode_occurrences" VALUES (79,40,E'00:41:10',E'2010-01-19 15:52:27',E'2010-01-19 15:54:33',E'00:42:00',15,E'journeys_end.mp4',E'caan.jpg',E'image/jpeg',NULL,E'2010-01-19 15:52:27');
INSERT INTO "episode_occurrences" VALUES (80,41,E'00:42:27',E'2010-01-19 16:07:11',E'2010-01-19 16:17:47',E'00:43:27',15,E'journeys_end.mp4',E'revenge.jpg',E'image/jpeg',NULL,E'2010-01-19 16:07:10');
INSERT INTO "episode_occurrences" VALUES (81,42,E'00:43:53',E'2010-01-19 16:27:57',E'2010-01-19 16:29:06',E'00:44:21',15,E'journeys_end.mp4',E'destroyer.jpg',E'image/jpeg',NULL,E'2010-01-19 16:27:57');
INSERT INTO "episode_occurrences" VALUES (82,43,E'00:51:07',E'2010-01-19 16:48:36',E'2010-01-19 16:48:36',E'00:52:54',15,E'journeys_end.mp4',E'badwolf.jpg',E'image/jpeg',NULL,E'2010-01-19 16:48:35');
INSERT INTO "episode_occurrences" VALUES (83,44,E'00:55:24',E'2010-01-19 17:04:29',E'2010-01-19 17:04:29',E'00:57:12',15,E'journeys_end.mp4',E'endofdoctordonna.jpg',E'image/jpeg',NULL,E'2010-01-19 17:04:28');

/*!40000 ALTER TABLE episode_occurrences ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE INDEX "episode_occurrences_event_id_idx" ON "episode_occurrences" USING btree ("event_id");
CREATE INDEX "episode_occurrences_episode_id_idx" ON "episode_occurrences" USING btree ("episode_id");

--
-- Table structure for table episodes
--

DROP TABLE "episodes" CASCADE\g
DROP SEQUENCE "episodes_id_seq" CASCADE ;

CREATE SEQUENCE "episodes_id_seq"  START WITH 17 ;

CREATE TABLE  "episodes" (
   "id" integer DEFAULT nextval('"episodes_id_seq"') NOT NULL,
   "pid"   varchar(255) default NULL, 
   "title"   varchar(255) default NULL, 
   "media_url"   varchar(255) default NULL, 
   "created_at"   timestamp without time zone default NULL, 
   "updated_at"   timestamp without time zone default NULL, 
   "long_synopsis"   text, 
   "imge_file_name"   varchar(255) default NULL, 
   "imge_content_type"   varchar(255) default NULL, 
   "imge_file_size"   int default NULL, 
   "imge_updated_at"   timestamp without time zone default NULL, 
   "position"   int default NULL, 
   primary key ("id")
)    ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE episodes DISABLE KEYS */;

--
-- Dumping data for table episodes
--

INSERT INTO "episodes" VALUES (1,E'b00b07kw',E'Planet Of The Ood',E'http://g.bbcredux.com/programme/5190991963499020053/download/856-1257336990-4254f402aeda6a09c2530c4a044252ca/flash.flv',E'2009-11-18 10:52:46',E'2010-01-15 11:50:27',E'The Doctor takes Donna to her first alien world - but the Ood-Sphere reveals some terrible truths about the Human Race.',E'Picture_9.png',E'image/png',397382,E'2010-01-04 15:33:14',1);
INSERT INTO "episodes" VALUES (3,E'b0074gpl',E'Blink',E'',E'2009-11-19 10:57:22',E'2010-01-15 11:50:27',E'',E'blink_episode.jpg',E'image/jpeg',75116,E'2010-01-13 11:04:44',2);
INSERT INTO "episodes" VALUES (4,E'xxxx001',E'Genesis of the Daleks - Episode 1',NULL,E'2009-12-21 12:29:41',E'2010-01-15 11:50:27',E'',NULL,NULL,NULL,NULL,3);
INSERT INTO "episodes" VALUES (5,E'xxxx002',E'Genesis of the Daleks - Episode 2',NULL,E'2009-12-21 12:30:58',E'2010-01-15 11:50:27',E'',NULL,NULL,NULL,NULL,4);
INSERT INTO "episodes" VALUES (6,E'xxxx003',E'Genesis of the Daleks - Episode 3',NULL,E'2009-12-21 12:31:18',E'2010-01-15 11:50:27',E'',NULL,NULL,NULL,NULL,5);
INSERT INTO "episodes" VALUES (7,E'xxxx004',E'Genesis of the Daleks - Episode 4',NULL,E'2009-12-21 12:32:03',E'2010-01-15 11:50:27',E'',NULL,NULL,NULL,NULL,6);
INSERT INTO "episodes" VALUES (8,E'xxxx005',E'Genesis of the Daleks - Episode 5',NULL,E'2009-12-21 12:32:17',E'2010-01-15 11:50:27',E'',NULL,NULL,NULL,NULL,7);
INSERT INTO "episodes" VALUES (9,E'xxxx006',E'Genesis of the Daleks - Episode 6',NULL,E'2009-12-21 12:32:31',E'2010-01-15 11:50:27',E'',NULL,NULL,NULL,NULL,8);
INSERT INTO "episodes" VALUES (10,E'xxxx007',E'Remembrance of the Daleks - Episode 1',NULL,E'2009-12-21 12:47:24',E'2010-01-15 11:50:27',E'',NULL,NULL,NULL,NULL,9);
INSERT INTO "episodes" VALUES (11,E'xxxx008',E'Remembrance of the Daleks - Episode 2',NULL,E'2009-12-21 12:47:38',E'2010-01-15 11:50:27',E'',NULL,NULL,NULL,NULL,10);
INSERT INTO "episodes" VALUES (12,E'xxxx009',E'Remembrance of the Daleks - Episode 3',NULL,E'2009-12-21 12:47:49',E'2010-01-15 11:50:27',E'',NULL,NULL,NULL,NULL,11);
INSERT INTO "episodes" VALUES (13,E'xxxx010',E'Remembrance of the Daleks - Episode 4',NULL,E'2009-12-21 12:48:05',E'2010-01-15 11:50:27',E'',NULL,NULL,NULL,NULL,12);
INSERT INTO "episodes" VALUES (14,E'b00cccvg',E'The Stolen Earth',NULL,E'2009-12-21 15:53:07',E'2010-01-15 11:50:27',E'',NULL,NULL,NULL,NULL,13);
INSERT INTO "episodes" VALUES (15,E'b00cgnjr',E'Journey\'s End',NULL,E'2009-12-21 15:53:41',E'2010-02-03 14:01:06',E'',E'Picture_20.png',E'image/png',437900,E'2010-02-03 14:01:02',14);
INSERT INTO "episodes" VALUES (16,E'b0074gfz',E'The Impossible Planet',NULL,E'2010-01-05 11:59:38',E'2010-01-15 11:50:27',E'The Doctor and Rose find themselves on a desolate world, in the orbit of a black hole. Trapped with an Earth expedition and the mysterious Ood, the time-travellers face an even greater danger, as something ancient beneath the planet\'s surface begins to awake.',E'Picture_20.png',E'image/png',437900,E'2010-01-05 11:59:37',15);

/*!40000 ALTER TABLE episodes ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE INDEX "episodes_pid_idx" ON "episodes" USING btree ("pid");

--
-- Table structure for table event_locations
--

DROP TABLE "event_locations" CASCADE\g
DROP SEQUENCE "event_locations_id_seq" CASCADE ;

CREATE SEQUENCE "event_locations_id_seq"  START WITH 81 ;

CREATE TABLE  "event_locations" (
   "id" integer DEFAULT nextval('"event_locations_id_seq"') NOT NULL,
   "event_id"   int default NULL, 
   "location_id"   int default NULL, 
   "created_at"   timestamp without time zone default NULL, 
   "updated_at"   timestamp without time zone default NULL, 
   primary key ("id")
)    ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE event_locations DISABLE KEYS */;

--
-- Dumping data for table event_locations
--

INSERT INTO "event_locations" VALUES (13,13,24,E'2009-12-21 12:03:23',E'2009-12-21 12:03:23');
INSERT INTO "event_locations" VALUES (14,14,24,E'2009-12-21 12:10:05',E'2009-12-21 12:10:05');
INSERT INTO "event_locations" VALUES (15,15,25,E'2009-12-21 12:13:37',E'2009-12-21 12:13:37');
INSERT INTO "event_locations" VALUES (16,16,25,E'2009-12-21 12:15:51',E'2009-12-21 12:15:51');
INSERT INTO "event_locations" VALUES (17,17,25,E'2009-12-21 12:17:37',E'2009-12-21 12:17:37');
INSERT INTO "event_locations" VALUES (18,18,25,E'2009-12-21 12:19:59',E'2009-12-21 12:19:59');
INSERT INTO "event_locations" VALUES (19,19,25,E'2009-12-21 12:22:14',E'2009-12-21 12:22:14');
INSERT INTO "event_locations" VALUES (20,20,26,E'2009-12-21 12:50:16',E'2009-12-21 12:50:16');
INSERT INTO "event_locations" VALUES (21,21,29,E'2009-12-21 12:53:53',E'2009-12-21 12:53:53');
INSERT INTO "event_locations" VALUES (22,22,29,E'2009-12-21 12:56:06',E'2009-12-21 12:56:06');
INSERT INTO "event_locations" VALUES (23,23,30,E'2009-12-21 12:58:38',E'2009-12-21 12:58:38');
INSERT INTO "event_locations" VALUES (24,24,27,E'2009-12-21 13:00:17',E'2009-12-21 13:00:17');
INSERT INTO "event_locations" VALUES (25,25,29,E'2009-12-21 13:09:55',E'2009-12-21 13:09:55');
INSERT INTO "event_locations" VALUES (26,26,29,E'2009-12-21 13:11:50',E'2009-12-21 13:11:50');
INSERT INTO "event_locations" VALUES (27,28,23,E'2009-12-21 13:16:00',E'2009-12-21 13:16:00');
INSERT INTO "event_locations" VALUES (31,32,33,E'2009-12-21 16:12:00',E'2009-12-21 16:12:00');
INSERT INTO "event_locations" VALUES (33,43,36,E'2009-12-21 16:35:40',E'2009-12-21 16:35:40');
INSERT INTO "event_locations" VALUES (34,45,4,E'2010-01-05 10:35:51',E'2010-01-05 10:35:51');
INSERT INTO "event_locations" VALUES (35,46,4,E'2010-01-05 10:42:33',E'2010-01-05 10:42:33');
INSERT INTO "event_locations" VALUES (36,47,7,E'2010-01-05 10:45:50',E'2010-01-05 10:45:50');
INSERT INTO "event_locations" VALUES (37,48,4,E'2010-01-05 10:48:39',E'2010-01-05 10:48:39');
INSERT INTO "event_locations" VALUES (38,49,4,E'2010-01-05 10:51:15',E'2010-01-05 10:51:15');
INSERT INTO "event_locations" VALUES (39,50,3,E'2010-01-05 10:53:55',E'2010-01-05 10:53:55');
INSERT INTO "event_locations" VALUES (40,51,3,E'2010-01-05 11:00:54',E'2010-01-05 11:00:54');
INSERT INTO "event_locations" VALUES (42,53,7,E'2010-01-05 11:06:02',E'2010-01-05 11:06:02');
INSERT INTO "event_locations" VALUES (45,29,39,E'2010-01-06 12:09:13',E'2010-01-06 12:09:13');
INSERT INTO "event_locations" VALUES (46,27,39,E'2010-01-06 12:09:37',E'2010-01-06 12:09:37');
INSERT INTO "event_locations" VALUES (47,26,39,E'2010-01-06 12:09:58',E'2010-01-06 12:09:58');
INSERT INTO "event_locations" VALUES (48,25,39,E'2010-01-06 12:10:27',E'2010-01-06 12:10:27');
INSERT INTO "event_locations" VALUES (49,31,41,E'2010-01-07 15:02:01',E'2010-01-07 15:02:01');
INSERT INTO "event_locations" VALUES (50,56,2,E'2010-01-08 10:22:53',E'2010-01-08 10:22:53');
INSERT INTO "event_locations" VALUES (51,57,2,E'2010-01-08 10:23:09',E'2010-01-08 10:23:09');
INSERT INTO "event_locations" VALUES (52,58,2,E'2010-01-08 10:23:30',E'2010-01-08 10:23:30');
INSERT INTO "event_locations" VALUES (53,60,2,E'2010-01-08 10:23:43',E'2010-01-08 10:23:43');
INSERT INTO "event_locations" VALUES (54,66,2,E'2010-01-08 10:24:17',E'2010-01-08 10:24:17');
INSERT INTO "event_locations" VALUES (55,59,42,E'2010-01-08 11:27:12',E'2010-01-08 11:27:12');
INSERT INTO "event_locations" VALUES (56,61,2,E'2010-01-08 11:28:55',E'2010-01-08 11:28:55');
INSERT INTO "event_locations" VALUES (58,62,44,E'2010-01-08 11:43:13',E'2010-01-08 11:43:13');
INSERT INTO "event_locations" VALUES (59,63,45,E'2010-01-08 11:53:59',E'2010-01-08 11:53:59');
INSERT INTO "event_locations" VALUES (60,64,46,E'2010-01-08 11:58:57',E'2010-01-08 11:58:57');
INSERT INTO "event_locations" VALUES (61,65,47,E'2010-01-08 12:04:03',E'2010-01-08 12:04:03');
INSERT INTO "event_locations" VALUES (62,67,48,E'2010-01-08 12:10:08',E'2010-01-08 12:10:08');
INSERT INTO "event_locations" VALUES (63,68,5,E'2010-01-08 12:11:32',E'2010-01-08 12:11:32');
INSERT INTO "event_locations" VALUES (64,68,48,E'2010-01-08 12:11:41',E'2010-01-08 12:11:41');
INSERT INTO "event_locations" VALUES (65,69,44,E'2010-01-08 12:13:18',E'2010-01-08 12:13:18');
INSERT INTO "event_locations" VALUES (66,70,43,E'2010-01-12 15:58:15',E'2010-01-12 15:58:15');
INSERT INTO "event_locations" VALUES (67,63,49,E'2010-01-13 12:36:27',E'2010-01-13 12:36:27');
INSERT INTO "event_locations" VALUES (68,52,3,E'2010-01-14 09:32:07',E'2010-01-14 09:32:07');
INSERT INTO "event_locations" VALUES (69,30,5,E'2010-01-15 10:29:45',E'2010-01-15 10:29:45');
INSERT INTO "event_locations" VALUES (70,28,39,E'2010-01-15 11:29:09',E'2010-01-15 11:29:09');
INSERT INTO "event_locations" VALUES (71,34,1,E'2010-01-15 16:27:52',E'2010-01-15 16:27:52');
INSERT INTO "event_locations" VALUES (72,35,40,E'2010-01-18 16:25:04',E'2010-01-18 16:25:04');
INSERT INTO "event_locations" VALUES (73,36,5,E'2010-01-19 10:40:02',E'2010-01-19 10:40:02');
INSERT INTO "event_locations" VALUES (74,37,40,E'2010-01-19 12:17:04',E'2010-01-19 12:17:04');
INSERT INTO "event_locations" VALUES (75,38,40,E'2010-01-19 14:51:28',E'2010-01-19 14:51:28');
INSERT INTO "event_locations" VALUES (76,39,40,E'2010-01-19 15:34:19',E'2010-01-19 15:34:19');
INSERT INTO "event_locations" VALUES (77,40,40,E'2010-01-19 15:51:46',E'2010-01-19 15:51:46');
INSERT INTO "event_locations" VALUES (78,41,40,E'2010-01-19 16:06:23',E'2010-01-19 16:06:23');
INSERT INTO "event_locations" VALUES (79,42,40,E'2010-01-19 16:25:43',E'2010-01-19 16:25:43');
INSERT INTO "event_locations" VALUES (80,44,5,E'2010-01-19 17:02:53',E'2010-01-19 17:02:53');

/*!40000 ALTER TABLE event_locations ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE INDEX "event_locations_event_id_idx" ON "event_locations" USING btree ("event_id");
CREATE INDEX "event_locations_location_id_idx" ON "event_locations" USING btree ("location_id");

--
-- Table structure for table events
--

DROP TABLE "events" CASCADE\g
DROP SEQUENCE "events_id_seq" CASCADE ;

CREATE SEQUENCE "events_id_seq"  START WITH 71 ;

CREATE TABLE  "events" (
   "id" integer DEFAULT nextval('"events_id_seq"') NOT NULL,
   "url_key"   varchar(255) NOT NULL, 
   "title"   varchar(255) default NULL, 
   "long_synopsis"   text, 
   "created_at"   timestamp without time zone default NULL, 
   "updated_at"   timestamp without time zone default NULL, 
   "imgev_file_name"   varchar(255) default NULL, 
   "imgev_content_type"   varchar(255) default NULL, 
   "imgev_file_size"   int default NULL, 
   "imgev_updated_at"   timestamp without time zone default NULL, 
   "notes"   varchar(255) default NULL, 
   "short_synopsis"   varchar(40) default NULL, 
   "date"   timestamp without time zone default NULL, 
   "date_format"   varchar(255) default '%b %d, %Y', 
   primary key ("id")
)    ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE events DISABLE KEYS */;

--
-- Dumping data for table events
--

INSERT INTO "events" VALUES (13,E'3q8c',E'The Mission',E'The [Doctor](/characters/wx3n)\'s transmat journey is interrupted and he finds himself in desolate [wilderness](/places/x2qv). The [Time Lords](/groups/d325) are responsible and they have a mission for the Doctor: travel back in time and prevent the [Daleks](/groups/284h) from being created. It was to be this action that would prove to be the initial catalyst for the [Last Great Time War](/stories/cb9x).',E'2009-12-21 11:54:13',E'2010-02-01 12:09:17',E'mission00.jpg',E'image/jpeg',62396,E'2010-01-14 09:55:23',E'',E'The Doctor must change history',E'0760-05-20 12:00:00',E'Date Unknown');
INSERT INTO "events" VALUES (14,E'm5vr',E'The First Dalek',E'Separated from the [Doctor](/characters/wx3n) and [Harry](/characters/wn54), [Sarah](/characters/9pmq) has been left alone to wander the dangerous [wastelands](/places/x2qv) of [Skaro](/places/6mn8). Stumbling across a ruined building, she secretly observes the crippled scientist [Davros](/characters/b963) testing the weaponry of a prototype [Dalek](/groups/284h).',E'2009-12-21 12:09:27',E'2010-02-01 12:09:35',E'first00.jpg',E'image/jpeg',43484,E'2010-01-14 10:06:44',E'',E'Sarah discovers a prototype Dalek',E'0760-05-20 12:05:00',E'Date Unknown');
INSERT INTO "events" VALUES (15,E'nvcz',E'Interrogation',E'In the Kaled [bunker](/places/pn54) on [Skaro](/places/6mn8), [Davros](/characters/b963) demands that the [Doctor](/characters/wx3n) reveal to him the details of all [Dalek](/groups/284h) defeats in the future. If the Doctor refuses, Davros will torture [Sarah](/characters/9pmq) and [Harry](/characters/wn54).',E'2009-12-21 12:12:58',E'2010-02-01 12:09:46',E'interrogation00.jpg',E'image/jpeg',79192,E'2010-01-14 10:31:53',E'',E'Davros tortures the Doctor\'s companions',E'0760-05-20 12:10:00',E'Date Unknown');
INSERT INTO "events" VALUES (16,E'q4rg',E'Up Above the Gods',E'Left alone with [Davros](/characters/b963), the [Doctor](/characters/wx3n) poses a theoretical dilemma to the crippled Kaled scientist...',E'2009-12-21 12:15:08',E'2010-02-01 12:10:01',E'gods00.jpg',E'image/jpeg',60759,E'2010-01-14 10:49:46',E'',E'Davros is insane',E'0760-05-20 12:15:00',E'Date Unknown');
INSERT INTO "events" VALUES (17,E'5chj',E'Do I Have the Right?',E'In the [Kaled Bunker](/places/pn54) on [Skaro](/places/6mn8), the [Doctor](/characters/wx3n) prepares to fulfil his mission for the [Time Lords](/groups/d325) by destroying the embryonic [Dalek](/groups/284h) creatures created by [Davros](/characters/b963). But, at the crucial moment, the Doctor doubts his actions...',E'2009-12-21 12:17:14',E'2010-02-01 12:10:14',E'right00.jpg',E'image/jpeg',66203,E'2010-01-14 11:04:56',E'',E'The Doctor hesistates at the last moment',E'0760-05-20 12:45:00',E'Date Unknown');
INSERT INTO "events" VALUES (18,E'8rzf',E'Revolution of the Daleks',E'[Davros](/characters/b963) has brought about the destruction of his own race the Kaleds and has used his [Daleks](/groups/284h) to massacre the Thals. Apparently victorious, Davros has not anticipated that his own creations might turn on even him...\r\n',E'2009-12-21 12:18:55',E'2010-02-01 12:10:37',E'revolution00.jpg',E'image/jpeg',58555,E'2010-01-14 11:27:16',E'',E'The Daleks turn on their own creator',E'0760-05-20 12:50:00',E'Date Unknown');
INSERT INTO "events" VALUES (19,E'vhgb',E'Something Good',E'Despite the [Doctor](/characters/wx3n)\'s efforts, the [Daleks](/groups/284h) have survived. The Doctor tells [Sarah](/characters/9pmq) and [Harry](/characters/wn54) that although he has only set the Daleks\' development back by a thousand years, he still believes that something good will come from them.',E'2009-12-21 12:21:39',E'2010-02-01 12:10:56',E'aftermath02.jpg',E'image/jpeg',54705,E'2010-01-15 14:54:11',E'',E'The Daleks have survived',E'0760-05-20 12:55:00',E'Date Unknown');
INSERT INTO "events" VALUES (20,E'dmn8',E'Something Alien in Totter\'s Lane',E'The [Doctor](/characters/cgf9) and [Ace](/characters/rjbd) have landed in the [Shoreditch](/places/zb9x) area of [London](/places/wdxm) in 1963. An alien has been cornered by the army in the junkyard at [76 Totters Lane](/places/hfw6). Discovering the alien to be a [Dalek](/groups/284h), the Doctor and Ace go on the offensive...',E'2009-12-21 12:49:42',E'2010-01-25 16:10:51',E'alien00.jpg',E'image/jpeg',55435,E'2010-01-14 13:21:38',E'',E'There\'s something nasty in the junkyard',E'1963-11-22 14:17:00',E'%b %d, %Y');
INSERT INTO "events" VALUES (21,E'62qv',E'Discovery of the Transmat',E'Aware that [Daleks](/groups/284h) have been operating in the area of [Coal Hill School](/places/g963), the [Doctor](/characters/cgf9) and [Ace](/characters/rjbd)\'s investigations lead them to explore the cellar of the school. There they discover a Dalek transmat station...',E'2009-12-21 12:53:25',E'2010-01-25 16:15:38',E'transmat00.jpg',E'image/jpeg',63362,E'2010-01-14 14:15:52',E'',E'Coal Hill School has been infiltrated',E'1963-11-22 15:18:00',E'%b %d, %Y');
INSERT INTO "events" VALUES (22,E'xn54',E'Dalek Attack',E'Under the control of the [Daleks](/groups/284h), the headmaster of [Coal Hill School](/places/g963) has trapped the [Doctor](/characters/cgf9) in the school\'s [basement](/places/jdxm). There the Doctor prepares to become the victim of a Dalek as it elevates up the basement steps towards him.',E'2009-12-21 12:55:29',E'2010-01-25 16:51:05',E'dalekattack01.jpg',E'image/jpeg',78500,E'2010-01-14 14:24:54',E'',E'The Doctor confronts a flying Dalek',E'1963-11-22 15:25:00',E'%b %d, %Y');
INSERT INTO "events" VALUES (23,E'pq8c',E'Dalek Shuttle Lands',E'The [Imperial Daleks](/groups/d5vr) are determined to acquire the powerful [Hand of Omega](/things/wpmq) and send a squad of Daleks to [Earth](/places/fx3n) to retrieve the device. The [Doctor](/characters/cgf9) and [Ace](/characters/rjbd) watch as the Dalek shuttlecraft lands in the [playground](/places/f6p2) of [Coal Hill School](/places/g963) and the Daleks disembark.',E'2009-12-21 12:58:12',E'2010-01-25 17:02:53',E'landing00.jpg',E'image/jpeg',79154,E'2010-01-14 14:50:43',E'',E'The Imperial Daleks land their ship',E'1963-11-23 11:00:00',E'%b %d, %Y');
INSERT INTO "events" VALUES (24,E'35vr',E'Battle of the Daleks',E'The opposing factions of the [Imperial Daleks](/groups/d5vr) and the [Renegade Daleks](/groups/684h) clash on the [streets of Shoreditch](/places/zb9x). Both are determined to acquire the all powerful [Hand of Omega](/things/wpmq) for themselves.',E'2009-12-21 12:59:57',E'2010-01-26 10:19:18',E'dalekattack00.jpg',E'image/jpeg',82784,E'2010-01-15 10:49:02',E'',E'Dalek civil war erupts on the streets',E'1963-11-23 12:00:00',E'%b %d, %Y');
INSERT INTO "events" VALUES (25,E'n4rg',E'The Emperor Revealed',E'The [Imperial Daleks](/groups/d5vr) have been successful in their mission to steal the all powerful [Hand of Omega](/things/wpmq) from [Earth](/places/fx3n) and have returned with it to their orbiting [mothership](/places/rwdp). When the [Doctor](/characters/cgf9) contacts the Dalek ship, the Imperial Emperor Dalek reveals his true identity as [Davros](/characters/b963), creator of the Daleks.',E'2009-12-21 13:09:18',E'2010-01-26 10:38:43',E'revealed.jpg',E'image/jpeg',61467,E'2010-01-15 11:00:24',E'',E'The Imperial Dalek leader is Davros',E'1963-11-23 14:00:00',E'%b %d, %Y');
INSERT INTO "events" VALUES (26,E'qchj',E'Confrontation',E'The [Imperial Dalek](/groups/d5vr) Emperor has revealed itself to actually be the [Dalek](/groups/284h) creator, [Davros](/characters/b963). Now in posession of the [Time Lord](/groups/d325)\'s [Hand of Omega](/things/wpmq), Davros announces his plans to turn [Skaro](/places/6mn8)\'s sun into a huge power source which he will use to destroy the Time Lords.',E'2009-12-21 13:11:35',E'2010-01-26 11:08:39',E'confrontation.jpg',E'image/jpeg',60145,E'2010-01-15 11:16:20',E'',E'The Doctor and Davros fence with words',E'1963-11-23 14:01:00',E'%b %d, %Y');
INSERT INTO "events" VALUES (27,E'5rzf',E'Davros Uses the Hand of Omega',E'Now in posession of the powerful [Hand of Omega](/things/wpmq), [Davros](/characters/b963) is goaded into launching the device with the intention of turning [Skaro](/places/6mn8)\'s sun into a huge source of energy.',E'2009-12-21 13:13:15',E'2010-01-26 11:12:52',E'activate.jpg',E'image/jpeg',65035,E'2010-01-15 11:21:10',E'',E'The stellar manipulator is launched',E'1963-11-23 14:05:00',E'%b %d, %Y');
INSERT INTO "events" VALUES (28,E'8hgb',E'Skaro Destroyed',E'[Davros](/characters/b963) has launched the [Time Lord](/groups/d325) stellar manipulator known as the [Hand of Omega](/things/wpmq) with the intention of turning [Skaro](/places/6mn8)\'s sun into a source of unimaginable power. But the [Doctor](/characters/cgf9) is one step ahead of Davros and Skaro is destored. The Doctor\'s actions contributed to the conflict between the [Daleks](/groups/284h) and the Time Lords that would ultimately lead to the [Last Great Time War](/stories/cb9x).',E'2009-12-21 13:15:42',E'2010-01-26 11:16:07',E'skaro00.jpg',E'image/jpeg',61050,E'2010-01-15 11:28:52',E'',E'It\'s the end for the Dalek homeworld',E'1963-11-23 14:10:00',E'%b %d, %Y');
INSERT INTO "events" VALUES (29,E'vzjw',E'Escape Capsule Launched',E'The [Doctor](/characters/cgf9) has tricked [Davros](/characters/b963) into launching the [Hand of Omega](/things/wpmq) device and it has destroyed [Skaro](/places/6mn8), the homeworld of the [Daleks](/groups/284h). The device is on its return journey to the [Dalek mothership](/places/rwdp) and, if he is to escape death, Davros has no choice but to flee!',E'2009-12-21 13:16:29',E'2010-01-26 11:19:25',E'escape.jpg',E'image/jpeg',61149,E'2010-01-15 11:35:45',E'',E'Davros makes a run for it',E'1963-11-23 14:12:00',E'%b %d, %Y');
INSERT INTO "events" VALUES (30,E'xq8c',E'The Earth Moves',E'Having received a warning of imminent doom on a universal scale from [Rose Tyler](/characters/rfw6), the [Doctor](/characters/m2qv) and [Donna](/characters/2n54) hurry back to [Earth](/places/fx3n). There though, all seems well until the entire planet completely disappears, leaving the [TARDIS](/things/n84h) suspended in space.',E'2009-12-21 16:05:09',E'2010-01-26 12:22:34',E'stolen00.jpg',E'image/jpeg',65310,E'2010-01-15 10:28:47',E'',E'The whole world disappears',E'2009-05-20 10:00:00',E'%Y');
INSERT INTO "events" VALUES (31,E'p5vr',E'Solving the Poosh Puzzle',E'In an attempt to track down the missing [Earth](/places/fx3n), the [Doctor](/characters/m2qv) and [Donna](/characters/2n54) travel to the [Shadow Proclamation](/places/nhgb). There they learn that the [arth is just one of twenty-seven planets that have gone missing. The Doctor deduces that together, the planets will form a massive power house.',E'2009-12-21 16:09:51',E'2010-01-26 12:27:45',E'poosh01.jpg',E'image/jpeg',63578,E'2010-01-15 15:37:00',E'',E'Twenty-seven planets have been stolen',E'2009-05-20 10:30:00',E'%Y');
INSERT INTO "events" VALUES (32,E'384h',E'Dialling the Doctor',E'The [Earth](/places/fx3n) has been stolen by the [Daleks](/groups/284h) and the population subjugated. In an attempt to contact the [Doctor](/characters/m2qv), ex-Prime Minister, [Harriet Jones](/characters/zwdp) opens her sub-wave network to [Sarah Jane Smith](/characters/9pmq), [Captain Jack Harkness](/characters/hb9x) at Torchwood and [Martha Jones](/characters/bwdp). The combined effort of the Doctor\'s army of friends allows them to send a telephone signal to the Doctor. ',E'2009-12-21 16:11:28',E'2010-01-26 12:32:30',E'calling00.jpg',E'image/jpeg',63775,E'2010-01-15 16:00:20',E'',E'The Doctor\'s friends send him a signal',E'2009-05-20 10:45:00',E'%Y');
INSERT INTO "events" VALUES (33,E'mvcz',E'Your Voice is Different',E'Having located the [Earth](/places/fx3n), the [Doctor](/characters/m2qv)\'s communication with his friends is interrupted. When [Davros](/characters/b963) appears on the screen before him, the Doctor is speechless as he believed Davros to have been killed in the [Last Great Time War](/stories/cb9x). Davros clearly survived though and he has created a new race of [Daleks](/groups/284h) from the cells of his own body.',E'2009-12-21 16:16:24',E'2010-01-26 12:46:06',E'familiar.jpg',E'image/jpeg',70284,E'2010-01-15 16:16:13',E'',E'Davros survived the Last Great Time War',E'2009-05-20 11:00:00',E'%Y');
INSERT INTO "events" VALUES (34,E'24rg',E'Reunion Interrupted',E'Having located the stolen [Earth](/places/fx3n), the [Doctor](/characters/m2qv) pilots the [TARDIS](/things/n84h) there. The Doctor is overjoyed to see [Rose Tyler](/characters/rfw6) waiting for him but their reunion is cut short by the unwelcome arrival of a [Dalek](/groups/284h) which fires its deathray at the Doctor.',E'2009-12-21 16:18:16',E'2010-01-26 12:48:45',E'reunion00.jpg',E'image/jpeg',71435,E'2010-01-15 17:06:03',E'',E'The Doctor and Rose find each other',E'2009-05-20 11:10:00',E'%Y');
INSERT INTO "events" VALUES (35,E'nchj',E'Davros\'s Plan',E'The [Doctor](/characters/m2qv), [Captain Jack](/characters/hb9x) and [Rose](/characters/rfw6) are prisoners of the [Daleks](/groups/284h) on the giant [Crucible](/places/h963) in the [Medusa Cascade](/places/w325). The Dalek creator, [Davros](/characters/b963), reveals his ultimate plan to use twenty-seven stolen planets as a vast energy source to power the devastating reality bomb.',E'2009-12-21 16:21:32',E'2010-01-26 12:54:27',E'plan.jpg',E'image/jpeg',76766,E'2010-01-18 16:24:52',E'',E'Davros intends to destroy reality itself',E'2009-05-20 11:20:00',E'%Y');
INSERT INTO "events" VALUES (36,E'qrzf',E'Metacrisis',E'[Donna](/characters/2n54) is trapped alone inside the [TARDIS](/things/n84h) as it faces destruction in the burning heart of the Dalek\'s [Crucible](/places/h963). She is strangely drawn to the flask containing the Doctor\'s severed [hand](/things/vb9x) and an incredible transformation begins...',E'2009-12-21 16:22:38',E'2010-01-26 12:51:16',E'meta01.jpg',E'image/jpeg',74089,E'2010-01-19 10:39:46',E'',E'A double of the Doctor is born',E'2009-05-20 11:18:00',E'%Y');
INSERT INTO "events" VALUES (37,E'5hgb',E'We Have Come Full Circle',E'The [Doctor](/characters/m2qv) and [Rose](/characters/rfw6) are held prisoner by [Davros](/characters/b963) and the [Daleks](/groups/284h) on the [Crucible](/places/h963). A transmission is received from [Captain Jack Harkness](/characters/hb9x) who threatens to detonate a warp star crystal which would destroy the Dalek\'s world ship. With him are Rose\'s mother, Jackie, Mickey Smith and [Sarah Jane Smith](/characters/9pmq). Davros recognises Sarah from long ago on the planet [Skaro](/places/6mn8).',E'2009-12-21 16:23:37',E'2010-01-26 12:57:44',E'fullcircle01.jpg',E'image/jpeg',60555,E'2010-01-19 12:16:54',E'',E'Davros recognises Sarah Jane from Skaro',E'2009-05-20 11:40:00',E'%Y');
INSERT INTO "events" VALUES (38,E'8zjw',E'I Have Shown You Yourself',E'Held prisoner by [Davros](/characters/b963) on the [Dalek](/groups/284h)\'s [Crucible](/places/h963), the [Doctor](/characters/m2qv) watches as his companions threaten to sacrifice themselves to defeat the Daleks. Davros attempts to cast doubt on the Doctor\'s hate of violence and accuses him of turning his companions into murderers.',E'2009-12-21 16:24:28',E'2010-01-26 13:36:43',E'yourself01.jpg',E'image/jpeg',58841,E'2010-01-19 14:50:41',E'',E'Davros accuses the Doctor of hypocrisy',E'2009-05-20 11:50:00',E'%Y');
INSERT INTO "events" VALUES (39,E'vgf9',E'DoctorDonna: Super Temp',E'At [Davros](/characters/b963)\'s command, the [Daleks](/groups/284h) have started the countdown to the detonation of the reality bomb which will destroy all of creation. The [Doctor](/characters/m2qv) and his companions are powerless to act, until [Donna](/characters/2n54) suddenly surprises everyone...',E'2009-12-21 16:25:32',E'2010-01-26 13:39:22',E'doctordonna.jpg',E'image/jpeg',73789,E'2010-01-19 15:34:08',E'',E'Donna saves the Universe from the Daleks',E'2009-05-20 12:00:00',E'%Y');
INSERT INTO "events" VALUES (40,E'4jbd',E'Caan\'s Betrayal',E'Defeated by [Donna Noble](/characters/2n54)and the [Doctor](/characters/m2qv) and his [half-human duplicate](/characters/d2qv), [Davros](/characters/b963) demands to know why [Dalek Caan](/characters/cfw6) had not predicted the failure of his plan. ',E'2009-12-21 16:27:10',E'2010-01-26 13:42:50',E'caan.jpg',E'image/jpeg',68192,E'2010-01-19 15:51:30',E'',E'Dalek Caan has lied to Davros',E'2009-05-20 12:10:00',E'%Y');
INSERT INTO "events" VALUES (41,E'rb9x',E'Doctor 10.5\'s Revenge',E'The [half-human version](/characters/d2qv) of the [Doctor](/characters/m2qv) decides that he cannot allow the [Dalek](/groups/284h) race to live and instigates their total destruction.',E'2009-12-21 16:29:33',E'2010-01-26 13:46:41',E'revenge.jpg',E'image/jpeg',107334,E'2010-01-19 16:06:06',E'',E'The Doctor\'s double takes drastic action',E'2009-05-20 12:20:00',E'%Y');
INSERT INTO "events" VALUES (42,E'hwdp',E'Destroyer of Worlds',E'The [Daleks](/groups/284h) have been destroyed and the [Crucible](/places/h963) worldship is collapsing. Refusing the [Doctor](/characters/m2qv)\'s offer of help, [Davros](/characters/b963) brands him \'the destroyer of worlds\'. [Dalek Caan](/characters/cfw6) reminds the Doctor that according to the prophecy, one of his companions will die.',E'2009-12-21 16:30:56',E'2010-01-26 13:48:48',E'destroyer.jpg',E'image/jpeg',71549,E'2010-01-19 16:25:34',E'',E'Davros curses the Doctor',E'2009-05-20 12:30:00',E'%Y');
INSERT INTO "events" VALUES (43,E'z963',E'Back to the Beach',E'With the [Daleks](/groups/284h) and [Davros](/characters/b963) defeated, the [Doctor](/characters/m2qv) returns Jackie, [Rose](/characters/rfw6) and the  [half-human version of himself](/characters/d2qv) to [Bad Wolf Bay](/places/6n54) in the alternate universe. Rose is reluctant to say goodbye to the Doctor once again, but the half-human Doctor will remain with her.',E'2009-12-21 16:35:18',E'2010-01-26 13:51:46',E'badwolf.jpg',E'image/jpeg',63950,E'2010-01-19 16:45:48',E'',E'Goodbye to Rose on Bad Wolf Bay',E'2009-05-20 12:45:00',E'%Y');
INSERT INTO "events" VALUES (44,E'g6p2',E'The End for DoctorDonna',E'[Donna](/characters/2n54) has become part human, part [Time Lord](/groups/d325), but her mind is unable to cope and is beginning to break down. To save her life, the [Doctor](/characters/m2qv) has no choice but to take her mermories of her time in the [TARDIS](/things/n84h) from her and return her to her life on [Earth](/places/fx3n).',E'2009-12-21 16:37:06',E'2010-01-26 13:54:33',E'endofdoctordonna.jpg',E'image/jpeg',90409,E'2010-01-19 17:02:44',E'',E'The Doctor has to save Donna\'s life',E'2009-05-20 12:55:00',E'%Y');
INSERT INTO "events" VALUES (45,E'b325',E'Ood attacks!',E'Bartle, CEO of [Ood Operations](/places/6pmq), is under pressure to improve sales. When he asks [Ood Delta 50](/characters/rhgb) for the files, his servant unexpectedly refuses and fatally attacks him.',E'2010-01-05 10:34:25',E'2010-01-26 15:14:26',E'Ood_attacks.png',E'image/png',323079,E'2010-01-05 10:34:24',E'04.03.01',E'Mr Bartle gives his last orders',E'4126-04-06 09:00:00',E'%Y');
INSERT INTO "events" VALUES (46,E'92qv',E'Executive Stress',E'As [Chief Executive Klineman Halpen](/characters/nq8c) reviews the recent murder of his managing director, Bartle, he requests a glass of hair tonic from his assistant, [Ood Sigma](/characters/hzjw). Years of stress have resulted in Klineman losing his hair and he is eager to get it back.',E'2010-01-05 10:42:20',E'2010-01-26 15:15:57',E'Halpen_takes_hair_tonic.png',E'image/png',682465,E'2010-01-05 10:42:19',E'04.03.02',E'Halpen is losing his hair',E'4126-04-06 09:10:00',E'%Y');
INSERT INTO "events" VALUES (47,E'dn54',E'Dying Ood',E'Having just arrived on the [Ood Sphere](/places/32qv), the [Doctor](/characters/m2qv) and [Donna](/characters/2n54) discover a dying [Ood](/groups/gfw6). It is [Ood Delta 50](/characters/rhgb) who earlier attacked and killed Mr Bartle, the Managing Director of Ood Operations.',E'2010-01-05 10:45:38',E'2010-01-26 15:19:01',E'dying.jpg',E'image/jpeg',89161,E'2010-01-21 10:29:25',E'04.03.03',E'It\'s the end for Ood Delta 50',E'4126-04-06 09:20:00',E'%Y');
INSERT INTO "events" VALUES (48,E'6q8c',E'Hind Brain',E'On the run from [Halpen](/characters/nq8c)\'s security guards, the [Doctor](/characters/m2qv) and [Donna](/characters/2n54) break into an [Ood](/groups/gfw6) holding cell. The Ood there are natural born Ood who haven\'t been processed and the Doctor and Donna discover the hideous secret of what mankind has been doing to the Ood...',E'2010-01-05 10:48:26',E'2010-01-26 15:21:03',E'Picture_32.png',E'image/png',854724,E'2010-01-05 10:48:24',E'04.03.04',E'The truth about the Ood is revealed',E'4126-04-06 09:29:00',E'%Y');
INSERT INTO "events" VALUES (49,E'x5vr',E'Revolting Ood',E'As [Halpen](/characters/nq8c) prepares to solve the [Ood](/groups/gfw6) problem by gassing them, the Ood begin to turn on their masters en masse. As there eyes turn red, the Ood begin to kill the humans with their [translator balls](/things/wmn8).',E'2010-01-05 10:51:02',E'2010-01-26 15:24:23',E'revolt.jpg',E'image/jpeg',94385,E'2010-01-21 10:53:10',E'04.03.05',E'The Ood fight back',E'4126-04-06 09:30:00',E'%Y');
INSERT INTO "events" VALUES (50,E'p84h',E'Hidden in Warehouse 15',E'The [Doctor](/characters/m2qv) has deduced that although the [Ood](/groups/gfw6) have two brains, there would need to be a third element to keep them alive. The Doctor and [Donna](/characters/2n54) discover the missing element locked away in a warehouse...',E'2010-01-05 10:53:37',E'2010-01-26 15:26:37',E'hidden.jpg',E'image/jpeg',85840,E'2010-01-21 11:54:58',E'04.03.06',E'The Ood Brain is kept a prisoner',E'4126-04-06 09:50:00',E'%Y');
INSERT INTO "events" VALUES (51,E'3vcz',E'Ood Halpen',E'[Mr Halpen](/characters/nq8c) holds the [Doctor](/characters/m2qv), [Donna](/characters/2n54) and [Ood Sigma](/characters/hzjw) at gunpoint. When Ood sigma offers Halpen more [hair tonic](/things/xmn8), Halpen suddenly realises that what Sigma has been feeding him all along isn\'t hair tonic at all. In fact it is Ood graft which is now triggering an incredible metamorphosis in Halpen...',E'2010-01-05 11:00:42',E'2010-01-26 15:29:00',E'Picture_12.png',E'image/png',600401,E'2010-01-05 11:00:41',E'04.03.07',E'Halpen has a change of life',E'4126-04-06 10:00:00',E'%Y');
INSERT INTO "events" VALUES (52,E'm4rg',E'The circle is broken',E'When [Kleinman Halpen](/characters/nq8c) is turned into an [Ood](/groups/gfw6), the Doctor is free to release the [Ood Brain](/characters/crzf) from the forcefield that has encircled it for centuries. Free once more, the Brain is able to sing to the Ood across the Universe and call them home...',E'2010-01-05 11:03:39',E'2010-01-26 15:31:29',E'Picture_5.png',E'image/png',816073,E'2010-01-05 11:03:38',E'04.03.08',E'The Ood Brain is set free and sings',E'4126-04-06 10:10:00',E'%Y');
INSERT INTO "events" VALUES (53,E'2chj',E'Every song must end',E'[Ood Operations](/places/6pmq) has been closed down and the [Ood](/groups/gfw6) are free again after centuries of enslavement. [Ood Sigma](/characters/hzjw) thanks the [Doctor](/characters/m2qv) and [Donna](/characters/2n54) for their help and invites them to remain with the Ood and join the song...',E'2010-01-05 11:05:53',E'2010-01-26 15:35:39',E'Picture_6.png',E'image/png',638323,E'2010-01-05 11:05:52',E'04.03.09',E'The Doctor receives a warning',E'4126-04-06 10:20:00',E'%Y');
INSERT INTO "events" VALUES (54,E'nrzf',E'\"We\'ve found real people!\"',E'The 10th Doctor and Rose Tyler find themselves in midst of chaos on board a Torchwood mission spaceship.',E'2010-01-05 12:01:01',E'2010-01-22 15:35:06',E'Picture_13.png',E'image/png',602688,E'2010-01-05 12:09:15',E'02.10.01',E'The Doctor and Rose are on a spaceship',E'2010-04-06 09:01:00',E'%b %d, %Y');
INSERT INTO "events" VALUES (55,E'8gf9',E'This is home',E'Ida introduces Doc and Rose to the ship\'s crew and explains what their impossible situation. 4:03 - 5:09',E'2010-01-05 12:06:12',E'2010-01-22 15:35:39',E'Picture_20.png',E'image/png',659464,E'2010-01-05 12:06:11',E'02.10.02',E'Ida makes introductions',E'2010-04-06 09:02:00',E'%b %d, %Y');
INSERT INTO "events" VALUES (56,E'zdxm',E'Sally Discovers Wester Drumlins',E'Looking for interesting photo opportunities, [Sally Sparrow](/characters/jfw6) breaks into the abandoned [Wester Drumlins House](/places/96p2).',E'2010-01-07 09:51:49',E'2010-01-25 11:58:14',E'sallydsicovers2.jpg',E'image/jpeg',105838,E'2010-01-13 10:48:59',E'',E'Sally breaks into the old, empty house',E'2007-06-01 22:00:00',E'%Y');
INSERT INTO "events" VALUES (57,E'gx3n',E'A Message from the Doctor',E'As [Sally Sparrow](/characters/jfw6) explores the [old house at Wester Drumlins](/places/96p2), she spots some writing beneath the peeling wallpaper. As she rips off the paper, she discovers that the writing is actually a [message](/things/qvcz) to her from the [Doctor](/characters/m2qv), written over thirty-five years ago.',E'2010-01-07 09:54:33',E'2010-01-25 12:09:09',E'message01.jpg',E'image/jpeg',83995,E'2010-01-13 11:01:21',E'',E'Sally Sparrow finds a message from 1969',E'2007-06-01 22:02:00',E'%Y');
INSERT INTO "events" VALUES (58,E'jpmq',E'Sally Finds the Weeping Angel',E'While exploring the [old house at Wester Drumlins](/places/96p2), a rock is thrown at [Sally Sparrow](/characters/jfw6). When she investigates, all she finds is what appears to be a statue of a [weeping angel](/groups/xpmq).',E'2010-01-07 09:55:24',E'2010-01-25 12:17:42',E'discover_main.jpg',E'image/jpeg',66461,E'2010-01-13 11:09:36',E'',E'A statue of an angel stands outside',E'2007-06-01 22:06:00',E'%Y');
INSERT INTO "events" VALUES (59,E'f325',E'When Sally Met Larry',E'Following her disturing experiences at the old [Wester Drumlins house](/places/96p2), [Sally Sparrow](/characters/jfw6) pays a late night visit on her friend, [Kathy Nightingale](/characters/fb9x). Letting herself into [Kathy\'s house](/places/qzjw), Sally has an unexpected introduction to Kathy\'s brother, [Larry](/characters/w963)...',E'2010-01-07 09:56:50',E'2010-01-25 12:23:32',E'meetlarry00.jpg',E'image/jpeg',56306,E'2010-01-13 11:20:35',E'',E'Sally gets an eyful of Larry',E'2007-06-02 01:00:00',E'%Y');
INSERT INTO "events" VALUES (60,E'bmn8',E'Sally and Kathy Go to Wester Drumlins',E'When [Sally](/characters/jfw6) tells [Kathy](/characters/fb9x) about her experiences at the [Wester Drumlins House](/places/96p2), Kathy agrees to accompany Sally back to the house in daylight. ',E'2010-01-07 09:57:40',E'2010-01-25 12:28:41',E'return00.jpg',E'image/jpeg',93648,E'2010-01-13 11:33:18',E'',E'Sally is glad of Kathy\'s company',E'2007-06-02 10:00:00',E'%Y');
INSERT INTO "events" VALUES (61,E'w2qv',E'An Unexpected Delivery',E'[Sally Sparrow](/characters/jfw6) is exploring the abandoned [house](/places/96p2) at Wester Drumlins with her friend [Kathy](/characters/fb9x) when there is an unexpected knock at the door. The visitor is [Malcolm Wainwright](/characters/d6p2) who somehow knew that Sally would be at the house. Malcolm has a letter to deliver to Sally from his grandmother.',E'2010-01-07 09:58:35',E'2010-01-25 12:30:42',E'delivery.jpg',E'image/jpeg',62107,E'2010-01-12 15:51:03',E'',E'A letter from an old friend',E'2007-06-02 10:15:00',E'%Y');
INSERT INTO "events" VALUES (62,E'9n54',E'The DVD List',E'[Sally Sparrow](/characters/jfw6)\'s friend [Kathy](/characters/fb9x) has been thrown back in time to 1920 and Sally visits Kath\'s brother [Larry](/characters/w963) at the [DVD store](/places/vfw6) where he works. There Larry reveals his fascination for a bizarre [DVD extra](/things/hdxm) that is hidden on [seventeen DVD](/things/54rg)s.',E'2010-01-07 09:59:33',E'2010-01-25 12:39:31',E'list02.jpg',E'image/jpeg',72604,E'2010-01-13 11:53:24',E'',E'Larry tells Sally about the Easter egg',E'2007-06-02 11:00:00',E'%Y');
INSERT INTO "events" VALUES (63,E'dq8c',E'Sally Meets Billy',E'Following her friend [Kathy](/characters/fb9x)\'s apparent disappearance into the past, [Sally Sparrow](/characters/jfw6) decides to go to the police. At the [police station](/places/4b9x), Sally meets [DI Billy Shipton](/characters/9dxm) who tells her that Kathy is not the only person to go missing at the [Wester Drumlins estate](/places/96p2).',E'2010-01-07 10:00:43',E'2010-01-25 12:42:39',E'meetsbilly00.jpg',E'image/jpeg',84134,E'2010-01-13 12:39:31',E'',E'Billy Shipton likes the look of Sally',E'2007-06-02 11:15:00',E'%Y');
INSERT INTO "events" VALUES (64,E'65vr',E'Billy Meets the Doctor',E'[Billy Shipton](/characters/9dxm) becomes a victim of the [Weeping Angels](/groups/xpmq) and is surprised to find himself transported back in time to a [London backstreet](/places/cwdp) in 1969. Fortunately the [Doctor](/characters/m2qv) and [Martha Jones](/characters/bwdp) are on hand to help him through his ordeal.',E'2010-01-07 10:01:45',E'2010-01-25 12:47:09',E'billyanddoctor.jpg',E'image/jpeg',66278,E'2010-01-12 16:07:30',E'',E'The Doctor finds Billy in 1969',E'1969-06-02 11:30:00',E'%Y');
INSERT INTO "events" VALUES (65,E'x84h',E'Billy in the Hospital',E'Only minutes after meeting [Billy Shipton](/characters/9dxm), [Sally Sparrow](/characters/jfw6) receives a phone call summoning her to the [hospital](/places/r963). There she meets Billy again, but for him over thirty-five years have passed. Before he dies, Billy passes on a message to Sally from the [Doctor](/characters/m2qv)...',E'2010-01-07 10:07:21',E'2010-01-25 12:49:37',E'billyinhospital02.jpg',E'image/jpeg',70597,E'2010-01-13 12:55:27',E'',E'Dieing Billy gives a message to Sally',E'2007-06-02 15:00:00',E'%Y');
INSERT INTO "events" VALUES (66,E'pvcz',E'The Doctor on DVD',E'[Sally Sparrow](/characters/jfw6) has worked out that the [seventeen DVD](/things/54rg)s on which the [Doctor](/characters/m2qv)\'s [hidden message](/things/hdxm) appear are the seventeen DVDs that she owns. The message is for her. She asks [Larry Nightingale](/characters/w963) to meet her at the [Wester Drumlins House](/places/96p2) with a portable DVD player...',E'2010-01-07 10:08:10',E'2010-01-25 13:00:32',E'dvdmessage00.jpg',E'image/jpeg',66817,E'2010-01-13 13:06:28',E'',E'Sally talks to a man in the past',E'2007-06-02 18:00:00',E'%Y');
INSERT INTO "events" VALUES (67,E'34rg',E'Discovering the TARDIS',E'[Sally Sparrow](/characters/jfw6) and [Larry Nightingale](/characters/w963) are trapped in the [Wester Drumlins House](/places/96p2) by the [Weeping Angels](/groups/xpmq). There only route of escape is down to the [cellar](/places/z6p2). There they discover the [TARDIS](/things/n84h), but the Angels are closing in...',E'2010-01-07 10:08:50',E'2010-01-25 13:12:02',E'discovertardis01.jpg',E'image/jpeg',64514,E'2010-01-13 13:18:16',E'',E'Sally and Larry find the Doctor\'s ship',E'2007-06-02 19:00:00',E'%Y');
INSERT INTO "events" VALUES (68,E'mchj',E'Frozen Angels',E'[Sally Sparrow](/characters/jfw6) and [Larry Nightingale](/characters/w963) have sought refuge in the [TARDIS](/things/n84h) from the attacking [Weeping Angels](/groups/xpmq). The TARDIS autopilot is activated and Sally and Larry are horrified when they realise that the ship is disappearing around them, apparently placing them at the mercy of the Angels that wait outside.',E'2010-01-07 10:09:26',E'2010-01-25 13:14:18',E'frozen01.jpg',E'image/jpeg',73920,E'2010-01-13 13:27:15',E'',E'The Doctor\'s trap is sprung',E'2007-06-02 19:06:00',E'%Y');
INSERT INTO "events" VALUES (69,E'2rzf',E'Sally Meets the Doctor',E'One year after her encounter with the [Weeping Angels](/groups/xpmq), [Sally Sparrow](/characters/jfw6) finally meets the [Doctor](/characters/m2qv) and [Martha](/characters/bwdp) in the flesh. She is able to give them the [list of DVDs](/things/54rg) that she owns and other information to allow the Doctor to contact her from the past when he becomes trapped there by the Angels. ',E'2010-01-07 10:09:46',E'2010-01-25 13:16:24',E'meetthedoctor00.jpg',E'image/jpeg',75685,E'2010-01-13 13:38:10',E'',E'Sally solves the puzzle',E'2008-06-01 10:09:00',E'%Y');
INSERT INTO "events" VALUES (70,E'gpmq',E'Step Back in Time',E'Touched by the [Weeping Angels](/groups/xpmq), [Kathy Nightingale](/characters/fb9x) is thrown back in time to a [Field in Hull](/places/8jbd) in 1920. There she meets her future husband, [Ben Wainwright](/characters/6x3n).',E'2010-01-12 15:57:39',E'2010-01-25 12:32:38',E'backintime.jpg',E'image/jpeg',66540,E'2010-01-12 15:57:39',E'',E'Kathy finds herself in 1920',E'1920-12-05 12:00:00',E'%b %d, %Y');

/*!40000 ALTER TABLE events ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE INDEX "events_url_key_idx" ON "events" USING btree ("url_key");

--
-- Table structure for table involvement_types
--

DROP TABLE "involvement_types" CASCADE\g
DROP SEQUENCE "involvement_types_id_seq" CASCADE ;

CREATE SEQUENCE "involvement_types_id_seq"  START WITH 3 ;

CREATE TABLE  "involvement_types" (
   "id" integer DEFAULT nextval('"involvement_types_id_seq"') NOT NULL,
   "created_at"   timestamp without time zone default NULL, 
   "updated_at"   timestamp without time zone default NULL, 
   primary key ("id")
)    ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE involvement_types DISABLE KEYS */;

--
-- Dumping data for table involvement_types
--

INSERT INTO "involvement_types" VALUES (1,E'featured-in',E'2009-11-26 14:02:28',E'2009-11-26 14:02:28');
INSERT INTO "involvement_types" VALUES (2,E'Attacks',E'2010-01-05 10:38:38',E'2010-01-05 10:38:38');

/*!40000 ALTER TABLE involvement_types ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE INDEX "involvement_types_255_idx" ON "involvement_types" USING btree ("255");

--
-- Table structure for table locations
--

DROP TABLE "locations" CASCADE\g
DROP SEQUENCE "locations_id_seq" CASCADE ;

CREATE SEQUENCE "locations_id_seq"  START WITH 50 ;

CREATE TABLE  "locations" (
   "id" integer DEFAULT nextval('"locations_id_seq"') NOT NULL,
   "url_key"   varchar(255) NOT NULL, 
   "title"   varchar(255) default NULL, 
   "long_synopsis"   text, 
   "created_at"   timestamp without time zone default NULL, 
   "updated_at"   timestamp without time zone default NULL, 
   "parent_id"   int default NULL, 
   "imgl_file_name"   varchar(255) default NULL, 
   "imgl_content_type"   varchar(255) default NULL, 
   "imgl_file_size"   int default NULL, 
   "imgl_updated_at"   timestamp without time zone default NULL, 
   "short_synopsis"   varchar(40) default NULL, 
   primary key ("id")
)    ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE locations DISABLE KEYS */;

--
-- Dumping data for table locations
--

INSERT INTO "locations" VALUES (1,E'wdxm',E'London',E'The capital city of England. London has been the focus of several alien incursions during its long history.',E'2009-11-17 17:50:38',E'2010-01-20 12:55:36',NULL,E'London.jpg',E'image/jpeg',82308,E'2010-01-07 16:12:58',E'The capital city of England.');
INSERT INTO "locations" VALUES (2,E'96p2',E'Wester Drumlins House',E'An abandoned and dilapidated old house in West London. Wester Drumlins House is the site of a number of unexplained disappearances from 2005 to 2007. Many cars have been discovered here, some with their engines still running, but their owners are nowhere to be found.\r\n\r\nAn ongoing investigation into the disappearances is being conducted by the Metropolitan Police, led by [DI Shipton](/characters/9dxm).',E'2009-11-17 17:50:50',E'2010-01-25 13:34:42',1,E'Wester_Drumlins.jpg',E'image/jpeg',99768,E'2010-01-08 10:22:31',E'Home of the angels');
INSERT INTO "locations" VALUES (3,E'dx3n',E'Warehouse 15',E'A secure facility that is part of Ood Operations on the Ood Sphere. \r\n\r\nWhen Klineman Halpen\'s ancestors discovered the Ood Brain beneath a glacier, they moved it to Warehouse 15 where it has remained ever since. ',E'2009-11-17 17:51:35',E'2010-01-15 09:55:37',4,E'warehouse15int.jpg',E'image/jpeg',100237,E'2010-01-05 13:32:14',E'Home of the Ood Brain');
INSERT INTO "locations" VALUES (4,E'6pmq',E'Ood Operations',E'A large industrial complex located on the Ood\'s home planet, the Ood-Sphere. The Ood are processed and prepared for sale here and exported throughout the human empire.',E'2009-11-17 17:51:58',E'2010-01-15 09:56:26',7,E'Picture_2.png',E'image/png',270985,E'2010-01-04 15:06:32',E'Headquarters for Ood distribution');
INSERT INTO "locations" VALUES (5,E'x325',E'TARDIS',E'Officially referred to as a TT Capsule, the TARDIS ships are the product of advanced [Time Lord](/groups/d325) technology, allowing the occupants to travel anywhere in time and space. The name TARDIS was invented by the [Doctor](/characters/m2qv)\'s granddaughter, Susan who created the acronym from the initials Time and Relative Dimension in Space. \r\n\r\nThe Doctor\'s TARDIS is a now obsolete Type 40 model. The interior of the ship is dimensionally transcendental, which means that it is bigger on the inside than the outside. A fully operational TARDIS has a chameleon circuit that allows the exterior of the ship to change form and to blend in with its surroundings. However, on a visit to [London](/places/wdxm), the chameleon circuit of the Doctor\'s TARDIS malfunctioned and the exterior has remained stuck in the shape of an old fashioned police telephone box ever since.\r\n\r\nThe design and layout of the interior of the TARDIS has frequently changed over the many years that the Doctor has been travelling in it. In one form or another though, it has always had a main control room, known as the Console Room, from which the ship can be operated. However, the Doctor\'s ability to accurately direct the flight of his ship has often been rather hit-and-miss. Amongst other rooms and facilities, the TARDIS also has a large wardrobe, a swimming pool, a laboratory, a zero room, bedrooms, cloisters and a food machine.',E'2009-11-17 17:52:12',E'2010-01-25 13:47:40',NULL,E'TARDIS_int.jpg',E'image/jpeg',100166,E'2010-01-08 11:05:15',E'The Doctor\'s time/space vehicle');
INSERT INTO "locations" VALUES (7,E'32qv',E'Ood-Sphere',E'The [Ood](/groups/gfw6)\'s home planet is a cold, snow covered wilderness with spectacular mountains, high cliffs and glaciers. [Ood Operations](/places/6pmq) was established on the Ood-Sphere when mankind subjugated the Ood and exported them as slaves.\r\n\r\nThe Ood-Sphere is a neighbouring world of [Sense-Sphere](/places/4gf9).',E'2009-11-17 17:53:53',E'2010-01-29 10:01:11',NULL,E'Ood_sphere.png',E'image/png',582305,E'2010-01-04 15:06:54',E'Homeworld of the Ood');
INSERT INTO "locations" VALUES (23,E'6mn8',E'Skaro',E'The home planet of two humanoid races, the Kaleds and the blonde Thals. A thousand year war raged between the two races leaving the planet ravaged by radiation and chemical warfare. Although both the Thals and the Kaleds survived, the Kaleds only did so as horribly mutated creatures that had to exist inside armed travel machines and became known as [Daleks](/groups/284h). \r\n\r\nIn the aftermath of the war, exoctic plant and animal life flourished in many parts of Skaro whilst other areas remained as desolate wilderness. \r\n\r\nSkaro is completely destroyed when the [Time Lord](/groups/d325) stellar manipulator known as [The Hand of Omega](/things/wpmq) causes its sun to go supernova.',E'2009-12-21 11:50:24',E'2010-01-26 11:49:41',NULL,E'skaro.jpg',E'image/jpeg',76263,E'2010-01-05 19:31:34',E'The Dalek homeworld');
INSERT INTO "locations" VALUES (24,E'x2qv',E'Skaro Wastelands',E'After a thousdand years of war between the Kaleds and the Thals, many areas of [Skaro](/places/6mn8) became uninhabitable. These wastelands were contaminated by radiation and chemical warfare and were home only to the Mutos - Thals and Kaleds who had become mutated by the radiation and exiled by their own people.',E'2009-12-21 11:50:53',E'2010-01-25 15:27:15',23,E'wastelands.jpg',E'image/jpeg',66722,E'2010-01-05 12:02:28',E'Battle scarred wilderness of Skaro');
INSERT INTO "locations" VALUES (25,E'pn54',E'Kaled Bunker',E'Located underground some distance from the Kaled city on [Skaro](/places/6mn8). The Bunker housed [Davros](/characters/b963)\'s scientific think-tank where he lead a team of scientists on a variety of research and development projects. In particular, the Bunker was the birthplace of the first [Daleks](/groups/284h).',E'2009-12-21 11:52:08',E'2010-01-25 15:29:51',24,E'kaledbunker.jpg',E'image/jpeg',77462,E'2010-01-05 12:02:41',E'Davros\'s base of operations on Skaro');
INSERT INTO "locations" VALUES (26,E'hfw6',E'76 Totters Lane',E'A large junkyard in the [Shoreditch](/places/zb9x) area of [London](/places/wdxm). The proprietor of the yard is IM Foreman.\r\n\r\nIn 1963, the [Doctor](/characters/3mn8)\'s TARDIS rests in the junkyard for several months whilst the [First Doctor](/characters/4zjw)\'s granddaughter, Susan, attends [Coal Hill School](/places/g963). Susan adopts the name \'Foreman\' as her surname.\r\n\r\nShortly after the First Doctor\'s visit, the [Seventh Doctor](/characters/cgf9) returns to the junkyard which is the site of a battle between the British army and a [Renegade Dalek](/groups/684h).\r\n\r\nIn 1986, the TARDIS once again lands in the junkyard when the Sixth Doctor is attempting to track down a distress signal which is broadcasting from a nearby location.',E'2009-12-21 12:36:55',E'2010-01-26 11:29:04',1,E'junkyard.jpg',E'image/jpeg',55462,E'2010-01-05 11:22:35',E'Junkyard belonging to I M Forman');
INSERT INTO "locations" VALUES (27,E'zb9x',E'Shoreditch',E'In 1963, the streets of Shoreditch near [Coal Hill School](/places/g963) and I.M. Foreman\'s [junkyard](/places/hfw6) become the battleground for a violent conflict between the [Imperial](/groups/d5vr) and [Renegade Dalek](/groups/684h) factions.',E'2009-12-21 12:38:43',E'2010-01-26 11:35:13',1,E'streets.jpg',E'image/jpeg',84703,E'2010-01-05 10:49:41',E'Streets in East London');
INSERT INTO "locations" VALUES (28,E'g963',E'Coal Hill School',E'A secondary school in the [Shoreditch](/places/zb9x) area of [London](/places/wdxm).\r\n\r\nIn 1963, Susan Foreman attends the school as a pupil for six months. Two of her teachers there are Barbara Wright and Ian Chesterton. \r\n\r\nIn November 1963 the School becomes the focus for [Dalek](/groups/284h) activity who use it as the staging post for their hunt for the [Hand of Omega](/things/wpmq) device. ',E'2009-12-21 12:39:05',E'2010-01-25 16:21:18',1,E'coalhilschool.jpg',E'image/jpeg',90650,E'2010-01-05 12:13:55',E'School in Shoreditch, London');
INSERT INTO "locations" VALUES (29,E'jdxm',E'School Basement',E'The cellar beneath [Coal Hill School](/places/g963). In 1963, the basement is the site of a hidden [Imperial Dalek](/groups/d5vr) transmat station. ',E'2009-12-21 12:39:19',E'2010-01-26 11:33:15',28,E'basement.jpg',E'image/jpeg',71085,E'2010-01-05 11:08:22',E'Site of a hidden Dalek transmat station');
INSERT INTO "locations" VALUES (30,E'f6p2',E'School Playground',E'The play area within the walled grounds of Coal Hill School. The playground is the landing site of an Imperial Dalek shuttle craft in 1963.',E'2009-12-21 12:39:32',E'2010-01-18 15:25:23',28,E'schoolyard.jpg',E'image/jpeg',87607,E'2010-01-05 10:35:16',E'Landing site for a Dalek shuttle');
INSERT INTO "locations" VALUES (32,E'4gf9',E'Sense-Sphere',E'A world with two suns and therefore without a natural night-time. Sense-Sphere is inhabited by the Sesorites who are telepathic. \r\n\r\nSenses-Sphere is a neighbouring world of the [Ood-Sphere](/places/32qv). It is rich in molybdenum and in the 28th Century, humans from Earth attempted to mine the mineral against the wishes of the Sensorites.',E'2009-12-21 14:03:24',E'2010-01-29 09:59:18',NULL,E'sensesphere.jpg',E'image/jpeg',64638,E'2010-01-05 12:18:57',E'Homeworld of the telepathic Sensorites');
INSERT INTO "locations" VALUES (33,E'fx3n',E'The Earth',E'Third planet in the Solar System and the home of the human race. The Earth has attracted interest from many alien races and individuals, several of whom attempted to invade and conquer the world.\r\n\r\nThe [Doctor](/characters/3mn8) has a particular fondness for the Earth and has been instrumental in defending it from alien aggressors throughout its history.',E'2009-12-21 16:00:43',E'2010-01-26 15:00:19',34,E'earth.jpg',E'image/jpeg',56045,E'2010-01-05 12:06:16',E'Home of the human race');
INSERT INTO "locations" VALUES (35,E'w325',E'The Medusa Cascade',E'A region of space that was once the site of a time/space rift. The rift was eventually sealed by the [Doctor](/characters/3mn8). \r\n\r\nThe Doctor first visited the Cascade when he was just 90 years old.\r\n\r\n[Davros](/characters/b963)\'s new race of [Daleks](/groups/284h) moved twenty-seven planets here, including the Earth. ',E'2009-12-21 16:01:44',E'2010-01-26 12:12:35',NULL,E'medusacascade.jpg',E'image/jpeg',61763,E'2010-01-07 15:56:04',E'The site of a rift in space');
INSERT INTO "locations" VALUES (36,E'6n54',E'Bad Wolf Bay',E'A beech, more correctly known as Dårlig Ulv Stranden, located fifty miles from Bergen in Norway on an alternative version of the Earth. When Rose Tyler was transported to the alternative world, Bad Wolf Bay was the location where she was able to have final contact with the Doctor.\r\n\r\nLater, following the Daleks attempts to detonate the Reality Bomb, the Doctor returned Rose to Bad Wolf Bay along with her mother, Jackie and a half human, half Time Lord duplicate of himself.',E'2009-12-21 16:03:55',E'2010-01-20 13:07:37',NULL,E'badwolfbay.jpg',E'image/jpeg',58711,E'2010-01-13 16:01:23',E'Dårlig Ulv Stranden');
INSERT INTO "locations" VALUES (39,E'rwdp',E'Dalek Mothership',E'A large [Dalek](/groups/284h) spacecraft that is the base of operations for [Davros](/characters/b963) and his [Imperial Daleks](/groups/d5vr). \r\n\r\nEntering [Earth](/places/fx3n) orbit in 1963, Davros dispatches a Dalek task force from the Mothership to retrieve the [Hand of Omega](/things/wpmq) device from [London](/places/wdxm).',E'2010-01-06 12:08:34',E'2010-01-26 11:39:26',NULL,E'dalekmothership.jpg',E'image/jpeg',79965,E'2010-01-06 12:08:34',E'Imperial Dalek Starship');
INSERT INTO "locations" VALUES (40,E'h963',E'The Crucible',E'A huge, planet sized, spherical vessel built by the [Daleks](/groups/284h). It has several docking ports at regular intervals around its surface as well as six docking arms that extend out from a ring at its equator.\r\n\r\nThe Crucible housed the apocalyptic Reality Bomb which was powered by twenty-seven stolen planets that had been moved to the [Medusa Cascade](/places/w325). It was destroyed along with the entire Dalek race by a half human, half Time Lord [duplicate](/characters/d2qv) of the [Tenth Doctor](/characters/m2qv).',E'2010-01-06 12:11:14',E'2010-01-26 15:03:05',NULL,E'crucible.jpg',E'image/jpeg',52647,E'2010-01-19 16:31:44',E'A Dalek worldship');
INSERT INTO "locations" VALUES (41,E'nhgb',E'The Shadow Proclamation',E'The base of the intergalactic law enforcement agency is situated on a group of three asteroids linked together by bridge like structures.',E'2010-01-07 15:01:14',E'2010-01-20 12:46:16',NULL,E'shadowproclamation_location.jpg',E'image/jpeg',54293,E'2010-01-07 15:01:14',E'Base of operations for law enforcement');
INSERT INTO "locations" VALUES (42,E'qzjw',E'Kathy\'s House',E'The house in West [London](/places/wdxm) where [Kathy Nightingale](/characters/fb9x) lives with her brother, [Larry](/characters/w963). ',E'2010-01-08 11:26:49',E'2010-01-25 13:35:56',1,E'flat.jpg',E'image/jpeg',55422,E'2010-01-08 11:26:48',E'The Nightingale residence');
INSERT INTO "locations" VALUES (43,E'8jbd',E'Field in Hull',E'A farmer\'s field where [Kathy Nightingale](/characters/fb9x) appeares in 1920 after being thrown back in time by the [Weeping Angels](/groups/xpmq). There she meets [Ben Wainwright](/characters/6x3n) who she later marries.',E'2010-01-08 11:36:07',E'2010-01-25 13:31:44',33,E'field.jpg',E'image/jpeg',73980,E'2010-01-08 11:36:06',E'Kathy\'s arrival in 1920');
INSERT INTO "locations" VALUES (44,E'vfw6',E'Larry\'s DVD Store',E'The shop in [London](/places/wdxm) on a road named Church Street where [Larry Nightingale](/characters/w963) works. Originally called Bantos DVD Store, the shop is eventually taken over by Larry and [Sally Sparrow](/characters/jfw6). They rename the store Sparrow and Nightingale, expanding to sell books as well as DVDs.',E'2010-01-08 11:42:34',E'2010-01-25 13:38:28',1,E'shop.jpg',E'image/jpeg',97231,E'2010-01-08 11:42:34',E'New, second hand and rare DVDs');
INSERT INTO "locations" VALUES (45,E'4b9x',E'Police Station',E'The police station in West [London](/places/wdxm) responsible for investigating the many disappeareances from the [Wester Drumlins estate](/places/96p2). [DI Shipton](/characters/9dxm) is based here and leads the investigation until he too disappears.',E'2010-01-08 11:49:59',E'2010-01-25 13:40:02',1,E'policestation.jpg',E'image/jpeg',108886,E'2010-01-08 11:53:40',E'DI Shipton\'s base of operations');
INSERT INTO "locations" VALUES (46,E'cwdp',E'Back Street',E'A quiet back alley in [London](/places/wdxm). [Billy Shipton](/characters/9dxm) materialises here in 1969 when he is thrown back in time by the [Weeping Angels](/groups/xpmq). There he meets the [Doctor](/characters/m2qv) and [Martha](/characters/bwdp) who have also been displaced in time by the Angels.',E'2010-01-08 11:58:36',E'2010-01-25 13:33:54',1,E'backstreet.jpg',E'image/jpeg',73807,E'2010-01-08 11:58:36',E'Billy\'s Landing');
INSERT INTO "locations" VALUES (47,E'r963',E'Hospital',E'A hospital in West [London](/places/wdxm). The elderly [Billy Shipton](/characters/9dxm) is a patient here where he passes away. [Sally Sparrow](/characters/jfw6) is with him at his bedside having only just met the younger Billy earlier the same day.',E'2010-01-08 12:03:52',E'2010-01-25 13:42:26',1,E'hospital.jpg',E'image/jpeg',90429,E'2010-01-08 12:03:52',E'Billy\'s last rest');
INSERT INTO "locations" VALUES (48,E'z6p2',E'Wester Drumlins Cellar',E'The vaulted basement of the [house](/places/96p2) at Wester Drumlins. The [Weeping Angels](/groups/xpmq) move the [TARDIS](/things/n84h) here, hoping to gain entrance to it, but [Sally Sparrow](/characters/jfw6) has the [key](/things/5gf9). When the TARDIS dematerialises, the four Angels are permanently turned to stone.',E'2010-01-08 12:09:38',E'2010-01-25 13:44:47',2,E'cellar.jpg',E'image/jpeg',56825,E'2010-01-08 12:09:38',E'A dark and eerie space');
INSERT INTO "locations" VALUES (49,E'j325',E'Police Car Pound',E'An underground car park used to store all the abandoned vehicles found on or near the [Wester Drumlins estate](/places/96p2). ',E'2010-01-13 12:36:00',E'2010-01-25 13:40:51',45,E'carpark.jpg',E'image/jpeg',63119,E'2010-01-13 12:36:00',E'Vehicle graveyard of the lost');

/*!40000 ALTER TABLE locations ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE INDEX "locations_url_key_idx" ON "locations" USING btree ("url_key");
CREATE INDEX "locations_parent_id_idx" ON "locations" USING btree ("parent_id");

--
-- Table structure for table rating_types
--

DROP TABLE "rating_types" CASCADE\g
DROP SEQUENCE "rating_types_id_seq" CASCADE ;

CREATE SEQUENCE "rating_types_id_seq"  START WITH 5 ;

CREATE TABLE  "rating_types" (
   "id" integer DEFAULT nextval('"rating_types_id_seq"') NOT NULL,
   primary key ("id")
)    ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE rating_types DISABLE KEYS */;

--
-- Dumping data for table rating_types
--

INSERT INTO "rating_types" VALUES (1,E'scary');
INSERT INTO "rating_types" VALUES (2,E'exciting');
INSERT INTO "rating_types" VALUES (3,E'memorable');
INSERT INTO "rating_types" VALUES (4,E'important');

/*!40000 ALTER TABLE rating_types ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE INDEX "rating_types_255_idx" ON "rating_types" USING btree ("255");

--
-- Table structure for table ratings
--

DROP TABLE "ratings" CASCADE\g
DROP SEQUENCE "ratings_id_seq" CASCADE ;

CREATE SEQUENCE "ratings_id_seq"  START WITH 773 ;

CREATE TABLE  "ratings" (
   "id" integer DEFAULT nextval('"ratings_id_seq"') NOT NULL,
   "amount"   int default '0', 
   "rateable_id"   int default NULL, 
   "rateable_type"   varchar(255) default NULL, 
   "rating_type_id"   int default NULL, 
   "created_at"   timestamp without time zone default NULL, 
   "updated_at"   timestamp without time zone default NULL, 
   primary key ("id")
)    ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE ratings DISABLE KEYS */;

--
-- Dumping data for table ratings
--

INSERT INTO "ratings" VALUES (1,0,1,E'Character',1,E'2009-12-11 15:36:25',E'2009-12-11 15:36:25');
INSERT INTO "ratings" VALUES (2,0,1,E'Character',2,E'2009-12-11 15:36:25',E'2009-12-11 15:36:25');
INSERT INTO "ratings" VALUES (3,0,1,E'Character',3,E'2009-12-11 15:36:25',E'2009-12-11 15:36:25');
INSERT INTO "ratings" VALUES (4,0,1,E'Character',4,E'2009-12-11 15:36:25',E'2009-12-11 15:36:25');
INSERT INTO "ratings" VALUES (5,0,2,E'Character',1,E'2009-12-11 15:36:25',E'2009-12-11 15:36:25');
INSERT INTO "ratings" VALUES (6,0,2,E'Character',2,E'2009-12-11 15:36:25',E'2009-12-11 15:36:25');
INSERT INTO "ratings" VALUES (7,0,2,E'Character',3,E'2009-12-11 15:36:25',E'2009-12-11 15:36:25');
INSERT INTO "ratings" VALUES (8,0,2,E'Character',4,E'2009-12-11 15:36:25',E'2009-12-11 15:36:25');
INSERT INTO "ratings" VALUES (9,0,3,E'Character',1,E'2009-12-11 15:36:25',E'2009-12-11 15:36:25');
INSERT INTO "ratings" VALUES (10,0,3,E'Character',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (11,0,3,E'Character',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (12,0,3,E'Character',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (13,0,4,E'Character',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (14,0,4,E'Character',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (15,0,4,E'Character',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (16,0,4,E'Character',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (17,0,5,E'Character',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (18,0,5,E'Character',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (19,0,5,E'Character',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (20,0,5,E'Character',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (21,0,6,E'Character',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (22,0,6,E'Character',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (23,0,6,E'Character',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (24,0,6,E'Character',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (25,0,7,E'Character',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (26,0,7,E'Character',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (27,0,7,E'Character',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (28,0,7,E'Character',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (29,0,8,E'Character',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (30,0,8,E'Character',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (31,0,8,E'Character',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (32,0,8,E'Character',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (37,0,10,E'Character',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (38,0,10,E'Character',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (39,0,10,E'Character',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (40,0,10,E'Character',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (41,0,11,E'Character',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (42,0,11,E'Character',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (43,0,11,E'Character',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (44,0,11,E'Character',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (45,0,12,E'Character',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (46,0,12,E'Character',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (47,0,12,E'Character',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (48,0,12,E'Character',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (49,0,13,E'Character',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (50,0,13,E'Character',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (51,0,13,E'Character',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (52,0,13,E'Character',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (53,0,14,E'Character',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (54,0,14,E'Character',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (55,0,14,E'Character',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (56,0,14,E'Character',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (73,0,19,E'Character',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (74,0,19,E'Character',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (75,0,19,E'Character',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (76,0,19,E'Character',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (77,0,20,E'Character',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (78,0,20,E'Character',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (79,0,20,E'Character',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (80,0,20,E'Character',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (81,0,21,E'Character',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (82,0,21,E'Character',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (83,0,21,E'Character',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (84,0,21,E'Character',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (89,0,23,E'Character',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (90,0,23,E'Character',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (91,0,23,E'Character',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (92,0,23,E'Character',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (101,0,26,E'Character',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (102,0,26,E'Character',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (103,0,26,E'Character',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (104,0,26,E'Character',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (165,0,2,E'Artifact',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (166,0,2,E'Artifact',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (167,0,2,E'Artifact',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (168,0,2,E'Artifact',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (173,0,4,E'Artifact',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (174,0,4,E'Artifact',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (175,0,4,E'Artifact',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (176,0,4,E'Artifact',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (177,0,5,E'Artifact',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (178,0,5,E'Artifact',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (179,0,5,E'Artifact',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (180,0,5,E'Artifact',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (181,0,6,E'Artifact',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (182,0,6,E'Artifact',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (183,0,6,E'Artifact',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (184,0,6,E'Artifact',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (193,0,9,E'Artifact',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (194,0,9,E'Artifact',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (195,0,9,E'Artifact',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (196,0,9,E'Artifact',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (197,0,1,E'Location',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (198,0,1,E'Location',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (199,0,1,E'Location',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (200,0,1,E'Location',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (201,0,2,E'Location',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (202,0,2,E'Location',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (203,0,2,E'Location',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (204,0,2,E'Location',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (205,0,3,E'Location',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (206,0,3,E'Location',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (207,0,3,E'Location',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (208,0,3,E'Location',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (209,0,4,E'Location',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (210,0,4,E'Location',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (211,0,4,E'Location',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (212,0,4,E'Location',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (213,0,5,E'Location',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (214,0,5,E'Location',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (215,0,5,E'Location',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (216,0,5,E'Location',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (221,0,7,E'Location',1,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (222,0,7,E'Location',2,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (223,0,7,E'Location',3,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (224,0,7,E'Location',4,E'2009-12-11 15:36:26',E'2009-12-11 15:36:26');
INSERT INTO "ratings" VALUES (285,0,29,E'Character',1,E'2009-12-21 11:48:21',E'2009-12-21 11:48:21');
INSERT INTO "ratings" VALUES (286,0,29,E'Character',2,E'2009-12-21 11:48:21',E'2009-12-21 11:48:21');
INSERT INTO "ratings" VALUES (287,0,29,E'Character',4,E'2009-12-21 11:48:21',E'2009-12-21 11:48:21');
INSERT INTO "ratings" VALUES (288,0,29,E'Character',3,E'2009-12-21 11:48:21',E'2009-12-21 11:48:21');
INSERT INTO "ratings" VALUES (289,0,30,E'Character',1,E'2009-12-21 11:48:46',E'2009-12-21 11:48:46');
INSERT INTO "ratings" VALUES (290,0,30,E'Character',2,E'2009-12-21 11:48:46',E'2009-12-21 11:48:46');
INSERT INTO "ratings" VALUES (291,0,30,E'Character',4,E'2009-12-21 11:48:46',E'2009-12-21 11:48:46');
INSERT INTO "ratings" VALUES (292,0,30,E'Character',3,E'2009-12-21 11:48:46',E'2009-12-21 11:48:46');
INSERT INTO "ratings" VALUES (293,0,31,E'Character',1,E'2009-12-21 11:49:11',E'2009-12-21 11:49:11');
INSERT INTO "ratings" VALUES (294,0,31,E'Character',2,E'2009-12-21 11:49:11',E'2009-12-21 11:49:11');
INSERT INTO "ratings" VALUES (295,0,31,E'Character',4,E'2009-12-21 11:49:11',E'2009-12-21 11:49:11');
INSERT INTO "ratings" VALUES (296,0,31,E'Character',3,E'2009-12-21 11:49:11',E'2009-12-21 11:49:11');
INSERT INTO "ratings" VALUES (297,0,23,E'Location',1,E'2009-12-21 11:50:24',E'2009-12-21 11:50:24');
INSERT INTO "ratings" VALUES (298,0,23,E'Location',2,E'2009-12-21 11:50:24',E'2009-12-21 11:50:24');
INSERT INTO "ratings" VALUES (299,0,23,E'Location',4,E'2009-12-21 11:50:24',E'2009-12-21 11:50:24');
INSERT INTO "ratings" VALUES (300,0,23,E'Location',3,E'2009-12-21 11:50:24',E'2009-12-21 11:50:24');
INSERT INTO "ratings" VALUES (301,0,24,E'Location',1,E'2009-12-21 11:50:53',E'2009-12-21 11:50:53');
INSERT INTO "ratings" VALUES (302,0,24,E'Location',2,E'2009-12-21 11:50:53',E'2009-12-21 11:50:53');
INSERT INTO "ratings" VALUES (303,0,24,E'Location',4,E'2009-12-21 11:50:53',E'2009-12-21 11:50:53');
INSERT INTO "ratings" VALUES (304,0,24,E'Location',3,E'2009-12-21 11:50:53',E'2009-12-21 11:50:53');
INSERT INTO "ratings" VALUES (305,0,25,E'Location',1,E'2009-12-21 11:52:08',E'2009-12-21 11:52:08');
INSERT INTO "ratings" VALUES (306,0,25,E'Location',2,E'2009-12-21 11:52:08',E'2009-12-21 11:52:08');
INSERT INTO "ratings" VALUES (307,0,25,E'Location',4,E'2009-12-21 11:52:08',E'2009-12-21 11:52:08');
INSERT INTO "ratings" VALUES (308,0,25,E'Location',3,E'2009-12-21 11:52:08',E'2009-12-21 11:52:08');
INSERT INTO "ratings" VALUES (309,0,13,E'Event',1,E'2009-12-21 11:54:13',E'2009-12-21 11:54:13');
INSERT INTO "ratings" VALUES (310,0,13,E'Event',2,E'2009-12-21 11:54:13',E'2009-12-21 11:54:13');
INSERT INTO "ratings" VALUES (311,0,13,E'Event',4,E'2009-12-21 11:54:13',E'2009-12-21 11:54:13');
INSERT INTO "ratings" VALUES (312,0,13,E'Event',3,E'2009-12-21 11:54:13',E'2009-12-21 11:54:13');
INSERT INTO "ratings" VALUES (313,0,14,E'Event',1,E'2009-12-21 12:09:27',E'2009-12-21 12:09:27');
INSERT INTO "ratings" VALUES (314,0,14,E'Event',2,E'2009-12-21 12:09:27',E'2009-12-21 12:09:27');
INSERT INTO "ratings" VALUES (315,0,14,E'Event',4,E'2009-12-21 12:09:27',E'2009-12-21 12:09:27');
INSERT INTO "ratings" VALUES (316,0,14,E'Event',3,E'2009-12-21 12:09:27',E'2009-12-21 12:09:27');
INSERT INTO "ratings" VALUES (317,0,32,E'Character',1,E'2009-12-21 12:11:38',E'2009-12-21 12:11:38');
INSERT INTO "ratings" VALUES (318,0,32,E'Character',2,E'2009-12-21 12:11:38',E'2009-12-21 12:11:38');
INSERT INTO "ratings" VALUES (319,0,32,E'Character',4,E'2009-12-21 12:11:38',E'2009-12-21 12:11:38');
INSERT INTO "ratings" VALUES (320,0,32,E'Character',3,E'2009-12-21 12:11:38',E'2009-12-21 12:11:38');
INSERT INTO "ratings" VALUES (321,0,15,E'Event',1,E'2009-12-21 12:12:58',E'2009-12-21 12:12:58');
INSERT INTO "ratings" VALUES (322,0,15,E'Event',2,E'2009-12-21 12:12:58',E'2009-12-21 12:12:58');
INSERT INTO "ratings" VALUES (323,0,15,E'Event',4,E'2009-12-21 12:12:58',E'2009-12-21 12:12:58');
INSERT INTO "ratings" VALUES (324,0,15,E'Event',3,E'2009-12-21 12:12:58',E'2009-12-21 12:12:58');
INSERT INTO "ratings" VALUES (325,0,16,E'Event',1,E'2009-12-21 12:15:08',E'2009-12-21 12:15:08');
INSERT INTO "ratings" VALUES (326,0,16,E'Event',2,E'2009-12-21 12:15:08',E'2009-12-21 12:15:08');
INSERT INTO "ratings" VALUES (327,0,16,E'Event',4,E'2009-12-21 12:15:08',E'2009-12-21 12:15:08');
INSERT INTO "ratings" VALUES (328,0,16,E'Event',3,E'2009-12-21 12:15:08',E'2009-12-21 12:15:08');
INSERT INTO "ratings" VALUES (329,0,17,E'Event',1,E'2009-12-21 12:17:14',E'2009-12-21 12:17:14');
INSERT INTO "ratings" VALUES (330,0,17,E'Event',2,E'2009-12-21 12:17:14',E'2009-12-21 12:17:14');
INSERT INTO "ratings" VALUES (331,0,17,E'Event',4,E'2009-12-21 12:17:14',E'2009-12-21 12:17:14');
INSERT INTO "ratings" VALUES (332,0,17,E'Event',3,E'2009-12-21 12:17:14',E'2009-12-21 12:17:14');
INSERT INTO "ratings" VALUES (333,0,18,E'Event',1,E'2009-12-21 12:18:55',E'2009-12-21 12:18:55');
INSERT INTO "ratings" VALUES (334,0,18,E'Event',2,E'2009-12-21 12:18:55',E'2009-12-21 12:18:55');
INSERT INTO "ratings" VALUES (335,0,18,E'Event',4,E'2009-12-21 12:18:55',E'2009-12-21 12:18:55');
INSERT INTO "ratings" VALUES (336,0,18,E'Event',3,E'2009-12-21 12:18:55',E'2009-12-21 12:18:55');
INSERT INTO "ratings" VALUES (337,0,19,E'Event',1,E'2009-12-21 12:21:39',E'2009-12-21 12:21:39');
INSERT INTO "ratings" VALUES (338,0,19,E'Event',2,E'2009-12-21 12:21:39',E'2009-12-21 12:21:39');
INSERT INTO "ratings" VALUES (339,0,19,E'Event',4,E'2009-12-21 12:21:39',E'2009-12-21 12:21:39');
INSERT INTO "ratings" VALUES (340,0,19,E'Event',3,E'2009-12-21 12:21:39',E'2009-12-21 12:21:39');
INSERT INTO "ratings" VALUES (341,0,33,E'Character',1,E'2009-12-21 12:35:24',E'2009-12-21 12:35:24');
INSERT INTO "ratings" VALUES (342,0,33,E'Character',2,E'2009-12-21 12:35:24',E'2009-12-21 12:35:24');
INSERT INTO "ratings" VALUES (343,0,33,E'Character',4,E'2009-12-21 12:35:24',E'2009-12-21 12:35:24');
INSERT INTO "ratings" VALUES (344,0,33,E'Character',3,E'2009-12-21 12:35:24',E'2009-12-21 12:35:24');
INSERT INTO "ratings" VALUES (345,0,34,E'Character',1,E'2009-12-21 12:35:43',E'2009-12-21 12:35:43');
INSERT INTO "ratings" VALUES (346,0,34,E'Character',2,E'2009-12-21 12:35:43',E'2009-12-21 12:35:43');
INSERT INTO "ratings" VALUES (347,0,34,E'Character',4,E'2009-12-21 12:35:43',E'2009-12-21 12:35:43');
INSERT INTO "ratings" VALUES (348,0,34,E'Character',3,E'2009-12-21 12:35:43',E'2009-12-21 12:35:43');
INSERT INTO "ratings" VALUES (349,0,35,E'Character',1,E'2009-12-21 12:36:02',E'2009-12-21 12:36:02');
INSERT INTO "ratings" VALUES (350,0,35,E'Character',2,E'2009-12-21 12:36:02',E'2009-12-21 12:36:02');
INSERT INTO "ratings" VALUES (351,0,35,E'Character',4,E'2009-12-21 12:36:02',E'2009-12-21 12:36:02');
INSERT INTO "ratings" VALUES (352,0,35,E'Character',3,E'2009-12-21 12:36:02',E'2009-12-21 12:36:02');
INSERT INTO "ratings" VALUES (353,0,26,E'Location',1,E'2009-12-21 12:36:55',E'2009-12-21 12:36:55');
INSERT INTO "ratings" VALUES (354,0,26,E'Location',2,E'2009-12-21 12:36:55',E'2009-12-21 12:36:55');
INSERT INTO "ratings" VALUES (355,0,26,E'Location',4,E'2009-12-21 12:36:55',E'2009-12-21 12:36:55');
INSERT INTO "ratings" VALUES (356,0,26,E'Location',3,E'2009-12-21 12:36:55',E'2009-12-21 12:36:55');
INSERT INTO "ratings" VALUES (357,0,27,E'Location',1,E'2009-12-21 12:38:43',E'2009-12-21 12:38:43');
INSERT INTO "ratings" VALUES (358,0,27,E'Location',2,E'2009-12-21 12:38:43',E'2009-12-21 12:38:43');
INSERT INTO "ratings" VALUES (359,0,27,E'Location',4,E'2009-12-21 12:38:43',E'2009-12-21 12:38:43');
INSERT INTO "ratings" VALUES (360,0,27,E'Location',3,E'2009-12-21 12:38:43',E'2009-12-21 12:38:43');
INSERT INTO "ratings" VALUES (361,0,28,E'Location',1,E'2009-12-21 12:39:05',E'2009-12-21 12:39:05');
INSERT INTO "ratings" VALUES (362,0,28,E'Location',2,E'2009-12-21 12:39:05',E'2009-12-21 12:39:05');
INSERT INTO "ratings" VALUES (363,0,28,E'Location',4,E'2009-12-21 12:39:05',E'2009-12-21 12:39:05');
INSERT INTO "ratings" VALUES (364,0,28,E'Location',3,E'2009-12-21 12:39:05',E'2009-12-21 12:39:05');
INSERT INTO "ratings" VALUES (365,0,29,E'Location',1,E'2009-12-21 12:39:19',E'2009-12-21 12:39:19');
INSERT INTO "ratings" VALUES (366,0,29,E'Location',2,E'2009-12-21 12:39:19',E'2009-12-21 12:39:19');
INSERT INTO "ratings" VALUES (367,0,29,E'Location',4,E'2009-12-21 12:39:19',E'2009-12-21 12:39:19');
INSERT INTO "ratings" VALUES (368,0,29,E'Location',3,E'2009-12-21 12:39:19',E'2009-12-21 12:39:19');
INSERT INTO "ratings" VALUES (369,0,30,E'Location',1,E'2009-12-21 12:39:32',E'2009-12-21 12:39:32');
INSERT INTO "ratings" VALUES (370,0,30,E'Location',2,E'2009-12-21 12:39:32',E'2009-12-21 12:39:32');
INSERT INTO "ratings" VALUES (371,0,30,E'Location',4,E'2009-12-21 12:39:32',E'2009-12-21 12:39:32');
INSERT INTO "ratings" VALUES (372,0,30,E'Location',3,E'2009-12-21 12:39:32',E'2009-12-21 12:39:32');
INSERT INTO "ratings" VALUES (377,0,10,E'Artifact',1,E'2009-12-21 12:45:44',E'2009-12-21 12:45:44');
INSERT INTO "ratings" VALUES (378,0,10,E'Artifact',2,E'2009-12-21 12:45:44',E'2009-12-21 12:45:44');
INSERT INTO "ratings" VALUES (379,0,10,E'Artifact',4,E'2009-12-21 12:45:44',E'2009-12-21 12:45:44');
INSERT INTO "ratings" VALUES (380,0,10,E'Artifact',3,E'2009-12-21 12:45:44',E'2009-12-21 12:45:44');
INSERT INTO "ratings" VALUES (381,0,20,E'Event',1,E'2009-12-21 12:49:42',E'2009-12-21 12:49:42');
INSERT INTO "ratings" VALUES (382,0,20,E'Event',2,E'2009-12-21 12:49:42',E'2009-12-21 12:49:42');
INSERT INTO "ratings" VALUES (383,0,20,E'Event',4,E'2009-12-21 12:49:42',E'2009-12-21 12:49:42');
INSERT INTO "ratings" VALUES (384,0,20,E'Event',3,E'2009-12-21 12:49:42',E'2009-12-21 12:49:42');
INSERT INTO "ratings" VALUES (385,0,21,E'Event',1,E'2009-12-21 12:53:25',E'2009-12-21 12:53:25');
INSERT INTO "ratings" VALUES (386,0,21,E'Event',2,E'2009-12-21 12:53:25',E'2009-12-21 12:53:25');
INSERT INTO "ratings" VALUES (387,0,21,E'Event',4,E'2009-12-21 12:53:25',E'2009-12-21 12:53:25');
INSERT INTO "ratings" VALUES (388,0,21,E'Event',3,E'2009-12-21 12:53:25',E'2009-12-21 12:53:25');
INSERT INTO "ratings" VALUES (389,0,22,E'Event',1,E'2009-12-21 12:55:29',E'2009-12-21 12:55:29');
INSERT INTO "ratings" VALUES (390,0,22,E'Event',2,E'2009-12-21 12:55:29',E'2009-12-21 12:55:29');
INSERT INTO "ratings" VALUES (391,0,22,E'Event',4,E'2009-12-21 12:55:29',E'2009-12-21 12:55:29');
INSERT INTO "ratings" VALUES (392,0,22,E'Event',3,E'2009-12-21 12:55:29',E'2009-12-21 12:55:29');
INSERT INTO "ratings" VALUES (393,0,23,E'Event',1,E'2009-12-21 12:58:12',E'2009-12-21 12:58:12');
INSERT INTO "ratings" VALUES (394,0,23,E'Event',2,E'2009-12-21 12:58:12',E'2009-12-21 12:58:12');
INSERT INTO "ratings" VALUES (395,0,23,E'Event',4,E'2009-12-21 12:58:12',E'2009-12-21 12:58:12');
INSERT INTO "ratings" VALUES (396,0,23,E'Event',3,E'2009-12-21 12:58:12',E'2009-12-21 12:58:12');
INSERT INTO "ratings" VALUES (397,0,24,E'Event',1,E'2009-12-21 12:59:57',E'2009-12-21 12:59:57');
INSERT INTO "ratings" VALUES (398,0,24,E'Event',2,E'2009-12-21 12:59:57',E'2009-12-21 12:59:57');
INSERT INTO "ratings" VALUES (399,0,24,E'Event',4,E'2009-12-21 12:59:57',E'2009-12-21 12:59:57');
INSERT INTO "ratings" VALUES (400,0,24,E'Event',3,E'2009-12-21 12:59:57',E'2009-12-21 12:59:57');
INSERT INTO "ratings" VALUES (401,0,36,E'Character',1,E'2009-12-21 13:01:13',E'2009-12-21 13:01:13');
INSERT INTO "ratings" VALUES (402,0,36,E'Character',2,E'2009-12-21 13:01:13',E'2009-12-21 13:01:13');
INSERT INTO "ratings" VALUES (403,0,36,E'Character',4,E'2009-12-21 13:01:13',E'2009-12-21 13:01:13');
INSERT INTO "ratings" VALUES (404,0,36,E'Character',3,E'2009-12-21 13:01:13',E'2009-12-21 13:01:13');
INSERT INTO "ratings" VALUES (409,0,25,E'Event',1,E'2009-12-21 13:09:18',E'2009-12-21 13:09:18');
INSERT INTO "ratings" VALUES (410,0,25,E'Event',2,E'2009-12-21 13:09:18',E'2009-12-21 13:09:18');
INSERT INTO "ratings" VALUES (411,0,25,E'Event',4,E'2009-12-21 13:09:18',E'2009-12-21 13:09:18');
INSERT INTO "ratings" VALUES (412,0,25,E'Event',3,E'2009-12-21 13:09:18',E'2009-12-21 13:09:18');
INSERT INTO "ratings" VALUES (413,0,26,E'Event',1,E'2009-12-21 13:11:35',E'2009-12-21 13:11:35');
INSERT INTO "ratings" VALUES (414,0,26,E'Event',2,E'2009-12-21 13:11:35',E'2009-12-21 13:11:35');
INSERT INTO "ratings" VALUES (415,0,26,E'Event',4,E'2009-12-21 13:11:35',E'2009-12-21 13:11:35');
INSERT INTO "ratings" VALUES (416,0,26,E'Event',3,E'2009-12-21 13:11:35',E'2009-12-21 13:11:35');
INSERT INTO "ratings" VALUES (417,0,27,E'Event',1,E'2009-12-21 13:13:15',E'2009-12-21 13:13:15');
INSERT INTO "ratings" VALUES (418,0,27,E'Event',2,E'2009-12-21 13:13:15',E'2009-12-21 13:13:15');
INSERT INTO "ratings" VALUES (419,0,27,E'Event',4,E'2009-12-21 13:13:15',E'2009-12-21 13:13:15');
INSERT INTO "ratings" VALUES (420,0,27,E'Event',3,E'2009-12-21 13:13:15',E'2009-12-21 13:13:15');
INSERT INTO "ratings" VALUES (421,0,28,E'Event',1,E'2009-12-21 13:15:42',E'2009-12-21 13:15:42');
INSERT INTO "ratings" VALUES (422,0,28,E'Event',2,E'2009-12-21 13:15:42',E'2009-12-21 13:15:42');
INSERT INTO "ratings" VALUES (423,0,28,E'Event',4,E'2009-12-21 13:15:42',E'2009-12-21 13:15:42');
INSERT INTO "ratings" VALUES (424,0,28,E'Event',3,E'2009-12-21 13:15:42',E'2009-12-21 13:15:42');
INSERT INTO "ratings" VALUES (425,0,29,E'Event',1,E'2009-12-21 13:16:29',E'2009-12-21 13:16:29');
INSERT INTO "ratings" VALUES (426,0,29,E'Event',2,E'2009-12-21 13:16:29',E'2009-12-21 13:16:29');
INSERT INTO "ratings" VALUES (427,0,29,E'Event',4,E'2009-12-21 13:16:29',E'2009-12-21 13:16:29');
INSERT INTO "ratings" VALUES (428,0,29,E'Event',3,E'2009-12-21 13:16:29',E'2009-12-21 13:16:29');
INSERT INTO "ratings" VALUES (429,0,32,E'Location',1,E'2009-12-21 14:03:24',E'2009-12-21 14:03:24');
INSERT INTO "ratings" VALUES (430,0,32,E'Location',2,E'2009-12-21 14:03:24',E'2009-12-21 14:03:24');
INSERT INTO "ratings" VALUES (431,0,32,E'Location',4,E'2009-12-21 14:03:24',E'2009-12-21 14:03:24');
INSERT INTO "ratings" VALUES (432,0,32,E'Location',3,E'2009-12-21 14:03:24',E'2009-12-21 14:03:24');
INSERT INTO "ratings" VALUES (433,0,37,E'Character',1,E'2009-12-21 15:56:04',E'2009-12-21 15:56:04');
INSERT INTO "ratings" VALUES (434,0,37,E'Character',2,E'2009-12-21 15:56:04',E'2009-12-21 15:56:04');
INSERT INTO "ratings" VALUES (435,0,37,E'Character',4,E'2009-12-21 15:56:04',E'2009-12-21 15:56:04');
INSERT INTO "ratings" VALUES (436,0,37,E'Character',3,E'2009-12-21 15:56:04',E'2009-12-21 15:56:04');
INSERT INTO "ratings" VALUES (437,0,38,E'Character',1,E'2009-12-21 15:56:40',E'2009-12-21 15:56:40');
INSERT INTO "ratings" VALUES (438,0,38,E'Character',2,E'2009-12-21 15:56:40',E'2009-12-21 15:56:40');
INSERT INTO "ratings" VALUES (439,0,38,E'Character',4,E'2009-12-21 15:56:40',E'2009-12-21 15:56:40');
INSERT INTO "ratings" VALUES (440,0,38,E'Character',3,E'2009-12-21 15:56:40',E'2009-12-21 15:56:40');
INSERT INTO "ratings" VALUES (441,0,39,E'Character',1,E'2009-12-21 15:56:52',E'2009-12-21 15:56:52');
INSERT INTO "ratings" VALUES (442,0,39,E'Character',2,E'2009-12-21 15:56:52',E'2009-12-21 15:56:52');
INSERT INTO "ratings" VALUES (443,0,39,E'Character',4,E'2009-12-21 15:56:52',E'2009-12-21 15:56:52');
INSERT INTO "ratings" VALUES (444,0,39,E'Character',3,E'2009-12-21 15:56:52',E'2009-12-21 15:56:52');
INSERT INTO "ratings" VALUES (449,0,41,E'Character',1,E'2009-12-21 15:59:05',E'2009-12-21 15:59:05');
INSERT INTO "ratings" VALUES (450,0,41,E'Character',2,E'2009-12-21 15:59:05',E'2009-12-21 15:59:05');
INSERT INTO "ratings" VALUES (451,0,41,E'Character',4,E'2009-12-21 15:59:05',E'2009-12-21 15:59:05');
INSERT INTO "ratings" VALUES (452,0,41,E'Character',3,E'2009-12-21 15:59:05',E'2009-12-21 15:59:05');
INSERT INTO "ratings" VALUES (453,0,33,E'Location',1,E'2009-12-21 16:00:43',E'2009-12-21 16:00:43');
INSERT INTO "ratings" VALUES (454,0,33,E'Location',2,E'2009-12-21 16:00:43',E'2009-12-21 16:00:43');
INSERT INTO "ratings" VALUES (455,0,33,E'Location',4,E'2009-12-21 16:00:43',E'2009-12-21 16:00:43');
INSERT INTO "ratings" VALUES (456,0,33,E'Location',3,E'2009-12-21 16:00:43',E'2009-12-21 16:00:43');
INSERT INTO "ratings" VALUES (461,0,35,E'Location',1,E'2009-12-21 16:01:44',E'2009-12-21 16:01:44');
INSERT INTO "ratings" VALUES (462,0,35,E'Location',2,E'2009-12-21 16:01:44',E'2009-12-21 16:01:44');
INSERT INTO "ratings" VALUES (463,0,35,E'Location',4,E'2009-12-21 16:01:44',E'2009-12-21 16:01:44');
INSERT INTO "ratings" VALUES (464,0,35,E'Location',3,E'2009-12-21 16:01:44',E'2009-12-21 16:01:44');
INSERT INTO "ratings" VALUES (469,0,42,E'Character',1,E'2009-12-21 16:03:22',E'2009-12-21 16:03:22');
INSERT INTO "ratings" VALUES (470,0,42,E'Character',2,E'2009-12-21 16:03:22',E'2009-12-21 16:03:22');
INSERT INTO "ratings" VALUES (471,0,42,E'Character',4,E'2009-12-21 16:03:22',E'2009-12-21 16:03:22');
INSERT INTO "ratings" VALUES (472,0,42,E'Character',3,E'2009-12-21 16:03:22',E'2009-12-21 16:03:22');
INSERT INTO "ratings" VALUES (473,0,36,E'Location',1,E'2009-12-21 16:03:55',E'2009-12-21 16:03:55');
INSERT INTO "ratings" VALUES (474,0,36,E'Location',2,E'2009-12-21 16:03:55',E'2009-12-21 16:03:55');
INSERT INTO "ratings" VALUES (475,0,36,E'Location',4,E'2009-12-21 16:03:55',E'2009-12-21 16:03:55');
INSERT INTO "ratings" VALUES (476,0,36,E'Location',3,E'2009-12-21 16:03:55',E'2009-12-21 16:03:55');
INSERT INTO "ratings" VALUES (477,0,30,E'Event',1,E'2009-12-21 16:05:09',E'2009-12-21 16:05:09');
INSERT INTO "ratings" VALUES (478,0,30,E'Event',2,E'2009-12-21 16:05:09',E'2009-12-21 16:05:09');
INSERT INTO "ratings" VALUES (479,0,30,E'Event',4,E'2009-12-21 16:05:09',E'2009-12-21 16:05:09');
INSERT INTO "ratings" VALUES (480,0,30,E'Event',3,E'2009-12-21 16:05:09',E'2009-12-21 16:05:09');
INSERT INTO "ratings" VALUES (481,0,31,E'Event',1,E'2009-12-21 16:09:51',E'2009-12-21 16:09:51');
INSERT INTO "ratings" VALUES (482,0,31,E'Event',2,E'2009-12-21 16:09:51',E'2009-12-21 16:09:51');
INSERT INTO "ratings" VALUES (483,0,31,E'Event',4,E'2009-12-21 16:09:51',E'2009-12-21 16:09:51');
INSERT INTO "ratings" VALUES (484,0,31,E'Event',3,E'2009-12-21 16:09:51',E'2009-12-21 16:09:51');
INSERT INTO "ratings" VALUES (485,0,32,E'Event',1,E'2009-12-21 16:11:28',E'2009-12-21 16:11:28');
INSERT INTO "ratings" VALUES (486,0,32,E'Event',2,E'2009-12-21 16:11:28',E'2009-12-21 16:11:28');
INSERT INTO "ratings" VALUES (487,0,32,E'Event',4,E'2009-12-21 16:11:28',E'2009-12-21 16:11:28');
INSERT INTO "ratings" VALUES (488,0,32,E'Event',3,E'2009-12-21 16:11:28',E'2009-12-21 16:11:28');
INSERT INTO "ratings" VALUES (489,0,33,E'Event',1,E'2009-12-21 16:16:24',E'2009-12-21 16:16:24');
INSERT INTO "ratings" VALUES (490,0,33,E'Event',2,E'2009-12-21 16:16:24',E'2009-12-21 16:16:24');
INSERT INTO "ratings" VALUES (491,0,33,E'Event',4,E'2009-12-21 16:16:25',E'2009-12-21 16:16:25');
INSERT INTO "ratings" VALUES (492,0,33,E'Event',3,E'2009-12-21 16:16:25',E'2009-12-21 16:16:25');
INSERT INTO "ratings" VALUES (493,0,34,E'Event',1,E'2009-12-21 16:18:16',E'2009-12-21 16:18:16');
INSERT INTO "ratings" VALUES (494,0,34,E'Event',2,E'2009-12-21 16:18:16',E'2009-12-21 16:18:16');
INSERT INTO "ratings" VALUES (495,0,34,E'Event',4,E'2009-12-21 16:18:16',E'2009-12-21 16:18:16');
INSERT INTO "ratings" VALUES (496,0,34,E'Event',3,E'2009-12-21 16:18:16',E'2009-12-21 16:18:16');
INSERT INTO "ratings" VALUES (497,0,35,E'Event',1,E'2009-12-21 16:21:32',E'2009-12-21 16:21:32');
INSERT INTO "ratings" VALUES (498,0,35,E'Event',2,E'2009-12-21 16:21:32',E'2009-12-21 16:21:32');
INSERT INTO "ratings" VALUES (499,0,35,E'Event',4,E'2009-12-21 16:21:32',E'2009-12-21 16:21:32');
INSERT INTO "ratings" VALUES (500,0,35,E'Event',3,E'2009-12-21 16:21:32',E'2009-12-21 16:21:32');
INSERT INTO "ratings" VALUES (501,0,36,E'Event',1,E'2009-12-21 16:22:38',E'2009-12-21 16:22:38');
INSERT INTO "ratings" VALUES (502,0,36,E'Event',2,E'2009-12-21 16:22:38',E'2009-12-21 16:22:38');
INSERT INTO "ratings" VALUES (503,0,36,E'Event',4,E'2009-12-21 16:22:38',E'2009-12-21 16:22:38');
INSERT INTO "ratings" VALUES (504,0,36,E'Event',3,E'2009-12-21 16:22:38',E'2009-12-21 16:22:38');
INSERT INTO "ratings" VALUES (505,0,37,E'Event',1,E'2009-12-21 16:23:37',E'2009-12-21 16:23:37');
INSERT INTO "ratings" VALUES (506,0,37,E'Event',2,E'2009-12-21 16:23:37',E'2009-12-21 16:23:37');
INSERT INTO "ratings" VALUES (507,0,37,E'Event',4,E'2009-12-21 16:23:37',E'2009-12-21 16:23:37');
INSERT INTO "ratings" VALUES (508,0,37,E'Event',3,E'2009-12-21 16:23:37',E'2009-12-21 16:23:37');
INSERT INTO "ratings" VALUES (509,0,38,E'Event',1,E'2009-12-21 16:24:28',E'2009-12-21 16:24:28');
INSERT INTO "ratings" VALUES (510,0,38,E'Event',2,E'2009-12-21 16:24:28',E'2009-12-21 16:24:28');
INSERT INTO "ratings" VALUES (511,0,38,E'Event',4,E'2009-12-21 16:24:28',E'2009-12-21 16:24:28');
INSERT INTO "ratings" VALUES (512,0,38,E'Event',3,E'2009-12-21 16:24:28',E'2009-12-21 16:24:28');
INSERT INTO "ratings" VALUES (513,0,39,E'Event',1,E'2009-12-21 16:25:32',E'2009-12-21 16:25:32');
INSERT INTO "ratings" VALUES (514,0,39,E'Event',2,E'2009-12-21 16:25:32',E'2009-12-21 16:25:32');
INSERT INTO "ratings" VALUES (515,0,39,E'Event',4,E'2009-12-21 16:25:32',E'2009-12-21 16:25:32');
INSERT INTO "ratings" VALUES (516,0,39,E'Event',3,E'2009-12-21 16:25:32',E'2009-12-21 16:25:32');
INSERT INTO "ratings" VALUES (517,0,40,E'Event',1,E'2009-12-21 16:27:10',E'2009-12-21 16:27:10');
INSERT INTO "ratings" VALUES (518,0,40,E'Event',2,E'2009-12-21 16:27:10',E'2009-12-21 16:27:10');
INSERT INTO "ratings" VALUES (519,0,40,E'Event',4,E'2009-12-21 16:27:10',E'2009-12-21 16:27:10');
INSERT INTO "ratings" VALUES (520,0,40,E'Event',3,E'2009-12-21 16:27:10',E'2009-12-21 16:27:10');
INSERT INTO "ratings" VALUES (521,0,43,E'Character',1,E'2009-12-21 16:28:13',E'2009-12-21 16:28:13');
INSERT INTO "ratings" VALUES (522,0,43,E'Character',2,E'2009-12-21 16:28:13',E'2009-12-21 16:28:13');
INSERT INTO "ratings" VALUES (523,0,43,E'Character',4,E'2009-12-21 16:28:13',E'2009-12-21 16:28:13');
INSERT INTO "ratings" VALUES (524,0,43,E'Character',3,E'2009-12-21 16:28:13',E'2009-12-21 16:28:13');
INSERT INTO "ratings" VALUES (525,0,41,E'Event',1,E'2009-12-21 16:29:33',E'2009-12-21 16:29:33');
INSERT INTO "ratings" VALUES (526,0,41,E'Event',2,E'2009-12-21 16:29:33',E'2009-12-21 16:29:33');
INSERT INTO "ratings" VALUES (527,0,41,E'Event',4,E'2009-12-21 16:29:33',E'2009-12-21 16:29:33');
INSERT INTO "ratings" VALUES (528,0,41,E'Event',3,E'2009-12-21 16:29:33',E'2009-12-21 16:29:33');
INSERT INTO "ratings" VALUES (529,0,42,E'Event',1,E'2009-12-21 16:30:56',E'2009-12-21 16:30:56');
INSERT INTO "ratings" VALUES (530,0,42,E'Event',2,E'2009-12-21 16:30:56',E'2009-12-21 16:30:56');
INSERT INTO "ratings" VALUES (531,0,42,E'Event',4,E'2009-12-21 16:30:56',E'2009-12-21 16:30:56');
INSERT INTO "ratings" VALUES (532,0,42,E'Event',3,E'2009-12-21 16:30:56',E'2009-12-21 16:30:56');
INSERT INTO "ratings" VALUES (533,0,43,E'Event',1,E'2009-12-21 16:35:18',E'2009-12-21 16:35:18');
INSERT INTO "ratings" VALUES (534,0,43,E'Event',2,E'2009-12-21 16:35:18',E'2009-12-21 16:35:18');
INSERT INTO "ratings" VALUES (535,0,43,E'Event',4,E'2009-12-21 16:35:18',E'2009-12-21 16:35:18');
INSERT INTO "ratings" VALUES (536,0,43,E'Event',3,E'2009-12-21 16:35:18',E'2009-12-21 16:35:18');
INSERT INTO "ratings" VALUES (537,0,44,E'Event',1,E'2009-12-21 16:37:06',E'2009-12-21 16:37:06');
INSERT INTO "ratings" VALUES (538,0,44,E'Event',2,E'2009-12-21 16:37:06',E'2009-12-21 16:37:06');
INSERT INTO "ratings" VALUES (539,0,44,E'Event',4,E'2009-12-21 16:37:06',E'2009-12-21 16:37:06');
INSERT INTO "ratings" VALUES (540,0,44,E'Event',3,E'2009-12-21 16:37:06',E'2009-12-21 16:37:06');
INSERT INTO "ratings" VALUES (541,50,45,E'Event',1,E'2010-01-05 10:34:25',E'2010-01-05 10:39:17');
INSERT INTO "ratings" VALUES (542,60,45,E'Event',2,E'2010-01-05 10:34:25',E'2010-01-05 10:39:26');
INSERT INTO "ratings" VALUES (543,20,45,E'Event',4,E'2010-01-05 10:34:25',E'2010-01-05 10:39:33');
INSERT INTO "ratings" VALUES (544,0,45,E'Event',3,E'2010-01-05 10:34:25',E'2010-01-05 10:34:25');
INSERT INTO "ratings" VALUES (545,0,13,E'Artifact',1,E'2010-01-05 10:36:46',E'2010-01-05 10:36:46');
INSERT INTO "ratings" VALUES (546,0,13,E'Artifact',2,E'2010-01-05 10:36:46',E'2010-01-05 10:36:46');
INSERT INTO "ratings" VALUES (547,0,13,E'Artifact',4,E'2010-01-05 10:36:46',E'2010-01-05 10:36:46');
INSERT INTO "ratings" VALUES (548,0,13,E'Artifact',3,E'2010-01-05 10:36:46',E'2010-01-05 10:36:46');
INSERT INTO "ratings" VALUES (549,0,46,E'Event',1,E'2010-01-05 10:42:20',E'2010-01-05 10:42:20');
INSERT INTO "ratings" VALUES (550,0,46,E'Event',2,E'2010-01-05 10:42:20',E'2010-01-05 10:42:20');
INSERT INTO "ratings" VALUES (551,0,46,E'Event',4,E'2010-01-05 10:42:20',E'2010-01-05 10:42:20');
INSERT INTO "ratings" VALUES (552,0,46,E'Event',3,E'2010-01-05 10:42:20',E'2010-01-05 10:42:20');
INSERT INTO "ratings" VALUES (553,0,47,E'Event',1,E'2010-01-05 10:45:38',E'2010-01-05 10:45:38');
INSERT INTO "ratings" VALUES (554,0,47,E'Event',2,E'2010-01-05 10:45:38',E'2010-01-05 10:45:38');
INSERT INTO "ratings" VALUES (555,0,47,E'Event',4,E'2010-01-05 10:45:38',E'2010-01-05 10:45:38');
INSERT INTO "ratings" VALUES (556,0,47,E'Event',3,E'2010-01-05 10:45:38',E'2010-01-05 10:45:38');
INSERT INTO "ratings" VALUES (557,0,48,E'Event',1,E'2010-01-05 10:48:26',E'2010-01-05 10:48:26');
INSERT INTO "ratings" VALUES (558,0,48,E'Event',2,E'2010-01-05 10:48:26',E'2010-01-05 10:48:26');
INSERT INTO "ratings" VALUES (559,0,48,E'Event',4,E'2010-01-05 10:48:26',E'2010-01-05 10:48:26');
INSERT INTO "ratings" VALUES (560,0,48,E'Event',3,E'2010-01-05 10:48:26',E'2010-01-05 10:48:26');
INSERT INTO "ratings" VALUES (561,0,49,E'Event',1,E'2010-01-05 10:51:02',E'2010-01-05 10:51:02');
INSERT INTO "ratings" VALUES (562,0,49,E'Event',2,E'2010-01-05 10:51:03',E'2010-01-05 10:51:03');
INSERT INTO "ratings" VALUES (563,0,49,E'Event',4,E'2010-01-05 10:51:03',E'2010-01-05 10:51:03');
INSERT INTO "ratings" VALUES (564,0,49,E'Event',3,E'2010-01-05 10:51:03',E'2010-01-05 10:51:03');
INSERT INTO "ratings" VALUES (565,0,50,E'Event',1,E'2010-01-05 10:53:37',E'2010-01-05 10:53:37');
INSERT INTO "ratings" VALUES (566,0,50,E'Event',2,E'2010-01-05 10:53:37',E'2010-01-05 10:53:37');
INSERT INTO "ratings" VALUES (567,0,50,E'Event',4,E'2010-01-05 10:53:37',E'2010-01-05 10:53:37');
INSERT INTO "ratings" VALUES (568,0,50,E'Event',3,E'2010-01-05 10:53:37',E'2010-01-05 10:53:37');
INSERT INTO "ratings" VALUES (569,0,51,E'Event',1,E'2010-01-05 11:00:42',E'2010-01-05 11:00:42');
INSERT INTO "ratings" VALUES (570,0,51,E'Event',2,E'2010-01-05 11:00:42',E'2010-01-05 11:00:42');
INSERT INTO "ratings" VALUES (571,0,51,E'Event',4,E'2010-01-05 11:00:42',E'2010-01-05 11:00:42');
INSERT INTO "ratings" VALUES (572,0,51,E'Event',3,E'2010-01-05 11:00:42',E'2010-01-05 11:00:42');
INSERT INTO "ratings" VALUES (573,0,52,E'Event',1,E'2010-01-05 11:03:39',E'2010-01-05 11:03:39');
INSERT INTO "ratings" VALUES (574,0,52,E'Event',2,E'2010-01-05 11:03:39',E'2010-01-05 11:03:39');
INSERT INTO "ratings" VALUES (575,0,52,E'Event',4,E'2010-01-05 11:03:39',E'2010-01-05 11:03:39');
INSERT INTO "ratings" VALUES (576,0,52,E'Event',3,E'2010-01-05 11:03:39',E'2010-01-05 11:03:39');
INSERT INTO "ratings" VALUES (577,0,53,E'Event',1,E'2010-01-05 11:05:53',E'2010-01-05 11:05:53');
INSERT INTO "ratings" VALUES (578,0,53,E'Event',2,E'2010-01-05 11:05:53',E'2010-01-05 11:05:53');
INSERT INTO "ratings" VALUES (579,0,53,E'Event',4,E'2010-01-05 11:05:53',E'2010-01-05 11:05:53');
INSERT INTO "ratings" VALUES (580,0,53,E'Event',3,E'2010-01-05 11:05:53',E'2010-01-05 11:05:53');
INSERT INTO "ratings" VALUES (581,0,54,E'Event',1,E'2010-01-05 12:01:01',E'2010-01-05 12:01:01');
INSERT INTO "ratings" VALUES (582,0,54,E'Event',2,E'2010-01-05 12:01:01',E'2010-01-05 12:01:01');
INSERT INTO "ratings" VALUES (583,0,54,E'Event',4,E'2010-01-05 12:01:01',E'2010-01-05 12:01:01');
INSERT INTO "ratings" VALUES (584,0,54,E'Event',3,E'2010-01-05 12:01:01',E'2010-01-05 12:01:01');
INSERT INTO "ratings" VALUES (593,0,55,E'Event',1,E'2010-01-05 12:06:12',E'2010-01-05 12:06:12');
INSERT INTO "ratings" VALUES (594,0,55,E'Event',2,E'2010-01-05 12:06:12',E'2010-01-05 12:06:12');
INSERT INTO "ratings" VALUES (595,0,55,E'Event',4,E'2010-01-05 12:06:12',E'2010-01-05 12:06:12');
INSERT INTO "ratings" VALUES (596,0,55,E'Event',3,E'2010-01-05 12:06:12',E'2010-01-05 12:06:12');
INSERT INTO "ratings" VALUES (605,0,39,E'Location',1,E'2010-01-06 12:08:34',E'2010-01-06 12:08:34');
INSERT INTO "ratings" VALUES (606,0,39,E'Location',2,E'2010-01-06 12:08:34',E'2010-01-06 12:08:34');
INSERT INTO "ratings" VALUES (607,0,39,E'Location',4,E'2010-01-06 12:08:34',E'2010-01-06 12:08:34');
INSERT INTO "ratings" VALUES (608,0,39,E'Location',3,E'2010-01-06 12:08:34',E'2010-01-06 12:08:34');
INSERT INTO "ratings" VALUES (609,0,40,E'Location',1,E'2010-01-06 12:11:14',E'2010-01-06 12:11:14');
INSERT INTO "ratings" VALUES (610,0,40,E'Location',2,E'2010-01-06 12:11:14',E'2010-01-06 12:11:14');
INSERT INTO "ratings" VALUES (611,0,40,E'Location',4,E'2010-01-06 12:11:14',E'2010-01-06 12:11:14');
INSERT INTO "ratings" VALUES (612,0,40,E'Location',3,E'2010-01-06 12:11:14',E'2010-01-06 12:11:14');
INSERT INTO "ratings" VALUES (613,0,56,E'Event',1,E'2010-01-07 09:51:49',E'2010-01-07 09:51:49');
INSERT INTO "ratings" VALUES (614,0,56,E'Event',2,E'2010-01-07 09:51:49',E'2010-01-07 09:51:49');
INSERT INTO "ratings" VALUES (615,0,56,E'Event',4,E'2010-01-07 09:51:49',E'2010-01-07 09:51:49');
INSERT INTO "ratings" VALUES (616,0,56,E'Event',3,E'2010-01-07 09:51:49',E'2010-01-07 09:51:49');
INSERT INTO "ratings" VALUES (617,0,57,E'Event',1,E'2010-01-07 09:54:33',E'2010-01-07 09:54:33');
INSERT INTO "ratings" VALUES (618,0,57,E'Event',2,E'2010-01-07 09:54:33',E'2010-01-07 09:54:33');
INSERT INTO "ratings" VALUES (619,0,57,E'Event',4,E'2010-01-07 09:54:33',E'2010-01-07 09:54:33');
INSERT INTO "ratings" VALUES (620,0,57,E'Event',3,E'2010-01-07 09:54:33',E'2010-01-07 09:54:33');
INSERT INTO "ratings" VALUES (621,0,58,E'Event',1,E'2010-01-07 09:55:24',E'2010-01-07 09:55:24');
INSERT INTO "ratings" VALUES (622,0,58,E'Event',2,E'2010-01-07 09:55:24',E'2010-01-07 09:55:24');
INSERT INTO "ratings" VALUES (623,0,58,E'Event',4,E'2010-01-07 09:55:24',E'2010-01-07 09:55:24');
INSERT INTO "ratings" VALUES (624,0,58,E'Event',3,E'2010-01-07 09:55:24',E'2010-01-07 09:55:24');
INSERT INTO "ratings" VALUES (625,0,59,E'Event',1,E'2010-01-07 09:56:50',E'2010-01-07 09:56:50');
INSERT INTO "ratings" VALUES (626,0,59,E'Event',2,E'2010-01-07 09:56:50',E'2010-01-07 09:56:50');
INSERT INTO "ratings" VALUES (627,0,59,E'Event',4,E'2010-01-07 09:56:50',E'2010-01-07 09:56:50');
INSERT INTO "ratings" VALUES (628,0,59,E'Event',3,E'2010-01-07 09:56:50',E'2010-01-07 09:56:50');
INSERT INTO "ratings" VALUES (629,0,60,E'Event',1,E'2010-01-07 09:57:40',E'2010-01-07 09:57:40');
INSERT INTO "ratings" VALUES (630,0,60,E'Event',2,E'2010-01-07 09:57:40',E'2010-01-07 09:57:40');
INSERT INTO "ratings" VALUES (631,0,60,E'Event',4,E'2010-01-07 09:57:40',E'2010-01-07 09:57:40');
INSERT INTO "ratings" VALUES (632,0,60,E'Event',3,E'2010-01-07 09:57:40',E'2010-01-07 09:57:40');
INSERT INTO "ratings" VALUES (633,0,61,E'Event',1,E'2010-01-07 09:58:35',E'2010-01-07 09:58:35');
INSERT INTO "ratings" VALUES (634,0,61,E'Event',2,E'2010-01-07 09:58:35',E'2010-01-07 09:58:35');
INSERT INTO "ratings" VALUES (635,0,61,E'Event',4,E'2010-01-07 09:58:35',E'2010-01-07 09:58:35');
INSERT INTO "ratings" VALUES (636,0,61,E'Event',3,E'2010-01-07 09:58:35',E'2010-01-07 09:58:35');
INSERT INTO "ratings" VALUES (637,0,62,E'Event',1,E'2010-01-07 09:59:33',E'2010-01-07 09:59:33');
INSERT INTO "ratings" VALUES (638,0,62,E'Event',2,E'2010-01-07 09:59:33',E'2010-01-07 09:59:33');
INSERT INTO "ratings" VALUES (639,0,62,E'Event',4,E'2010-01-07 09:59:33',E'2010-01-07 09:59:33');
INSERT INTO "ratings" VALUES (640,0,62,E'Event',3,E'2010-01-07 09:59:33',E'2010-01-07 09:59:33');
INSERT INTO "ratings" VALUES (641,0,63,E'Event',1,E'2010-01-07 10:00:43',E'2010-01-07 10:00:43');
INSERT INTO "ratings" VALUES (642,0,63,E'Event',2,E'2010-01-07 10:00:43',E'2010-01-07 10:00:43');
INSERT INTO "ratings" VALUES (643,0,63,E'Event',4,E'2010-01-07 10:00:43',E'2010-01-07 10:00:43');
INSERT INTO "ratings" VALUES (644,0,63,E'Event',3,E'2010-01-07 10:00:43',E'2010-01-07 10:00:43');
INSERT INTO "ratings" VALUES (645,0,64,E'Event',1,E'2010-01-07 10:01:45',E'2010-01-07 10:01:45');
INSERT INTO "ratings" VALUES (646,0,64,E'Event',2,E'2010-01-07 10:01:45',E'2010-01-07 10:01:45');
INSERT INTO "ratings" VALUES (647,0,64,E'Event',4,E'2010-01-07 10:01:45',E'2010-01-07 10:01:45');
INSERT INTO "ratings" VALUES (648,0,64,E'Event',3,E'2010-01-07 10:01:45',E'2010-01-07 10:01:45');
INSERT INTO "ratings" VALUES (649,0,65,E'Event',1,E'2010-01-07 10:07:21',E'2010-01-07 10:07:21');
INSERT INTO "ratings" VALUES (650,0,65,E'Event',2,E'2010-01-07 10:07:21',E'2010-01-07 10:07:21');
INSERT INTO "ratings" VALUES (651,0,65,E'Event',4,E'2010-01-07 10:07:21',E'2010-01-07 10:07:21');
INSERT INTO "ratings" VALUES (652,0,65,E'Event',3,E'2010-01-07 10:07:21',E'2010-01-07 10:07:21');
INSERT INTO "ratings" VALUES (653,0,66,E'Event',1,E'2010-01-07 10:08:10',E'2010-01-07 10:08:10');
INSERT INTO "ratings" VALUES (654,0,66,E'Event',2,E'2010-01-07 10:08:10',E'2010-01-07 10:08:10');
INSERT INTO "ratings" VALUES (655,0,66,E'Event',4,E'2010-01-07 10:08:10',E'2010-01-07 10:08:10');
INSERT INTO "ratings" VALUES (656,0,66,E'Event',3,E'2010-01-07 10:08:10',E'2010-01-07 10:08:10');
INSERT INTO "ratings" VALUES (657,0,67,E'Event',1,E'2010-01-07 10:08:50',E'2010-01-07 10:08:50');
INSERT INTO "ratings" VALUES (658,0,67,E'Event',2,E'2010-01-07 10:08:50',E'2010-01-07 10:08:50');
INSERT INTO "ratings" VALUES (659,0,67,E'Event',4,E'2010-01-07 10:08:50',E'2010-01-07 10:08:50');
INSERT INTO "ratings" VALUES (660,0,67,E'Event',3,E'2010-01-07 10:08:50',E'2010-01-07 10:08:50');
INSERT INTO "ratings" VALUES (661,0,68,E'Event',1,E'2010-01-07 10:09:26',E'2010-01-07 10:09:26');
INSERT INTO "ratings" VALUES (662,0,68,E'Event',2,E'2010-01-07 10:09:26',E'2010-01-07 10:09:26');
INSERT INTO "ratings" VALUES (663,0,68,E'Event',4,E'2010-01-07 10:09:26',E'2010-01-07 10:09:26');
INSERT INTO "ratings" VALUES (664,0,68,E'Event',3,E'2010-01-07 10:09:26',E'2010-01-07 10:09:26');
INSERT INTO "ratings" VALUES (665,0,69,E'Event',1,E'2010-01-07 10:09:46',E'2010-01-07 10:09:46');
INSERT INTO "ratings" VALUES (666,0,69,E'Event',2,E'2010-01-07 10:09:46',E'2010-01-07 10:09:46');
INSERT INTO "ratings" VALUES (667,0,69,E'Event',4,E'2010-01-07 10:09:46',E'2010-01-07 10:09:46');
INSERT INTO "ratings" VALUES (668,0,69,E'Event',3,E'2010-01-07 10:09:46',E'2010-01-07 10:09:46');
INSERT INTO "ratings" VALUES (669,0,41,E'Location',1,E'2010-01-07 15:01:14',E'2010-01-07 15:01:14');
INSERT INTO "ratings" VALUES (670,0,41,E'Location',2,E'2010-01-07 15:01:15',E'2010-01-07 15:01:15');
INSERT INTO "ratings" VALUES (671,0,41,E'Location',4,E'2010-01-07 15:01:15',E'2010-01-07 15:01:15');
INSERT INTO "ratings" VALUES (672,0,41,E'Location',3,E'2010-01-07 15:01:15',E'2010-01-07 15:01:15');
INSERT INTO "ratings" VALUES (673,0,42,E'Location',1,E'2010-01-08 11:26:49',E'2010-01-08 11:26:49');
INSERT INTO "ratings" VALUES (674,0,42,E'Location',2,E'2010-01-08 11:26:49',E'2010-01-08 11:26:49');
INSERT INTO "ratings" VALUES (675,0,42,E'Location',4,E'2010-01-08 11:26:49',E'2010-01-08 11:26:49');
INSERT INTO "ratings" VALUES (676,0,42,E'Location',3,E'2010-01-08 11:26:49',E'2010-01-08 11:26:49');
INSERT INTO "ratings" VALUES (677,0,14,E'Artifact',1,E'2010-01-08 11:31:45',E'2010-01-08 11:31:45');
INSERT INTO "ratings" VALUES (678,0,14,E'Artifact',2,E'2010-01-08 11:31:45',E'2010-01-08 11:31:45');
INSERT INTO "ratings" VALUES (679,0,14,E'Artifact',4,E'2010-01-08 11:31:45',E'2010-01-08 11:31:45');
INSERT INTO "ratings" VALUES (680,0,14,E'Artifact',3,E'2010-01-08 11:31:45',E'2010-01-08 11:31:45');
INSERT INTO "ratings" VALUES (681,0,43,E'Location',1,E'2010-01-08 11:36:07',E'2010-01-08 11:36:07');
INSERT INTO "ratings" VALUES (682,0,43,E'Location',2,E'2010-01-08 11:36:07',E'2010-01-08 11:36:07');
INSERT INTO "ratings" VALUES (683,0,43,E'Location',4,E'2010-01-08 11:36:07',E'2010-01-08 11:36:07');
INSERT INTO "ratings" VALUES (684,0,43,E'Location',3,E'2010-01-08 11:36:07',E'2010-01-08 11:36:07');
INSERT INTO "ratings" VALUES (685,0,44,E'Location',1,E'2010-01-08 11:42:34',E'2010-01-08 11:42:34');
INSERT INTO "ratings" VALUES (686,0,44,E'Location',2,E'2010-01-08 11:42:34',E'2010-01-08 11:42:34');
INSERT INTO "ratings" VALUES (687,0,44,E'Location',4,E'2010-01-08 11:42:34',E'2010-01-08 11:42:34');
INSERT INTO "ratings" VALUES (688,0,44,E'Location',3,E'2010-01-08 11:42:34',E'2010-01-08 11:42:34');
INSERT INTO "ratings" VALUES (689,0,45,E'Location',1,E'2010-01-08 11:49:59',E'2010-01-08 11:49:59');
INSERT INTO "ratings" VALUES (690,0,45,E'Location',2,E'2010-01-08 11:49:59',E'2010-01-08 11:49:59');
INSERT INTO "ratings" VALUES (691,0,45,E'Location',4,E'2010-01-08 11:49:59',E'2010-01-08 11:49:59');
INSERT INTO "ratings" VALUES (692,0,45,E'Location',3,E'2010-01-08 11:49:59',E'2010-01-08 11:49:59');
INSERT INTO "ratings" VALUES (693,0,46,E'Location',1,E'2010-01-08 11:58:36',E'2010-01-08 11:58:36');
INSERT INTO "ratings" VALUES (694,0,46,E'Location',2,E'2010-01-08 11:58:36',E'2010-01-08 11:58:36');
INSERT INTO "ratings" VALUES (695,0,46,E'Location',4,E'2010-01-08 11:58:36',E'2010-01-08 11:58:36');
INSERT INTO "ratings" VALUES (696,0,46,E'Location',3,E'2010-01-08 11:58:36',E'2010-01-08 11:58:36');
INSERT INTO "ratings" VALUES (697,0,47,E'Location',1,E'2010-01-08 12:03:52',E'2010-01-08 12:03:52');
INSERT INTO "ratings" VALUES (698,0,47,E'Location',2,E'2010-01-08 12:03:52',E'2010-01-08 12:03:52');
INSERT INTO "ratings" VALUES (699,0,47,E'Location',4,E'2010-01-08 12:03:52',E'2010-01-08 12:03:52');
INSERT INTO "ratings" VALUES (700,0,47,E'Location',3,E'2010-01-08 12:03:52',E'2010-01-08 12:03:52');
INSERT INTO "ratings" VALUES (701,0,15,E'Artifact',1,E'2010-01-08 12:06:29',E'2010-01-08 12:06:29');
INSERT INTO "ratings" VALUES (702,0,15,E'Artifact',2,E'2010-01-08 12:06:29',E'2010-01-08 12:06:29');
INSERT INTO "ratings" VALUES (703,0,15,E'Artifact',4,E'2010-01-08 12:06:29',E'2010-01-08 12:06:29');
INSERT INTO "ratings" VALUES (704,0,15,E'Artifact',3,E'2010-01-08 12:06:29',E'2010-01-08 12:06:29');
INSERT INTO "ratings" VALUES (705,0,48,E'Location',1,E'2010-01-08 12:09:38',E'2010-01-08 12:09:38');
INSERT INTO "ratings" VALUES (706,0,48,E'Location',2,E'2010-01-08 12:09:38',E'2010-01-08 12:09:38');
INSERT INTO "ratings" VALUES (707,0,48,E'Location',4,E'2010-01-08 12:09:38',E'2010-01-08 12:09:38');
INSERT INTO "ratings" VALUES (708,0,48,E'Location',3,E'2010-01-08 12:09:38',E'2010-01-08 12:09:38');
INSERT INTO "ratings" VALUES (709,0,70,E'Event',1,E'2010-01-12 15:57:39',E'2010-01-12 15:57:39');
INSERT INTO "ratings" VALUES (710,0,70,E'Event',2,E'2010-01-12 15:57:39',E'2010-01-12 15:57:39');
INSERT INTO "ratings" VALUES (711,0,70,E'Event',4,E'2010-01-12 15:57:39',E'2010-01-12 15:57:39');
INSERT INTO "ratings" VALUES (712,0,70,E'Event',3,E'2010-01-12 15:57:39',E'2010-01-12 15:57:39');
INSERT INTO "ratings" VALUES (713,0,49,E'Location',1,E'2010-01-13 12:36:00',E'2010-01-13 12:36:00');
INSERT INTO "ratings" VALUES (714,0,49,E'Location',2,E'2010-01-13 12:36:00',E'2010-01-13 12:36:00');
INSERT INTO "ratings" VALUES (715,0,49,E'Location',4,E'2010-01-13 12:36:00',E'2010-01-13 12:36:00');
INSERT INTO "ratings" VALUES (716,0,49,E'Location',3,E'2010-01-13 12:36:00',E'2010-01-13 12:36:00');
INSERT INTO "ratings" VALUES (717,0,16,E'Artifact',1,E'2010-01-14 12:05:02',E'2010-01-14 12:05:02');
INSERT INTO "ratings" VALUES (718,0,16,E'Artifact',2,E'2010-01-14 12:05:02',E'2010-01-14 12:05:02');
INSERT INTO "ratings" VALUES (719,0,16,E'Artifact',4,E'2010-01-14 12:05:02',E'2010-01-14 12:05:02');
INSERT INTO "ratings" VALUES (720,0,16,E'Artifact',3,E'2010-01-14 12:05:02',E'2010-01-14 12:05:02');
INSERT INTO "ratings" VALUES (721,0,46,E'Character',1,E'2010-01-14 12:08:30',E'2010-01-14 12:08:30');
INSERT INTO "ratings" VALUES (722,0,46,E'Character',2,E'2010-01-14 12:08:30',E'2010-01-14 12:08:30');
INSERT INTO "ratings" VALUES (723,0,46,E'Character',4,E'2010-01-14 12:08:30',E'2010-01-14 12:08:30');
INSERT INTO "ratings" VALUES (724,0,46,E'Character',3,E'2010-01-14 12:08:30',E'2010-01-14 12:08:30');
INSERT INTO "ratings" VALUES (725,0,17,E'Artifact',1,E'2010-01-14 13:29:59',E'2010-01-14 13:29:59');
INSERT INTO "ratings" VALUES (726,0,17,E'Artifact',2,E'2010-01-14 13:29:59',E'2010-01-14 13:29:59');
INSERT INTO "ratings" VALUES (727,0,17,E'Artifact',4,E'2010-01-14 13:29:59',E'2010-01-14 13:29:59');
INSERT INTO "ratings" VALUES (728,0,17,E'Artifact',3,E'2010-01-14 13:29:59',E'2010-01-14 13:29:59');
INSERT INTO "ratings" VALUES (729,0,47,E'Character',1,E'2010-01-14 14:52:56',E'2010-01-14 14:52:56');
INSERT INTO "ratings" VALUES (730,0,47,E'Character',2,E'2010-01-14 14:52:56',E'2010-01-14 14:52:56');
INSERT INTO "ratings" VALUES (731,0,47,E'Character',4,E'2010-01-14 14:52:56',E'2010-01-14 14:52:56');
INSERT INTO "ratings" VALUES (732,0,47,E'Character',3,E'2010-01-14 14:52:56',E'2010-01-14 14:52:56');
INSERT INTO "ratings" VALUES (733,0,48,E'Character',1,E'2010-01-14 15:23:34',E'2010-01-14 15:23:34');
INSERT INTO "ratings" VALUES (734,0,48,E'Character',2,E'2010-01-14 15:23:34',E'2010-01-14 15:23:34');
INSERT INTO "ratings" VALUES (735,0,48,E'Character',4,E'2010-01-14 15:23:34',E'2010-01-14 15:23:34');
INSERT INTO "ratings" VALUES (736,0,48,E'Character',3,E'2010-01-14 15:23:34',E'2010-01-14 15:23:34');
INSERT INTO "ratings" VALUES (737,0,49,E'Character',1,E'2010-01-18 12:21:39',E'2010-01-18 12:21:39');
INSERT INTO "ratings" VALUES (738,0,49,E'Character',2,E'2010-01-18 12:21:39',E'2010-01-18 12:21:39');
INSERT INTO "ratings" VALUES (739,0,49,E'Character',4,E'2010-01-18 12:21:39',E'2010-01-18 12:21:39');
INSERT INTO "ratings" VALUES (740,0,49,E'Character',3,E'2010-01-18 12:21:39',E'2010-01-18 12:21:39');
INSERT INTO "ratings" VALUES (741,0,50,E'Character',1,E'2010-01-18 12:22:06',E'2010-01-18 12:22:06');
INSERT INTO "ratings" VALUES (742,0,50,E'Character',2,E'2010-01-18 12:22:06',E'2010-01-18 12:22:06');
INSERT INTO "ratings" VALUES (743,0,50,E'Character',4,E'2010-01-18 12:22:06',E'2010-01-18 12:22:06');
INSERT INTO "ratings" VALUES (744,0,50,E'Character',3,E'2010-01-18 12:22:06',E'2010-01-18 12:22:06');
INSERT INTO "ratings" VALUES (745,0,51,E'Character',1,E'2010-01-18 12:22:36',E'2010-01-18 12:22:36');
INSERT INTO "ratings" VALUES (746,0,51,E'Character',2,E'2010-01-18 12:22:36',E'2010-01-18 12:22:36');
INSERT INTO "ratings" VALUES (747,0,51,E'Character',4,E'2010-01-18 12:22:36',E'2010-01-18 12:22:36');
INSERT INTO "ratings" VALUES (748,0,51,E'Character',3,E'2010-01-18 12:22:36',E'2010-01-18 12:22:36');
INSERT INTO "ratings" VALUES (749,0,52,E'Character',1,E'2010-01-18 12:22:58',E'2010-01-18 12:22:58');
INSERT INTO "ratings" VALUES (750,0,52,E'Character',2,E'2010-01-18 12:22:58',E'2010-01-18 12:22:58');
INSERT INTO "ratings" VALUES (751,0,52,E'Character',4,E'2010-01-18 12:22:58',E'2010-01-18 12:22:58');
INSERT INTO "ratings" VALUES (752,0,52,E'Character',3,E'2010-01-18 12:22:58',E'2010-01-18 12:22:58');
INSERT INTO "ratings" VALUES (753,0,53,E'Character',1,E'2010-01-18 12:23:28',E'2010-01-18 12:23:28');
INSERT INTO "ratings" VALUES (754,0,53,E'Character',2,E'2010-01-18 12:23:28',E'2010-01-18 12:23:28');
INSERT INTO "ratings" VALUES (755,0,53,E'Character',4,E'2010-01-18 12:23:28',E'2010-01-18 12:23:28');
INSERT INTO "ratings" VALUES (756,0,53,E'Character',3,E'2010-01-18 12:23:28',E'2010-01-18 12:23:28');
INSERT INTO "ratings" VALUES (757,0,54,E'Character',1,E'2010-01-18 12:23:54',E'2010-01-18 12:23:54');
INSERT INTO "ratings" VALUES (758,0,54,E'Character',2,E'2010-01-18 12:23:54',E'2010-01-18 12:23:54');
INSERT INTO "ratings" VALUES (759,0,54,E'Character',4,E'2010-01-18 12:23:54',E'2010-01-18 12:23:54');
INSERT INTO "ratings" VALUES (760,0,54,E'Character',3,E'2010-01-18 12:23:54',E'2010-01-18 12:23:54');
INSERT INTO "ratings" VALUES (761,0,55,E'Character',1,E'2010-01-18 12:24:16',E'2010-01-18 12:24:16');
INSERT INTO "ratings" VALUES (762,0,55,E'Character',2,E'2010-01-18 12:24:16',E'2010-01-18 12:24:16');
INSERT INTO "ratings" VALUES (763,0,55,E'Character',4,E'2010-01-18 12:24:16',E'2010-01-18 12:24:16');
INSERT INTO "ratings" VALUES (764,0,55,E'Character',3,E'2010-01-18 12:24:16',E'2010-01-18 12:24:16');
INSERT INTO "ratings" VALUES (769,0,18,E'Artifact',1,E'2010-01-19 10:45:15',E'2010-01-19 10:45:15');
INSERT INTO "ratings" VALUES (770,0,18,E'Artifact',2,E'2010-01-19 10:45:15',E'2010-01-19 10:45:15');
INSERT INTO "ratings" VALUES (771,0,18,E'Artifact',4,E'2010-01-19 10:45:15',E'2010-01-19 10:45:15');
INSERT INTO "ratings" VALUES (772,0,18,E'Artifact',3,E'2010-01-19 10:45:15',E'2010-01-19 10:45:15');

/*!40000 ALTER TABLE ratings ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE INDEX "ratings_rateable_id_idx" ON "ratings" USING btree ("rateable_id");
CREATE INDEX "ratings_rateable_type_idx" ON "ratings" USING btree ("rateable_type");
CREATE INDEX "ratings_rating_type_id_idx" ON "ratings" USING btree ("rating_type_id");

--
-- Table structure for table references
--

DROP TABLE "references" CASCADE\g
DROP SEQUENCE "references_id_seq" CASCADE ;

CREATE SEQUENCE "references_id_seq"  START WITH 12 ;

CREATE TABLE  "references" (
   "id" integer DEFAULT nextval('"references_id_seq"') NOT NULL,
   "referrer_id"   int default NULL, 
   "referrer_type"   varchar(255) default NULL, 
   "referee_id"   int default NULL, 
   "referee_type"   varchar(255) default NULL, 
   "description"   text, 
   "created_at"   timestamp without time zone default NULL, 
   "updated_at"   timestamp without time zone default NULL, 
   primary key ("id")
)   ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE references DISABLE KEYS */;

--
-- Dumping data for table references
--

INSERT INTO "references" VALUES (2,15,E'Event',7,E'Story',E'The Doctor reveals the Dalek plan to extract the Earth\'s core',E'2010-01-14 12:28:03',E'2010-01-14 12:28:03');
INSERT INTO "references" VALUES (4,31,E'Event',7,E'Story',E'The Doctor remembers that someone tried to steal the Earth once before',E'2010-01-15 15:46:11',E'2010-01-15 15:46:11');
INSERT INTO "references" VALUES (8,33,E'Event',18,E'Event',E'Sarah Jane saw Davros die on Skaro',E'2010-01-27 13:59:32',E'2010-01-27 13:59:32');
INSERT INTO "references" VALUES (9,33,E'Event',8,E'Story',E'Caan\'s emergency time shift took him into the Time War',E'2010-01-27 14:04:49',E'2010-01-27 14:04:49');
INSERT INTO "references" VALUES (11,37,E'Event',15,E'Event',E'Davros remembers having first met Sarah Jane on Skaro',E'2010-01-27 14:09:19',E'2010-01-27 14:09:19');

/*!40000 ALTER TABLE references ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

--
-- Table structure for table relationship_types
--

DROP TABLE "relationship_types" CASCADE\g
DROP SEQUENCE "relationship_types_id_seq" CASCADE ;

CREATE SEQUENCE "relationship_types_id_seq"  START WITH 18 ;

CREATE TABLE  "relationship_types" (
   "id" integer DEFAULT nextval('"relationship_types_id_seq"') NOT NULL,
   "created_at"   timestamp without time zone default NULL, 
   "updated_at"   timestamp without time zone default NULL, 
   primary key ("id")
)    ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE relationship_types DISABLE KEYS */;

--
-- Dumping data for table relationship_types
--

INSERT INTO "relationship_types" VALUES (1,E'best-friend',E'2009-11-17 17:28:56',E'2009-11-17 17:28:56');
INSERT INTO "relationship_types" VALUES (2,E'sibling',E'2009-11-17 17:29:10',E'2010-01-25 16:37:52');
INSERT INTO "relationship_types" VALUES (3,E'companion-of',E'2009-11-17 17:29:17',E'2009-11-17 17:29:17');
INSERT INTO "relationship_types" VALUES (4,E'grandson-of',E'2009-11-17 17:29:25',E'2009-11-17 17:29:25');
INSERT INTO "relationship_types" VALUES (5,E'incarnation-of',E'2009-11-17 17:29:33',E'2009-11-17 17:29:33');
INSERT INTO "relationship_types" VALUES (6,E'married-to',E'2009-11-17 17:29:41',E'2009-11-17 17:29:41');
INSERT INTO "relationship_types" VALUES (7,E'one-of',E'2009-11-17 17:29:47',E'2009-11-17 17:29:47');
INSERT INTO "relationship_types" VALUES (8,E'partner of',E'2009-11-17 17:29:56',E'2010-02-01 16:06:53');
INSERT INTO "relationship_types" VALUES (9,E'sister-of',E'2009-11-17 17:30:02',E'2009-11-17 17:30:02');
INSERT INTO "relationship_types" VALUES (10,E'creator of',E'2009-12-22 15:14:08',E'2010-02-01 16:03:19');
INSERT INTO "relationship_types" VALUES (11,E'created by',E'2009-12-22 15:14:37',E'2010-02-01 16:02:30');
INSERT INTO "relationship_types" VALUES (12,E'faction-of',E'2010-01-14 14:54:19',E'2010-01-14 14:54:19');
INSERT INTO "relationship_types" VALUES (13,E'Incarnations',E'2010-01-18 12:18:48',E'2010-01-18 12:18:48');
INSERT INTO "relationship_types" VALUES (14,E'companion',E'2010-01-18 12:30:04',E'2010-01-25 16:38:14');
INSERT INTO "relationship_types" VALUES (15,E'affiliate',E'2010-01-20 09:44:49',E'2010-01-25 16:36:26');
INSERT INTO "relationship_types" VALUES (16,E'daughter of',E'2010-01-20 10:08:19',E'2010-01-20 10:08:19');
INSERT INTO "relationship_types" VALUES (17,E'Includes',E'2010-02-01 15:08:24',E'2010-02-01 15:08:24');

/*!40000 ALTER TABLE relationship_types ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE INDEX "relationship_types_255_idx" ON "relationship_types" USING btree ("255");
CREATE INDEX "relationship_types_key_idx" ON "relationship_types" USING btree ("key");

--
-- Table structure for table relationships
--

DROP TABLE "relationships" CASCADE\g
DROP SEQUENCE "relationships_id_seq" CASCADE ;

CREATE SEQUENCE "relationships_id_seq"  START WITH 86 ;

CREATE TABLE  "relationships" (
   "id" integer DEFAULT nextval('"relationships_id_seq"') NOT NULL,
   "relation_id"   int default NULL, 
   "character_id"   int default NULL, 
   "relationship_type_id"   int default NULL, 
   "created_at"   timestamp without time zone default NULL, 
   "updated_at"   timestamp without time zone default NULL, 
   primary key ("id")
)    ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE relationships DISABLE KEYS */;

--
-- Dumping data for table relationships
--

INSERT INTO "relationships" VALUES (1,10,11,5,E'2009-11-17 17:44:53',E'2009-11-17 17:44:53');
INSERT INTO "relationships" VALUES (2,4,1,8,E'2009-11-17 17:45:08',E'2009-11-17 17:45:08');
INSERT INTO "relationships" VALUES (3,2,1,1,E'2009-11-17 17:45:28',E'2009-11-17 17:45:28');
INSERT INTO "relationships" VALUES (4,4,2,9,E'2009-11-17 17:45:48',E'2009-11-17 17:45:48');
INSERT INTO "relationships" VALUES (5,7,2,6,E'2009-11-17 17:46:04',E'2009-11-17 17:46:04');
INSERT INTO "relationships" VALUES (6,11,3,3,E'2009-11-17 17:46:20',E'2009-11-17 17:46:20');
INSERT INTO "relationships" VALUES (7,2,4,2,E'2009-11-17 17:46:35',E'2009-11-17 17:46:35');
INSERT INTO "relationships" VALUES (8,7,6,4,E'2009-11-17 17:46:52',E'2009-11-17 17:46:52');
INSERT INTO "relationships" VALUES (9,2,6,4,E'2009-11-17 17:47:06',E'2009-11-17 17:47:06');
INSERT INTO "relationships" VALUES (10,2,7,6,E'2009-11-17 17:47:24',E'2009-11-17 17:47:24');
INSERT INTO "relationships" VALUES (13,23,19,7,E'2009-11-17 17:49:38',E'2009-11-17 17:49:38');
INSERT INTO "relationships" VALUES (14,23,20,7,E'2009-11-18 11:17:02',E'2009-11-18 11:17:02');
INSERT INTO "relationships" VALUES (17,47,36,7,E'2009-12-21 13:06:55',E'2010-01-18 15:13:14');
INSERT INTO "relationships" VALUES (18,32,43,7,E'2009-12-21 16:28:29',E'2009-12-21 16:28:29');
INSERT INTO "relationships" VALUES (19,35,34,14,E'2009-12-22 11:11:10',E'2010-01-18 14:37:01');
INSERT INTO "relationships" VALUES (20,31,34,7,E'2009-12-22 11:11:59',E'2009-12-22 11:11:59');
INSERT INTO "relationships" VALUES (21,10,34,5,E'2009-12-22 11:13:05',E'2009-12-22 11:13:05');
INSERT INTO "relationships" VALUES (22,34,35,3,E'2009-12-22 11:19:54',E'2009-12-22 11:19:54');
INSERT INTO "relationships" VALUES (23,32,26,10,E'2009-12-22 15:14:57',E'2009-12-22 15:14:57');
INSERT INTO "relationships" VALUES (24,26,32,11,E'2009-12-22 15:15:25',E'2009-12-22 15:15:25');
INSERT INTO "relationships" VALUES (25,10,33,5,E'2010-01-04 16:29:30',E'2010-01-04 16:29:30');
INSERT INTO "relationships" VALUES (26,10,29,5,E'2010-01-04 16:29:53',E'2010-01-04 16:29:53');
INSERT INTO "relationships" VALUES (27,1,4,8,E'2010-01-08 15:41:55',E'2010-01-08 15:41:55');
INSERT INTO "relationships" VALUES (28,32,47,7,E'2010-01-14 14:54:39',E'2010-02-01 11:57:29');
INSERT INTO "relationships" VALUES (29,33,10,13,E'2010-01-18 12:19:08',E'2010-01-18 12:19:08');
INSERT INTO "relationships" VALUES (34,49,10,13,E'2010-01-18 12:25:17',E'2010-01-18 12:25:17');
INSERT INTO "relationships" VALUES (35,50,10,13,E'2010-01-18 12:25:31',E'2010-01-18 12:25:31');
INSERT INTO "relationships" VALUES (36,29,10,13,E'2010-01-18 12:25:40',E'2010-01-18 12:25:40');
INSERT INTO "relationships" VALUES (37,51,10,13,E'2010-01-18 12:25:50',E'2010-01-18 12:25:50');
INSERT INTO "relationships" VALUES (38,52,10,13,E'2010-01-18 12:26:06',E'2010-01-18 12:26:06');
INSERT INTO "relationships" VALUES (39,34,10,13,E'2010-01-18 12:26:17',E'2010-01-18 12:26:17');
INSERT INTO "relationships" VALUES (40,53,10,13,E'2010-01-18 12:26:30',E'2010-01-18 12:26:30');
INSERT INTO "relationships" VALUES (41,54,10,13,E'2010-01-18 12:26:44',E'2010-01-18 12:26:44');
INSERT INTO "relationships" VALUES (42,11,10,13,E'2010-01-18 12:26:59',E'2010-01-18 12:26:59');
INSERT INTO "relationships" VALUES (43,55,10,13,E'2010-01-18 12:27:10',E'2010-01-18 12:27:10');
INSERT INTO "relationships" VALUES (44,50,30,3,E'2010-01-18 12:28:12',E'2010-01-18 12:28:12');
INSERT INTO "relationships" VALUES (45,29,30,3,E'2010-01-18 12:28:22',E'2010-01-18 12:28:22');
INSERT INTO "relationships" VALUES (46,37,11,14,E'2010-01-18 12:30:59',E'2010-01-18 12:30:59');
INSERT INTO "relationships" VALUES (47,3,11,14,E'2010-01-18 12:31:12',E'2010-01-18 12:31:12');
INSERT INTO "relationships" VALUES (48,12,11,14,E'2010-01-18 12:34:04',E'2010-01-18 12:34:04');
INSERT INTO "relationships" VALUES (49,30,29,14,E'2010-01-18 12:51:20',E'2010-01-18 12:51:20');
INSERT INTO "relationships" VALUES (50,46,29,14,E'2010-01-18 12:51:34',E'2010-01-18 12:51:34');
INSERT INTO "relationships" VALUES (52,47,26,10,E'2010-01-18 15:20:34',E'2010-01-18 15:20:46');
INSERT INTO "relationships" VALUES (55,54,37,3,E'2010-01-20 10:07:26',E'2010-01-20 10:07:26');
INSERT INTO "relationships" VALUES (56,11,37,3,E'2010-01-20 10:07:42',E'2010-01-20 10:07:42');
INSERT INTO "relationships" VALUES (57,31,10,7,E'2010-01-26 12:33:22',E'2010-01-26 12:33:22');
INSERT INTO "relationships" VALUES (58,31,33,7,E'2010-01-26 12:33:51',E'2010-01-26 12:33:51');
INSERT INTO "relationships" VALUES (59,31,49,7,E'2010-01-26 12:34:20',E'2010-01-26 12:34:20');
INSERT INTO "relationships" VALUES (60,31,50,7,E'2010-01-26 12:34:45',E'2010-01-26 12:34:45');
INSERT INTO "relationships" VALUES (61,31,29,7,E'2010-01-26 12:35:06',E'2010-01-26 12:35:06');
INSERT INTO "relationships" VALUES (62,31,51,7,E'2010-01-26 12:35:26',E'2010-01-26 12:35:26');
INSERT INTO "relationships" VALUES (63,31,52,7,E'2010-01-26 12:35:50',E'2010-01-26 12:35:50');
INSERT INTO "relationships" VALUES (64,31,53,7,E'2010-01-26 12:36:25',E'2010-01-26 12:36:25');
INSERT INTO "relationships" VALUES (65,31,54,7,E'2010-01-26 12:37:13',E'2010-01-26 12:37:13');
INSERT INTO "relationships" VALUES (66,37,54,14,E'2010-01-26 12:37:23',E'2010-01-26 12:37:23');
INSERT INTO "relationships" VALUES (67,31,11,7,E'2010-01-26 12:37:56',E'2010-01-26 12:37:56');
INSERT INTO "relationships" VALUES (68,31,55,7,E'2010-01-26 12:38:14',E'2010-01-26 12:38:14');
INSERT INTO "relationships" VALUES (69,30,50,14,E'2010-01-26 12:38:37',E'2010-01-26 12:38:37');
INSERT INTO "relationships" VALUES (71,23,21,7,E'2010-02-01 11:56:59',E'2010-02-01 11:56:59');
INSERT INTO "relationships" VALUES (72,32,48,7,E'2010-02-01 11:57:51',E'2010-02-01 11:57:51');
INSERT INTO "relationships" VALUES (73,43,32,17,E'2010-02-01 15:08:43',E'2010-02-01 15:08:43');
INSERT INTO "relationships" VALUES (74,47,32,17,E'2010-02-01 15:09:03',E'2010-02-01 15:09:03');
INSERT INTO "relationships" VALUES (75,48,32,17,E'2010-02-01 15:09:14',E'2010-02-01 15:09:14');
INSERT INTO "relationships" VALUES (76,36,32,17,E'2010-02-01 15:09:26',E'2010-02-01 15:09:26');
INSERT INTO "relationships" VALUES (77,19,23,17,E'2010-02-01 15:10:29',E'2010-02-01 15:10:29');
INSERT INTO "relationships" VALUES (78,20,23,17,E'2010-02-01 15:10:38',E'2010-02-01 15:10:38');
INSERT INTO "relationships" VALUES (79,21,23,17,E'2010-02-01 15:10:46',E'2010-02-01 15:10:46');
INSERT INTO "relationships" VALUES (80,10,31,17,E'2010-02-01 15:13:39',E'2010-02-01 15:13:39');
INSERT INTO "relationships" VALUES (81,29,46,3,E'2010-02-01 15:57:20',E'2010-02-01 15:57:20');
INSERT INTO "relationships" VALUES (82,54,38,3,E'2010-02-01 15:58:25',E'2010-02-01 15:58:25');
INSERT INTO "relationships" VALUES (83,11,38,3,E'2010-02-01 15:58:41',E'2010-02-01 15:58:41');
INSERT INTO "relationships" VALUES (84,11,12,3,E'2010-02-01 15:59:48',E'2010-02-01 15:59:48');
INSERT INTO "relationships" VALUES (85,1,2,1,E'2010-02-01 16:07:34',E'2010-02-01 16:07:34');

/*!40000 ALTER TABLE relationships ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE INDEX "relationships_relation_id_idx" ON "relationships" USING btree ("relation_id");
CREATE INDEX "relationships_character_id_idx" ON "relationships" USING btree ("character_id");
CREATE INDEX "relationships_relationship_type_id_idx" ON "relationships" USING btree ("relationship_type_id");

--
-- Table structure for table schema_migrations
--

DROP TABLE "schema_migrations" CASCADE\g
CREATE TABLE  "schema_migrations" (
   "version"   varchar(255) NOT NULL, 
 unique ("version") 
)   ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE schema_migrations DISABLE KEYS */;

--
-- Dumping data for table schema_migrations
--

INSERT INTO "schema_migrations" VALUES (E'20091026100000');
INSERT INTO "schema_migrations" VALUES (E'20091026105109');
INSERT INTO "schema_migrations" VALUES (E'20091026105121');
INSERT INTO "schema_migrations" VALUES (E'20091026105345');
INSERT INTO "schema_migrations" VALUES (E'20091026105350');
INSERT INTO "schema_migrations" VALUES (E'20091026105357');
INSERT INTO "schema_migrations" VALUES (E'20091026105401');
INSERT INTO "schema_migrations" VALUES (E'20091026105405');
INSERT INTO "schema_migrations" VALUES (E'20091026105409');
INSERT INTO "schema_migrations" VALUES (E'20091026105412');
INSERT INTO "schema_migrations" VALUES (E'20091026105433');
INSERT INTO "schema_migrations" VALUES (E'20091026105438');
INSERT INTO "schema_migrations" VALUES (E'20091026105443');
INSERT INTO "schema_migrations" VALUES (E'20091028113014');
INSERT INTO "schema_migrations" VALUES (E'20091028113044');
INSERT INTO "schema_migrations" VALUES (E'20091104150433');
INSERT INTO "schema_migrations" VALUES (E'20091109110251');
INSERT INTO "schema_migrations" VALUES (E'20091109112139');
INSERT INTO "schema_migrations" VALUES (E'20091109140145');
INSERT INTO "schema_migrations" VALUES (E'20091109154833');
INSERT INTO "schema_migrations" VALUES (E'20091117155305');
INSERT INTO "schema_migrations" VALUES (E'20091117160135');
INSERT INTO "schema_migrations" VALUES (E'20091117165121');
INSERT INTO "schema_migrations" VALUES (E'20091117165129');
INSERT INTO "schema_migrations" VALUES (E'20091117165136');
INSERT INTO "schema_migrations" VALUES (E'20091117165145');
INSERT INTO "schema_migrations" VALUES (E'20091119102026');
INSERT INTO "schema_migrations" VALUES (E'20091124115318');
INSERT INTO "schema_migrations" VALUES (E'20091124164836');
INSERT INTO "schema_migrations" VALUES (E'20091126121548');
INSERT INTO "schema_migrations" VALUES (E'20091127152244');
INSERT INTO "schema_migrations" VALUES (E'20091127153130');
INSERT INTO "schema_migrations" VALUES (E'20091204164133');
INSERT INTO "schema_migrations" VALUES (E'20091204164233');
INSERT INTO "schema_migrations" VALUES (E'20091208141844');
INSERT INTO "schema_migrations" VALUES (E'20091209145357');
INSERT INTO "schema_migrations" VALUES (E'20091210143116');
INSERT INTO "schema_migrations" VALUES (E'20091210164048');
INSERT INTO "schema_migrations" VALUES (E'20091211121454');
INSERT INTO "schema_migrations" VALUES (E'20091211155141');
INSERT INTO "schema_migrations" VALUES (E'20091214113502');
INSERT INTO "schema_migrations" VALUES (E'20091216115333');
INSERT INTO "schema_migrations" VALUES (E'20091222130115');
INSERT INTO "schema_migrations" VALUES (E'20091223115803');
INSERT INTO "schema_migrations" VALUES (E'20091226180434');
INSERT INTO "schema_migrations" VALUES (E'20100104140310');
INSERT INTO "schema_migrations" VALUES (E'20100104221744');
INSERT INTO "schema_migrations" VALUES (E'20100107124226');
INSERT INTO "schema_migrations" VALUES (E'20100107135911');
INSERT INTO "schema_migrations" VALUES (E'20100107153920');
INSERT INTO "schema_migrations" VALUES (E'20100107173008');
INSERT INTO "schema_migrations" VALUES (E'20100108140341');
INSERT INTO "schema_migrations" VALUES (E'20100111084741');
INSERT INTO "schema_migrations" VALUES (E'20100111170155');
INSERT INTO "schema_migrations" VALUES (E'20100113122825');
INSERT INTO "schema_migrations" VALUES (E'20100113151938');
INSERT INTO "schema_migrations" VALUES (E'20100113155811');
INSERT INTO "schema_migrations" VALUES (E'20100115104911');
INSERT INTO "schema_migrations" VALUES (E'20100119115656');
INSERT INTO "schema_migrations" VALUES (E'20100121115516');
INSERT INTO "schema_migrations" VALUES (E'20100122105142');
INSERT INTO "schema_migrations" VALUES (E'20100122111451');
INSERT INTO "schema_migrations" VALUES (E'20100122121748');
INSERT INTO "schema_migrations" VALUES (E'20100125144128');
INSERT INTO "schema_migrations" VALUES (E'20100127153810');
INSERT INTO "schema_migrations" VALUES (E'20100128113319');
INSERT INTO "schema_migrations" VALUES (E'20100128113610');

/*!40000 ALTER TABLE schema_migrations ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

--
-- Table structure for table stories
--

DROP TABLE "stories" CASCADE\g
DROP SEQUENCE "stories_id_seq" CASCADE ;

CREATE SEQUENCE "stories_id_seq"  START WITH 9 ;

CREATE TABLE  "stories" (
   "id" integer DEFAULT nextval('"stories_id_seq"') NOT NULL,
   "url_key"   varchar(255) NOT NULL, 
   "title"   varchar(255) default NULL, 
   "short_synopsis"   varchar(255) default NULL, 
   "long_synopsis"   text, 
   "imgs_file_name"   varchar(255) default NULL, 
   "imgs_content_type"   varchar(255) default NULL, 
   "imgs_file_size"   int default NULL, 
   "imgs_updated_at"   timestamp without time zone default NULL, 
   "created_at"   timestamp without time zone default NULL, 
   "updated_at"   timestamp without time zone default NULL, 
   "article_image_one_file_name"   varchar(255) default NULL, 
   "article_image_one_content_type"   varchar(255) default NULL, 
   "article_image_one_file_size"   int default NULL, 
   "article_image_one_updated_at"   timestamp without time zone default NULL, 
   "article_image_two_file_name"   varchar(255) default NULL, 
   "article_image_two_content_type"   varchar(255) default NULL, 
   "article_image_two_file_size"   int default NULL, 
   "article_image_two_updated_at"   timestamp without time zone default NULL, 
   "article_image_three_file_name"   varchar(255) default NULL, 
   "article_image_three_content_type"   varchar(255) default NULL, 
   "article_image_three_file_size"   int default NULL, 
   "article_image_three_updated_at"   timestamp without time zone default NULL, 
   "article_image_four_file_name"   varchar(255) default NULL, 
   "article_image_four_content_type"   varchar(255) default NULL, 
   "article_image_four_file_size"   int default NULL, 
   "article_image_four_updated_at"   timestamp without time zone default NULL, 
   "article"   text, 
   "position"   int default NULL, 
   primary key ("id")
)    ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE stories DISABLE KEYS */;

--
-- Dumping data for table stories
--

INSERT INTO "stories" VALUES (1,E'b6p2',E'Genesis of the Daleks',E'The Time Lords send the Doctor to Skaro on a mission to prevent the creation of the Daleks.',E'The [Time Lords](/groups/d325) transport the [Doctor](/characters/wx3n), [Sarah](/characters/9pmq) and [Harry](/characters/wn54) to [Skaro](/places/6mn8) at a point in time just before the birth of the [Daleks](/groups/284h). The Doctor\'s mission is to change history and prevent the creation of his deadliest enemies.  \r\n\r\nCrippled Kaled scientist, [Davros](/characters/b963) is willing to go to any lengths to secure the future of his Dalek creations - even if he has to collude with the enemy and commit genocide. With time running out, the Doctor ponders if he has the right to wipe out an entire race, even one as evil as the Daleks.\r\n',E'genesis.jpg',E'image/jpeg',78866,E'2010-01-05 11:48:40',E'2009-12-21 11:47:10',E'2010-01-29 11:18:59',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,E'The [Time Lords](http://myth.rad0.net/groups/d325) transport the [Doctor](http://myth.rad0.net/characters/wx3n), [Sarah](http://myth.rad0.net/characters/9pmq) and [Harry](http://myth.rad0.net/characters/wn54) to [Skaro](http://myth.rad0.net/places/6mn8) at a point in time just before the birth of the [Daleks](http://myth.rad0.net/groups/284h). The Doctor\'s mission is to change history and prevent the creation of his deadliest enemies.  \r\n\r\nA centuries long war between the Kaleds and the Thals rages across Skaro and the time travellers are caught in the middle\r\n\r\nThe Doctor meets the crippled chief Kaled scientist, [Davros](http://myth.rad0.net/characters/b963). Having deduced that years of radioactive contamination and chemical warfare will eventually lead to the mutation of the Kaleds into helpless organisms, Davros has created the Mark 3 Travel Machine. The Doctor recognises this mobile, armoured shell as a prototype Dalek. \r\n\r\nWith the Doctor\'s help, the Kaled government intend to shut down Davros\'s unethical experiments. But Davros is unwilling to give up so easily. Secretly he provides the Thals with the formula that will allow their rocket to penetrate the protective dome over the Kaled city and seals the fate of his own people. \r\n\r\nThe Thal\'s launch their deadly rocket, completely destroying the Kaled city. Davros takes the opportunity to release his Daleks who ruthlessly crush any resistance from the Thals and the surviving Kaleds. \r\n\r\nUnable to bring himself to completely destroy the Daleks, the Doctor seals them in their bunker along with their creator. Too late, Davros realises that the Daleks consider even him expendable and they exterminate him.\r\n\r\nThe Doctor, Sarah and Harry depart Skaro by using a Time Lord [time ring](http://myth.rad0.net/things/b2qv). Although the Daleks have survived, the Doctor believes that he may have set back their development and that out of the destruction and terror that they will cause, something good will come.',1);
INSERT INTO "stories" VALUES (2,E'9325',E'Remembrance of the Daleks',E'In London in 1963, Daleks fight Daleks as they search for the all-powerful Hand of Omega.',E'The [TARDIS](/things/n84h) takes the [Doctor](/characters/cgf9) and his new companion, [Ace](/characters/rjbd) to [London](/places/wdxm) in 1963. The Doctor is anxious to retrieve the [Hand of Omega](/things/wpmq), a piece of ancient [Time Lord](/groups/d325) technology that he left there many years ago. \r\n\r\nUnfortunately, the [Renegade](/groups/684h) and [Imperial Dalek](/groups/d5vr) factions are also looking for the Hand. A Dalek civil war erupts on the streets of East London with the Doctor,  Ace and their human friends caught in the deadly cross-fire.',E'remembrance.jpg',E'image/jpeg',70245,E'2010-01-05 11:35:12',E'2009-12-21 12:46:39',E'2010-01-29 11:31:33',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,E'The [Doctor](http://myth.rad0.net/characters/cgf9) takes his new companion, [Ace](http://myth.rad0.net/characters/rjbd) to [Shoreditch](http://myth.rad0.net/places/zb9x), [London](http://myth.rad0.net/places/wdxm) in 1963. The Doctor previously visited the area in his first incarnation but was forced to depart in a hurry and left behind a [Time Lord](http://myth.rad0.net/groups/d325) stellar manipulator known as [The Hand of Omega](http://myth.rad0.net/things/wpmq). Now he is finally returning to collect the Hand, but it has already attracted the attention of two opposing [Dalek](http://myth.rad0.net/groups/284h) factions – the grey [Renegade Daleks](http://myth.rad0.net/groups/684h) and the gold [Imperial Daleks](http://myth.rad0.net/groups/d5vr).\r\n\r\nThe Dalek activity has already attracted the attention of the locals. The Doctor soon joins forces with Group Captain Gilmore who leads a military force against the alien invaders and is supported by his scientific advisor, Rachel Jensen and her assistant Alison Williams.\r\n \r\nThe Doctor retrieves the coffin-like Hand of Omega from its hiding place at an undertakers. He then buries it in a cemetery. But the Renegade Dalek’s agents have been watching and soon retrieve the Hand for themselves. \r\n\r\nPreparing to return to the future with the Hand, the Renegade Daleks, lead by the Black Dalek, are attacked by the Imperial Daleks. After a fierce battle, the Imperial Daleks are able to secure the Hand and return with it to their orbiting [mothership](http://myth.rad0.net/places/rwdp). \r\n\r\nThe Doctor makes contact with the Imperial Dalek Emperor who reveals himself to actually be the Dalek creator, [Davros](http://myth.rad0.net/characters/b963). Goaded by the Doctor, Davros launches the Hand of Omega with the intention of turning the sun of the Dalek home world, [Skaro](http://myth.rad0.net/places/6mn8) into a source of unlimited energy for time travel. But the Doctor has tricked Davros and has already pre-programmed the Hand to destroy Skaro.  As the Hand then homes in on the Imperial Dalek mothership, Davros quickly escapes before the ship and the Daleks are destroyed.\r\n\r\nThe Black Dalek is the only survivor of the Renegade force. By convincing it that it is completely alone, the Doctor is able to talk it into self-destructing.\r\n',2);
INSERT INTO "stories" VALUES (3,E'cjbd',E'The Stolen Earth / Journey\'s End',E'Davros and the Daleks intend to use the power of 27 stolen planets to destroy reality!',E'When the [Doctor](/characters/m2qv) and [Donna](/characters/2n54) land on present day [Earth](/places/fx3n), they are amazed when the planet literally vanishes from beneath their feet.  In an attempt to solve the mystery, they travel to the [Shadow Proclamation](/places/nhgb) where they learn that the Earth is just one of twenty-seven planets to go missing. \r\n\r\nTracking the Earth’s trail to the [Medusa Cascade](/places/w325), the Doctor discovers that [Davros](/characters/b963) and a new race of [Daleks](/groups/284h) are responsible. Together the twenty-seven planets form a vast energy source which will power the devastating reality bomb.\r\n\r\nA reunion with Rose Tyler is cut short when the Doctor is shot by a Dalek. Managing to prevent a full regeneration, the excess e energy triggers the creation of half-human version of the Doctor.  Donna also becomes half Time Lord and is able to defeat the Daleks. \r\n',E'stolenearth.jpg',E'image/jpeg',111547,E'2010-01-13 15:58:53',E'2009-12-21 15:54:38',E'2010-01-29 11:12:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,E'When the [Earth](http://myth.rad0.net/places/fx3n) literraly vanishes from beneath their feet, the [Doctor](http://myth.rad0.net/characters/m2qv) and [Donna](http://myth.rad0.net/characters/2n54) travel to the [Shadow Proclomation](http://myth.rad0.net/groups/j6p2). There  the Doctor learns that the Earth is just one of twenty-seven planets to have gone missing.  He deduces that, together, these planets will form a massive power-house.  But for what?\r\n\r\nThe Doctor and Donna follow the Earth’s trail to the [Medusa Cascade](http://myth.rad0.net/places/w325), but there is not trace of the missing planet. \r\n\r\nThe twenty-seven planets have been stolen by the [Daleks](http://myth.rad0.net/groups/284h) who have invaded the Earth. The Doctor’s friends combine their resources send a signal to the [TARDIS](http://myth.rad0.net/things/n84h).\r\n\r\nReceiving the signal, the Doctor is able to home in on the Earth which, along with the other planets, have been hidden one second out of sync with the rest of the Universe. The signal also attracts the attention of the Dalek creator, [Davros](http://myth.rad0.net/characters/b963) who  has created this new race of Daleks. \r\n\r\nAbout to be reunited with [Rose](http://myth.rad0.net/characters/rfw6), the Docor is shot by a Dalek which triggers his regenearation. However, the Doctor is able to heal himself and divert the remaining regenerative energy into his [severed hand](http://myth.rad0.net/things/vb9x) in a jar in the TARDIS.\r\n\r\nThe TARDIS is abducted by the Daleks and the Doctor is taken prisoner.  Trapped in the TARDIS, Donna is compelled to combine her life-force with the Doctor’s hand, triggering it’s growth into a duplicate, [half-human Doctor](http://myth.rad0.net/characters/d2qv). In return, Donna becomes half [Time Lord](http://myth.rad0.net/groups/d325).\r\n\r\nDavros and the Daleks prepare to detonate the deadly reality bomb, powered by the twenty-seven planets.  But  Donna  is able to use her Time Lord mind to deactivate the weapon.  The vengeful half-human Doctor finishes the job by completely destroying the Daleks. \r\n\r\nRose and the half-human Doctor are returned to the alternate universe to spend their lives together. \r\n\r\nDonna’s brain is unable to cope with her new Time Lord mind. To save her life, the the Doctor has no choice but to wipe her memory of her time with him in the TARDIS and returns her to her old life on Earth.\r\n\r\n',4);
INSERT INTO "stories" VALUES (4,E'jx3n',E'Blink',E'Sally Sparrow receives messages from the past, warning her of the threat of the Weeping Angels.',E'When [Sally Sparrow](/characters/jfw6) breaks into an old abandoned house and discovers a message to her, written in 1969, from someone called the [Doctor](/characters/m2qv), it is only the beginning of a series of bizarre events. People are vanishing, and stone statues appear to be moving.  \r\n\r\nAs Sally realises that the missing people have been sent back in time, she struggles to understand the meaning of the Doctor’s cryptic messages from the past.  Without her help, the Doctor will remain trapped in 1969, cut off from his [TARDIS](/things/n84h), a victim of the [Weeping Angels](/groups/xpmq). \r\n',E'blink.jpg',E'image/jpeg',82571,E'2010-01-07 15:19:08',E'2010-01-04 16:33:55',E'2010-01-29 11:38:06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,E'[Sally Sparrow](http://myth.rad0.net/characters/jfw6) breaks into the [old house](http://myth.rad0.net/places/96p2) at Wester Drumlins and receives a message from  the past. It is from the [Doctor](http://myth.rad0.net/characters/m2qv) that warns her to beware of the [Weeping Angels](http://myth.rad0.net/groups/xpmq). Around the house and gardens  are what appear to be statues of Angels covering their faces. How can they possibly be a threat?\r\n\r\nReturning to the house the following day, Sally’s friend, [Kathy](http://myth.rad0.net/characters/fb9x), accompanies her but disappears. A letter from Kathy claims she was thrown back in time to 1920 by the Angels. \r\n\r\nKathy’s brother, [Larry](http://myth.rad0.net/characters/w963) tells Sally about a [video](http://myth.rad0.net/things/hdxm) of the Doctor holding one side of a conversation  that has been hidden on seventeen DVDs.  Larry gives Sally a [list]((http://myth.rad0.net/things/54rg)) of the DVD titles.\r\n\r\nSally goes to the police to report Kathy’s disappearance, but [D.I. Billy Shipton](http://myth.rad0.net/characters/9dxm) reveals that many people have gone missing at Wester Drumlins. He shows Sally the abandoned cars that were found there and also a police box. \r\n\r\nThen Billy goes missing himself and Sally is called to the hospital to visit a dying patient. It is Billy, but over thirty-five years older. Like Kathy, Billy was also sent back in time. He met the Doctor in 1969 who gave Billy a message to pass on to Sally: ‘look at the list’.\r\n\r\nThe seventeen DVDs with the Doctor’s hidden message are all the DVDs that Sally owns and she realises that the message is for her. Back at the old house, Larry and Sally learn from the Doctor’s video that the Angels can only move when they are not being looked at. \r\n\r\nChased by the Angels into the cellar, Sally and Larry discover the [TARDIS](http://myth.rad0.net/things/n84h) there. Managing to gain entry just in time, Sally and Larry trigger its departure to 1969. The ship dematerialises around them, leaving them at the mercy of the angels. But the Angels have looked through the vanishing TARDIS at each other and are permanently turned to stone.\r\n',3);
INSERT INTO "stories" VALUES (5,E'fpmq',E'Planet of the Ood',E'On the Ood-Sphere, the enslaved Ood are beginning to rebel against their human masters.',E'The TARDIS takes the Doctor and Donna to the Ood-Sphere, home of the Ood and also the base for Ood Operations who process and sell the Ood as servants across four galaxies. Chief Executive, Klineman Helpman is worried. After years of servitude, the  Ood are beginning to strike back at  their masters.\r\n\r\nThe Doctor and Donna set out to unearth the Ood’s secret which Helpman and his family have deliberately supressed for Centuries.  But their discovery of the truth may be too late as a full scale Ood rebellion erupts around them.\r\n',E'Picture_9.png',E'image/png',397382,E'2010-01-05 11:07:50',E'2010-01-04 16:34:57',E'2010-01-29 10:11:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,E'',5);
INSERT INTO "stories" VALUES (6,E'cb9x',E'The Last Great Time War',E'The Daleks and the Time Lords battle it out in a devastating war that neither will win.',E'When the [Time Lords](/groups/d325) foresaw a time when the [Daleks](/groups/284h) would become the dominant life form in the Universe they decided to change history and avert or alter the Dalek\'s creation. Their plan was only partially successful, but their actions provoked the Daleks into making a counter-attack. Eventually the conflict escalated into a full scale Time War when the Daleks launched a massive battle fleet into the time vortex. \r\n\r\nThe war raged across all of space and time and whole worlds and species were wiped out. The [Doctor](/characters/3mn8) fought on the front lines, leading the Time Lords into battle against the Daleks. Finally though, it was the Doctor who would bring the war to an end. Seeing that the Time Lords themselves, ruled by the legendary Rassilon, were prepared to employ the Ultimate Sanction, the Doctor destroyed both the Daleks and the Time Lords using The Moment. The entire Time War became time locked, which meant that it was impossible to travel back in time to revisit or change the events. \r\n\r\nThe Doctor believed that he was the only Time Lord to survive the war, but his one-time friend, The Master also managed to survive by hiding in human form at the end of time.\r\n',E'timewar.jpg',E'image/jpeg',74226,E'2010-01-07 15:23:19',E'2010-01-05 16:08:24',E'2010-01-29 10:11:09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,E'',6);
INSERT INTO "stories" VALUES (7,E'fmn8',E'The Dalek Invasion of Earth',E'The Daleks plan to remove the Earth’s core so that they can pilot it anywhere in the Universe.',E'The [TARDIS](/things/n84h) arrives in a devastated and deserted [London](/places/wdxm) in the 22nd Century. The [Daleks](/groups/284h) have invaded and conquered the [Earth](/places/fx3n), enslaving the population, turning many into zombie-like Robomen.\r\n\r\nCut off from the TARDIS, the [Doctor](/characters/4zjw) and Ian are captured by the Daleks and imprisoned on one of their flying saucers.  Barbara and Susan join forces with human freedom fighters who are determined to take back their world.\r\n\r\nThe Dalek saucer takes the Doctor and Ian to the centre of Dalek operations in Bedfordshire.  There the Doctor discovers the Dalek’s incredible plan to mine out the Earth’s core and replace it with a device that will allow them to pilot the entire planet through space like a giant starship.\r\n',E'invasion.jpg',E'image/jpeg',73978,E'2010-01-19 09:48:25',E'2010-01-14 10:39:13',E'2010-01-29 10:11:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,E'',8);
INSERT INTO "stories" VALUES (8,E'xvcz',E'Daleks in Manhattan / Evolution of the Daleks',E'In 1930\'s New York, the Cult of Skaro are creating a new race of humanoid Daleks.',E'The TARDIS takes the Doctor and Martha to New York in 1930 where the Empire State Building is under construction.  There they discover that the Daleks are abducting the homeless. The Dalek leader, Sec, becomes the first in a new race of Dalek/Human hybrids. \r\n\r\nBelieving Sec to be no longer human, Dalek Caan and the other two Daleks rebel against Caan and exterminate him.  The Daleks use a gamma lightening strike to transform their prisoners into human Daleks. But the Doctor has introduced his own DNA into the hybrids and they rebel against the Daleks.  Dalek Caan escapes using emergency time shift.\r\n',E'manhattan.jpg',E'image/jpeg',66297,E'2010-01-19 09:53:29',E'2010-01-15 16:25:02',E'2010-01-29 10:11:09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,E'The TARDIS takes the Doctor and Marth to New York in 1930 where the Empire State Building is under construction.  There the Doctor and Martha meet Solomon,  the leader of of the community  of the homeless. Solomon reveals that people have been going missing at night.\r\n\r\nAt the Empire State Building, Mr Diagoras is overseeing construction but is secretly in the employ of the four Daleks who make up the Cult of Skaro. The Daleks are responsible for the abductions, some of whom are surgically altered into pig-like slaves while the others are reserved for ‘the final experiment’.\r\nDiagoras recruits workers, including the Doctor and Martha. Taken to the sewers,  the Doctor’s group are chased by the pig slaves but manage to escape.  \r\n\r\nDespite the objections of fellow Daleks, Caan, Thay and Jast, Dalek Sec is determined to become the first of a new race of Dalek/Human hybrids. To this end, Sec absorbs Diagoras and metamorphoses into the first human Dalek.\r\nSec’s final experiment is to transform the captive humans into Daleks by using the energy from a gamma strike which will be conducted from the mast of the Empire State Building. Dalek Caan and the other two Daleks exterminate Sec, believing that he is no longer a true Dalek.  They alter the experiment so that the humans will become totally Dalek. \r\n\r\nDespite his efforts, the Doctor is unable to prevent the gamma strike but manages to introduce his own DNA into the new human Daleks. Refusing to take orders from their Dalek masters , the human Daleks rebel, destroying Jast and Thay. Dalek Caan is the only surviving Dalek and escapes using emergency time shift.\r\n',7);

/*!40000 ALTER TABLE stories ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE INDEX "stories_url_key_idx" ON "stories" USING btree ("url_key");

--
-- Table structure for table story_parts
--

DROP TABLE "story_parts" CASCADE\g
DROP SEQUENCE "story_parts_id_seq" CASCADE ;

CREATE SEQUENCE "story_parts_id_seq"  START WITH 61 ;

CREATE TABLE  "story_parts" (
   "id" integer DEFAULT nextval('"story_parts_id_seq"') NOT NULL,
   "story_id"   int default NULL, 
   "event_id"   int default NULL, 
   "long_synopsis"   text, 
   "position"   float default NULL, 
   primary key ("id")
)    ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE story_parts DISABLE KEYS */;

--
-- Dumping data for table story_parts
--

INSERT INTO "story_parts" VALUES (1,1,13,E'',NULL);
INSERT INTO "story_parts" VALUES (2,1,14,E'',NULL);
INSERT INTO "story_parts" VALUES (3,1,15,E'',NULL);
INSERT INTO "story_parts" VALUES (4,1,16,E'',NULL);
INSERT INTO "story_parts" VALUES (5,1,17,E'',NULL);
INSERT INTO "story_parts" VALUES (6,1,18,E'',NULL);
INSERT INTO "story_parts" VALUES (7,1,19,E'',NULL);
INSERT INTO "story_parts" VALUES (8,2,20,E'Test.',NULL);
INSERT INTO "story_parts" VALUES (9,2,21,E'',NULL);
INSERT INTO "story_parts" VALUES (10,2,22,E'',NULL);
INSERT INTO "story_parts" VALUES (11,2,23,E'',NULL);
INSERT INTO "story_parts" VALUES (12,2,24,E'',NULL);
INSERT INTO "story_parts" VALUES (13,2,25,E'',NULL);
INSERT INTO "story_parts" VALUES (14,2,26,E'',NULL);
INSERT INTO "story_parts" VALUES (15,2,27,E'',NULL);
INSERT INTO "story_parts" VALUES (16,2,28,E'',NULL);
INSERT INTO "story_parts" VALUES (17,2,29,E'',NULL);
INSERT INTO "story_parts" VALUES (18,3,30,E'',NULL);
INSERT INTO "story_parts" VALUES (19,3,31,E'',NULL);
INSERT INTO "story_parts" VALUES (20,3,32,E'',NULL);
INSERT INTO "story_parts" VALUES (21,3,33,E'',NULL);
INSERT INTO "story_parts" VALUES (22,3,34,E'',NULL);
INSERT INTO "story_parts" VALUES (23,3,35,E'',NULL);
INSERT INTO "story_parts" VALUES (24,3,36,E'',NULL);
INSERT INTO "story_parts" VALUES (25,3,37,E'',NULL);
INSERT INTO "story_parts" VALUES (26,3,38,E'',NULL);
INSERT INTO "story_parts" VALUES (27,3,39,E'',NULL);
INSERT INTO "story_parts" VALUES (28,3,40,E'',NULL);
INSERT INTO "story_parts" VALUES (29,3,41,E'',NULL);
INSERT INTO "story_parts" VALUES (30,3,42,E'',NULL);
INSERT INTO "story_parts" VALUES (31,3,43,E'',NULL);
INSERT INTO "story_parts" VALUES (32,3,44,E'',NULL);
INSERT INTO "story_parts" VALUES (33,5,45,E'',NULL);
INSERT INTO "story_parts" VALUES (34,5,47,E'',NULL);
INSERT INTO "story_parts" VALUES (35,5,46,E'',NULL);
INSERT INTO "story_parts" VALUES (36,5,49,E'',NULL);
INSERT INTO "story_parts" VALUES (37,5,48,E'',NULL);
INSERT INTO "story_parts" VALUES (38,5,50,E'',NULL);
INSERT INTO "story_parts" VALUES (39,5,51,E'',NULL);
INSERT INTO "story_parts" VALUES (40,5,52,E'',NULL);
INSERT INTO "story_parts" VALUES (41,5,53,E'',NULL);
INSERT INTO "story_parts" VALUES (43,4,56,E'',0.193548);
INSERT INTO "story_parts" VALUES (44,4,57,E'',0.258065);
INSERT INTO "story_parts" VALUES (45,4,58,E'',0.322581);
INSERT INTO "story_parts" VALUES (46,4,59,E'',0.387097);
INSERT INTO "story_parts" VALUES (47,4,60,E'',0.451613);
INSERT INTO "story_parts" VALUES (48,4,61,E'',0.516129);
INSERT INTO "story_parts" VALUES (49,4,62,E'',0.580645);
INSERT INTO "story_parts" VALUES (50,4,63,E'',0.645161);
INSERT INTO "story_parts" VALUES (51,4,64,E'',0.677419);
INSERT INTO "story_parts" VALUES (52,4,65,E'',0.709677);
INSERT INTO "story_parts" VALUES (53,4,66,E'',0.774194);
INSERT INTO "story_parts" VALUES (54,4,67,E'',0.83871);
INSERT INTO "story_parts" VALUES (55,4,68,E'',0.903226);
INSERT INTO "story_parts" VALUES (56,4,69,E'',0.967742);
INSERT INTO "story_parts" VALUES (57,6,13,E'',0.4);
INSERT INTO "story_parts" VALUES (58,4,70,E'',0.548387);
INSERT INTO "story_parts" VALUES (59,6,33,E'',0.8);
INSERT INTO "story_parts" VALUES (60,6,28,E'',0.6);

/*!40000 ALTER TABLE story_parts ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE INDEX "story_parts_story_id_idx" ON "story_parts" USING btree ("story_id");
CREATE INDEX "story_parts_event_id_idx" ON "story_parts" USING btree ("event_id");

--
-- Table structure for table typus_users
--

DROP TABLE "typus_users" CASCADE\g
DROP SEQUENCE "typus_users_id_seq" CASCADE ;

CREATE SEQUENCE "typus_users_id_seq"  START WITH 9 ;

CREATE TABLE  "typus_users" (
   "id" integer DEFAULT nextval('"typus_users_id_seq"') NOT NULL,
   "first_name"   varchar(255) NOT NULL default '', 
   "last_name"   varchar(255) NOT NULL default '', 
   "role"   varchar(255) NOT NULL, 
   "email"   varchar(255) NOT NULL, 
   "status"    smallint default '0', 
   "token"   varchar(255) NOT NULL, 
   "salt"   varchar(255) NOT NULL, 
   "crypted_password"   varchar(255) NOT NULL, 
   "preferences"   varchar(255) default NULL, 
   "created_at"   timestamp without time zone default NULL, 
   "updated_at"   timestamp without time zone default NULL, 
   primary key ("id")
)    ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE typus_users DISABLE KEYS */;

--
-- Dumping data for table typus_users
--

INSERT INTO "typus_users" VALUES (1,E'Duncan',E'Robertson',E'admin',E'duncan.robertson@bbc.co.uk',1,E'22531abcdf8b',E'f742d15ced014fdb707d394be8269afeb22f3f37',E'afa22c79ac5fb73cfa2f583d7164771b620b68c3',E'--- \n:locale: en\n',E'2009-11-17 17:11:44',E'2010-01-11 10:46:34');
INSERT INTO "typus_users" VALUES (2,E'Tristan',E'Ferne',E'editor',E'tristan.ferne@bbc.co.uk',1,E'f639939af9d6',E'588291eb3143216032818d877b5213d68c442f48',E'0cdef365722b6dd29eeeaa84b8ccbfe9ec2046fe',E'--- \n:locale: en\n',E'2009-11-19 10:58:15',E'2009-11-23 11:38:08');
INSERT INTO "typus_users" VALUES (3,E'Theo',E'Jones',E'editor',E'theo.jones@bbc.co.uk',1,E'12f82def64ca',E'f0add29fd108ce226bf55246b96d609a0114aa46',E'8dd7ce0818585dd0154c6cea68fcc8959416e855',E'--- \n:locale: en\n',E'2009-11-19 10:58:42',E'2009-11-23 11:38:15');
INSERT INTO "typus_users" VALUES (4,E'Chris',E'Godbert',E'editor',E'chris.godbert@bbc.co.uk',1,E'53eb49bca86c',E'fdc6ac6ad72dbf03de23b4ca672ad1fb5d7b9e77',E'5b7d11c8c00a8dccd52e243481ade32b212ec938',E'--- \n:locale: en\n',E'2009-11-19 10:59:22',E'2009-11-23 11:38:21');
INSERT INTO "typus_users" VALUES (5,E'Paul',E'Rissen',E'editor',E'paul.rissen@bbc.co.uk',1,E'cb0e42f1b9f3',E'a417f54a174f5570057af1416bbe8742d34786cf',E'b6b3e5fe360871bf02e894e74c7ea1449ebee53f',E'--- \n:locale: en\n',E'2009-11-19 10:59:45',E'2009-11-23 11:38:27');
INSERT INTO "typus_users" VALUES (6,E'',E'',E'admin',E'andrew@camelpunch.com',1,E'98853d2a56b7',E'c8471f7a3f4cad9d0172ff5c2e1f6b664ca5bad1',E'f2ae30cd2890a479709d98f9007a49d388f741d2',E'--- \n:locale: :en\n',E'2009-12-22 13:22:40',E'2009-12-22 13:22:40');
INSERT INTO "typus_users" VALUES (7,E'John',E'Ainsworth',E'editor',E'john.ainsworth@noisemonster.com',1,E'aa11c000cd94',E'9851e147c2cac48562a510aef0bc8032093ac2bd',E'0be5d96f1f01bd0fd146beebe0dc04827fadec70',E'--- \n:locale: en\n',E'2009-12-22 14:24:16',E'2009-12-22 14:29:06');
INSERT INTO "typus_users" VALUES (8,E'George',E'Wright',E'admin',E'george.wright@bbc.co.uk',0,E'0d99ece692a8',E'6a249cf8945fb4f66fa7c8a16df2e1cb724f7e2c',E'9dc90ac0a7573b3252f98c041ae1f1190de99b42',E'--- \n:locale: en\n',E'2010-07-02 14:53:47',E'2010-07-02 14:53:47');

/*!40000 ALTER TABLE typus_users ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

--
-- Table structure for table url_keys
--

DROP TABLE "url_keys" CASCADE\g
CREATE TABLE  "url_keys" (
   "count"   int NOT NULL 
)   ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE url_keys DISABLE KEYS */;

--
-- Dumping data for table url_keys
--

INSERT INTO "url_keys" VALUES (201); 
/*!40000 ALTER TABLE url_keys ENABLE KEYS */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

--
-- Table structure for table usages
--

DROP TABLE "usages" CASCADE\g
DROP SEQUENCE "usages_id_seq" CASCADE ;

CREATE SEQUENCE "usages_id_seq"  START WITH 33 ;

CREATE TABLE  "usages" (
   "id" integer DEFAULT nextval('"usages_id_seq"') NOT NULL,
   "event_id"   int default NULL, 
   "artifact_id"   int default NULL, 
   "created_at"   timestamp without time zone default NULL, 
   "updated_at"   timestamp without time zone default NULL, 
   primary key ("id")
)    ;
SET character_set_client = @saved_cs_client;
/*!40000 ALTER TABLE usages DISABLE KEYS */;

--
-- Dumping data for table usages
--

INSERT INTO "usages" VALUES (7,27,10,E'2009-12-21 13:13:49',E'2009-12-21 13:13:49');
INSERT INTO "usages" VALUES (8,28,10,E'2009-12-21 14:28:53',E'2009-12-21 14:28:53');
INSERT INTO "usages" VALUES (9,33,4,E'2009-12-21 16:20:16',E'2009-12-21 16:20:16');
INSERT INTO "usages" VALUES (10,44,4,E'2009-12-21 16:38:36',E'2009-12-21 16:38:36');
INSERT INTO "usages" VALUES (11,45,13,E'2010-01-05 10:37:02',E'2010-01-05 10:37:02');
INSERT INTO "usages" VALUES (12,46,2,E'2010-01-05 10:42:43',E'2010-01-05 10:42:43');
INSERT INTO "usages" VALUES (13,48,9,E'2010-01-05 10:48:52',E'2010-01-05 10:48:52');
INSERT INTO "usages" VALUES (14,50,9,E'2010-01-05 10:54:06',E'2010-01-05 10:54:06');
INSERT INTO "usages" VALUES (15,51,9,E'2010-01-05 11:01:08',E'2010-01-05 11:01:08');
INSERT INTO "usages" VALUES (16,54,4,E'2010-01-05 12:04:12',E'2010-01-05 12:04:12');
INSERT INTO "usages" VALUES (17,57,5,E'2010-01-08 11:20:59',E'2010-01-08 11:20:59');
INSERT INTO "usages" VALUES (19,62,6,E'2010-01-08 11:36:53',E'2010-01-08 11:36:53');
INSERT INTO "usages" VALUES (20,66,15,E'2010-01-08 12:06:51',E'2010-01-08 12:06:51');
INSERT INTO "usages" VALUES (21,67,4,E'2010-01-08 12:10:21',E'2010-01-08 12:10:21');
INSERT INTO "usages" VALUES (22,68,4,E'2010-01-08 12:11:53',E'2010-01-08 12:11:53');
INSERT INTO "usages" VALUES (23,69,6,E'2010-01-08 12:13:32',E'2010-01-08 12:13:32');
INSERT INTO "usages" VALUES (24,19,16,E'2010-01-14 12:11:21',E'2010-01-14 12:11:21');
INSERT INTO "usages" VALUES (25,20,17,E'2010-01-14 13:30:56',E'2010-01-14 13:30:56');
INSERT INTO "usages" VALUES (26,29,10,E'2010-01-15 11:35:57',E'2010-01-15 11:35:57');
INSERT INTO "usages" VALUES (27,36,18,E'2010-01-19 10:58:27',E'2010-01-19 10:58:27');
INSERT INTO "usages" VALUES (28,67,14,E'2010-01-25 13:45:22',E'2010-01-25 13:45:22');
INSERT INTO "usages" VALUES (29,47,13,E'2010-01-29 10:07:34',E'2010-01-29 10:07:34');
INSERT INTO "usages" VALUES (30,49,13,E'2010-01-29 10:08:05',E'2010-01-29 10:08:05');
INSERT INTO "usages" VALUES (31,53,4,E'2010-01-29 10:08:40',E'2010-01-29 10:08:40');
INSERT INTO "usages" VALUES (32,53,13,E'2010-01-29 10:08:54',E'2010-01-29 10:08:54');

/*!40000 ALTER TABLE usages ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
CREATE INDEX "usages_event_id_idx" ON "usages" USING btree ("event_id");
CREATE INDEX "usages_artifact_id_idx" ON "usages" USING btree ("artifact_id");
