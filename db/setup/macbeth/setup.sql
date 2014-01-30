drop table if exists relationship_reveals;
drop table if exists script_lines;
drop table if exists involvements;
drop table if exists locations;
drop table if exists cross_scene_event_references;
drop table if exists event_to_event_references;
drop table if exists relationship_types;
drop table if exists relationships;
drop table if exists minor_characters;
drop table if exists major_characters;
drop table if exists characters;
drop table if exists character_types;
drop table if exists places;
drop table if exists scenes_storylines;
drop table if exists storylines;
drop table if exists scenes;
drop table if exists episodes;

create table places (
	id serial,
	title varchar(255) not null,
	short_synopsis varchar(40),
	long_synopsis text,
	lat float(50) default null,
	lon float(50) default null,
	parent_id int,
	created_at timestamp,
	updated_at timestamp,
	primary key (id)
);

create table storylines (
	id serial,
	title varchar(255),
	short_synopsis varchar(255),
	long_synopsis text,
	article text,
	position int,
	created_at timestamp,
	updated_at timestamp,
	primary key (id)
);

create table relationship_types (
	id serial,
	label varchar(255) not null,
	created_at timestamp,
	updated_at timestamp,
	primary key (id)
);

create table episodes (
	id serial,
	pid varchar(255),
	title varchar(255),
	long_synopsis text,
	tx_date date not null,
	position int,
	created_at timestamp,
	updated_at timestamp,
	primary key (id)
);
insert into episodes (title, tx_date) values( 'Placeholder episode', '2013-01-09');

create table scenes (
	id serial,
	episode_id int,
	parent_id int,
	segment_offset_start time,
	segment_duration int,
	segment_position int,
	event_date timestamp,
	event_date_format varchar(255),
	event_time_of_day varchar(255),
	event_title varchar(255),
	event_short_synopsis varchar(40),
	event_long_synopsis text,
	direction text,
	created_at timestamp,
	updated_at timestamp,
	primary key (id)
);

create table script_lines (
	id serial,
	scene_id int not null,
	character_id int,
	line_type varchar(255),
	line text,
	created_at timestamp,
	updated_at timestamp,
	constraint fk_line_scene foreign key (scene_id) references scenes(id),
	primary key (id)
);

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

create table character_types (
	id serial,
	label varchar(255) not null,
	is_group boolean default false,
	created_at timestamp,
	updated_at timestamp,
	primary key (id)
);
insert into character_types (label, is_group) values( 'Individual', false);
insert into character_types (label, is_group) values( 'Species', true);
insert into character_types (label, is_group) values( 'Organisation', true);

create table characters (
	id serial,
	pid varchar(255) default null,
	name varchar(255) not null,
	character_type_id int,
	lookup_label varchar(50),
	gender varchar(255),
	date_of_birth date,
	place_of_birth int,
	occupations varchar(255),
	strapline varchar(255),
	short_synopsis varchar(255),
	long_synopsis text,
	notes text,
	created_at timestamp,
	updated_at timestamp,
	constraint fk_character_type foreign key (character_type_id) references character_types(id),
	constraint fk_place_of_birth foreign key (place_of_birth) references places(id),
	primary key (id)
);

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

create table relationships (
	id serial,
	from_character_id int not null,
	to_character_id int not null,
	relationship_type_id int not null,
	created_at timestamp,
	updated_at timestamp,
	constraint fk_relationship_from_character foreign key (from_character_id) references characters(id),
	constraint fk_relationship_to_character foreign key (to_character_id) references characters(id),
	constraint fk_relationship_to_type foreign key (relationship_type_id) references relationship_types(id),
	primary key (id)
);

create table scenes_storylines (
	id serial,
	scene_id int not null,
	storyline_id int not null,
	created_at timestamp,
	updated_at timestamp,
	constraint fk_scene_storyline_scene foreign key (scene_id) references scenes(id),
	constraint fk_scene_storyline_story foreign key (storyline_id) references storylines(id),
	primary key (id)
);

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

create table event_to_event_references (
	id serial,
	from_scene_id int not null,
	to_scene_id int not null,
	description text,
	created_at timestamp,
	updated_at timestamp,
	constraint fk_cross_scene_from foreign key (from_scene_id) references scenes(id),
	constraint fk_cross_scene_to foreign key (to_scene_id) references scenes(id),
	primary key (id)
);

create table involvements (
	id serial,
	character_id int not null,
	scene_id int not null,
	description text,
	created_at timestamp,
	updated_at timestamp,
	constraint fk_involvement_scene foreign key (scene_id) references scenes(id),
	constraint fk_involvement_character foreign key (character_id) references characters(id),
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