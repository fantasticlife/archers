drop table rating_types;
drop table ratings;
drop table url_keys;
drop table collection_items;
drop table collections;
drop table typus_users;
drop table schema_migrations;

alter table characters drop column url_key;
alter table characters drop column imgc_file_name;
alter table characters drop column imgc_img_file_size;
alter table characters drop column imgc_updated_at;
alter table characters drop column imgc_content_type;
alter table characters drop column disposition;
alter table characters drop column time_traveller;
alter table characters change title name varchar(255);
alter table characters add column pid varchar(255);
alter table characters add column lookup_label varchar(50);
alter table characters add column gender varchar(255);
alter table characters add column date_of_birth date;
alter table characters add column place_of_birth int;
alter table characters add column notes text;
alter table characters add column occupations varchar(255);

alter table character_types change character_types.key label varchar(255);
update character_types set label = 'Individual' where id = 1;
update character_types set label = 'Species' where id = 2;

alter table relationships change character_id from_character_id int;
alter table relationships change relation_id to_character_id int;

alter table relationship_types change relationship_types.key label varchar(255);
update relationship_types set label = 'Best friend of' where id = 1;
update relationship_types set label = 'Sibling of' where id = 2;
update relationship_types set label = 'Companion of' where id = 3;
update relationship_types set label = 'Grandson of' where id = 4;
update relationship_types set label = 'Incarnation of' where id = 5;
update relationship_types set label = 'Married to' where id = 6;
update relationship_types set label = 'One of' where id = 7;
update relationship_types set label = 'Partner of' where id = 8;
update relationship_types set label = 'Sister of' where id = 9;
update relationship_types set label = 'Creator of' where id = 10;
update relationship_types set label = 'Created by' where id = 11;
update relationship_types set label = 'Faction of' where id = 12;
update relationship_types set label = 'Has incarnation' where id = 13;
update relationship_types set label = 'Companion' where id = 14;
update relationship_types set label = 'Affiliate' where id = 15;
update relationship_types set label = 'Daughter of' where id = 16;
update relationship_types set label = 'Includes' where id = 17;

alter table events drop column url_key;
alter table events drop column imgev_file_name;
alter table events drop column imgev_file_size;
alter table events drop column imgev_updated_at;
alter table events drop column imgev_content_type;

alter table story_parts drop column long_synopsis;

alter table locations drop column url_key;
alter table locations drop column imgl_file_name;
alter table locations drop column imgl_file_size;
alter table locations drop column imgl_updated_at;
alter table locations drop column imgl_content_type;

alter table episode_occurrences drop column video_filename;

alter table stories drop column url_key;
alter table stories drop column article_image_one_file_name;
alter table stories drop column article_image_one_content_type;
alter table stories drop column article_image_one_file_size;
alter table stories drop column article_image_one_updated_at;
alter table stories drop column article_image_two_file_name;
alter table stories drop column article_image_two_content_type;
alter table stories drop column article_image_two_file_size;
alter table stories drop column article_image_two_updated_at;
alter table stories drop column article_image_three_file_name;
alter table stories drop column article_image_three_content_type;
alter table stories drop column article_image_three_file_size;
alter table stories drop column article_image_three_updated_at;
alter table stories drop column article_image_four_file_name;
alter table stories drop column article_image_four_content_type;
alter table stories drop column article_image_four_file_size;
alter table stories drop column article_image_four_updated_at;
alter table stories drop column imgs_file_name;
alter table stories drop column imgs_content_type;
alter table stories drop column imgs_file_size;
alter table stories drop column imgs_updated_at;

rename table drwho_development.references to cross_references;
drop table if exists event_to_event_references;
create table event_to_event_references (
	id serial,
	from_event_id int not null,
	to_event_id int not null,
	description text,
	created_at timestamp,
	updated_at timestamp,
	primary key (id)
);
insert into event_to_event_references select id, referrer_id, referee_id, description, created_at, updated_at from cross_references where referrer_type = 'Event' and referee_type = 'Event';
drop table cross_references;

