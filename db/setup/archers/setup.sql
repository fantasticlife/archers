drop table if exists memberships;
drop table if exists membership_roles;
drop table if exists groups;
drop table if exists relationship_reveals;
drop table if exists script_lines;
drop table if exists involvements;
drop table if exists locations;
drop table if exists cross_scene_event_references;
drop table if exists event_to_event_references;
drop table if exists relationships;
drop table if exists relationship_types;
drop table if exists minor_characters;
drop table if exists major_characters;
drop table if exists characters_occupations;
drop table if exists character_names;
drop table if exists character_notes;
drop table if exists characters;
drop table if exists character_titles;
drop table if exists character_appearance_types;
drop table if exists character_types;
drop table if exists occupations;
drop table if exists place_notes;
drop table if exists places;
drop table if exists scenes_storylines;
drop table if exists storylines;
drop table if exists scenes;
drop table if exists episodes;
drop table if exists crews;

create table places (
	id serial,
	title varchar(255) not null,
	short_synopsis varchar(40),
	long_synopsis text,
	lat float(50) default null,
	lon float(50) default null,
	parent_id int,
	notes text,
	created_at timestamp,
	updated_at timestamp,
	primary key (id)
);

create table place_notes (
	id serial,
	date date,
	note text,
	place_id int,
	created_at timestamp,
	updated_at timestamp,
	constraint fk_place_note foreign key (place_id) references places(id),
	primary key (id)
);

create table storylines (
	id serial,
	title varchar(255),
	short_synopsis varchar(255),
	long_synopsis text,
	article text,
	notes text,
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

create table crews (
	id serial,
	given_name varchar(255),
	family_name varchar(255),
	note text,
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
	writer_id int,
	producer_id int,
	editor_id int,
	director_id int,
	researcher_id int,
	series int,
	block int,
	created_at timestamp,
	updated_at timestamp,
	constraint fk_episode_writer foreign key (writer_id) references crews(id),
	constraint fk_episode_producer foreign key (producer_id) references crews(id),
	constraint fk_episode_editor foreign key (editor_id) references crews(id),
	constraint fk_episode_director foreign key (director_id) references crews(id),
	constraint fk_episode_researcher foreign key (researcher_id) references crews(id),
	primary key (id)
);

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
	
create table character_titles (
	id serial,
	label varchar(255),
	primary key (id)
);

create table character_appearance_types (
	id serial,
	label varchar(255),
	sort_order int,
	primary key (id)
);

create table characters (
	id serial,
	pid varchar(255) default null,
	character_title_id int,
	name varchar(255) not null,
	character_type_id int,
	lookup_label varchar(50),
	gender varchar(255),
	date_of_birth date,
	date_of_death date,
	speaks boolean,
	character_appearance_type_id int,
	place_of_birth int,
	strapline varchar(255),
	short_synopsis varchar(255),
	long_synopsis text,
	known_as text,
	notes text,
	created_at timestamp,
	updated_at timestamp,
	constraint fk_character_title foreign key (character_title_id) references character_titles(id),
	constraint fk_character_type foreign key (character_type_id) references character_types(id),
	constraint fk_character_appearance_type foreign key (character_appearance_type_id) references character_appearance_types(id),
	constraint fk_place_of_birth foreign key (place_of_birth) references places(id),
	primary key (id)
);

create table character_notes (
	id serial,
	date date,
	note text,
	character_id int,
	created_at timestamp,
	updated_at timestamp,
	constraint fk_character_note foreign key (character_id) references characters(id),
	primary key (id)
);

create table character_names (
	id serial,
	date date,
	old_name varchar(255),
	new_name varchar(255),
	known_as boolean,
	note text,
	character_id int,
	created_at timestamp,
	updated_at timestamp,
	constraint fk_character_name foreign key (character_id) references characters(id),
	primary key (id)
);

create table occupations (
	id serial,
	label varchar(255),
	created_at timestamp,
	updated_at timestamp,
	primary key (id)
);

create table characters_occupations (
	id serial,
	character_id int not null,
	occupation_id int not null,
	start_date date,
	created_at timestamp,
	updated_at timestamp,
	constraint fk_occupation_character foreign key (character_id) references characters(id),
	constraint fk_occupation_occupation foreign key (occupation_id) references occupations(id),
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

create table groups (
	id serial,
	label varchar(255),
	start_date date,
	end_date date,
	notes text,
	created_at timestamp,
	updated_at timestamp,
	primary key (id)
);

create table membership_roles (
	id serial,
	label varchar(255),
	is_spouse boolean,
	created_at timestamp,
	updated_at timestamp,
	primary key (id)
);

create table memberships (
	id serial,
	start_date date,
	end_date date,
	character_id int not null,
	group_id int not null,
	membership_role_id int,
	created_at timestamp,
	updated_at timestamp,
	constraint fk_membership_character foreign key (character_id) references characters(id),
	constraint fk_membership_group foreign key (group_id) references groups(id),
	constraint fk_membership_role foreign key (membership_role_id) references membership_roles(id),
	primary key (id)
);