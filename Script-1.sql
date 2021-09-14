create table if not exists Artist (
 id serial primary key,
 name_of_artist varchar(30) not null unique
 );

create table Albums (
	id serial primary key,
	name_of_album varchar(30) not null,
	release_date date,
	artist_id integer references Artist(id)
);

create table Tracklist (
	id serial primary key,
	name_of_track varchar(60),
	duration numeric not null check(duration >0.1),
	albums_id integer references Albums(id)
);