alter table artifacts drop column url_key;
alter table artifacts drop column imga_file_name;
alter table artifacts drop column imga_content_type;
alter table artifacts drop column imga_file_size;
alter table artifacts drop column imga_updated_at;

alter table episode_occurrences drop column imgeo_file_name;
alter table episode_occurrences drop column imgeo_content_type;
alter table episode_occurrences drop column imgeo_img_file_size;
alter table episode_occurrences drop column imgeo_updated_at;

alter table episodes drop column imge_file_name;
alter table episodes drop column imge_file_size;
alter table episodes drop column imge_updated_at;
alter table episodes drop column imge_content_type;
alter table episodes drop column media_url;

rename table stories to storylines;

drop table if exists minor_characters;
create table minor_characters (
	id serial,
	character_id int not null,
	storyline_id int not null,
	created_at timestamp,
	updated_at timestamp,
	constraint fk_storyline_minor_character foreign key (character_id) references characters(id),
	constraint fk_minor_character_storyline foreign key (storyline_id) references storylines(id),
	primary key (id)
);

drop table if exists major_characters;
create table major_characters (
	id serial,
	character_id int not null,
	storyline_id int not null,
	created_at timestamp,
	updated_at timestamp,
	constraint fk_storyline_major_character foreign key (character_id) references characters(id),
	constraint fk_major_character_storyline foreign key (storyline_id) references storylines(id),
	primary key (id)
);

alter table episodes add column tx_date date;

alter table character_occurrences drop column involvement_type_id;
alter table character_occurrences drop column position;
drop table involvement_types;

rename table episode_occurrences to scenes;
alter table scenes change start_time segment_offset_start time;
alter table scenes add column segment_duration int;
alter table scenes add column segment_position int;
alter table scenes add column event_date datetime;
alter table scenes add column event_date_format varchar(255);
alter table scenes add column event_time_of_day varchar(255);
alter table scenes add column event_title varchar(255);
alter table scenes add column event_short_synopsis varchar(40);
alter table scenes add column event_long_synopsis text;
alter table scenes add column direction text;
alter table scenes add column parent_id int;

alter table story_parts drop column position;

drop table if exists cross_scene_event_references;
create table cross_scene_event_references (
	id serial,
	from_scene_id int not null,
	to_scene_id int not null,
	created_at timestamp,
	updated_at timestamp,
	constraint fk_cross_scene_from foreign key (from_scene_id) references scenes(id),
	constraint fk_cross_scene_to foreign key (to_scene_id) references scenes(id),
	primary key (id)
);

rename table locations to places;
alter table places add column lat float(50);
alter table places add column lon float(50);

alter table event_locations change location_id place_id int;
drop table if exists locations;
create table locations (
	id serial,
	scene_id int not null,
	place_id int not null,
	created_at timestamp,
	updated_at timestamp,
	constraint fk_location_scene foreign key (scene_id) references scenes(id),
	constraint fk_location_place foreign key (place_id) references places(id),
	primary key (id)
);

rename table story_parts to scenes_storylines;
alter table scenes_storylines add column scene_id int;
alter table scenes_storylines change story_id storyline_id int;

rename table character_occurrences to involvements;
alter table involvements add column scene_id int;

alter table event_to_event_references add column from_scene_id int;
alter table event_to_event_references add column to_scene_id int;

create table script_lines (
	id serial,
	line_type varchar(255),
	line text,
	character_id int,
	scene_id int not null,
	created_at timestamp,
	updated_at timestamp,
	constraint fk_line_scene foreign key (scene_id) references scenes(id),
	constraint fk_line_character foreign key (character_id) references characters(id),
	primary key (id)
);

create table relationship_reveals (
	id serial,
	relationship_id int not null,
	scene_id int not null,
	created_at timestamp,
	updated_at timestamp,
	constraint fk_relationship_reveal_relationship foreign key (relationship_id) references relationships(id),
	constraint fk_relationship_reveal_scene foreign key (scene_id) references scenes(id),
	primary key (id)
);