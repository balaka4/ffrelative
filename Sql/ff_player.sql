use fantasy
go

drop table if exists ff.StatsProjection
drop table if exists ff.Player 

create table ff.Player (
	player_id		bigint			identity,
	first_name		varchar(200)	not null,
	last_name		varchar(200)	not null,
	position		varchar(20)		not null,
	constraint pk_ff_player primary key nonclustered (player_id)
)
go

create table ff.StatsProjection (
	player_id		bigint			not null,
	[source]		varchar(100)	not null,

	pass_yards		decimal(32, 10)	not null default 0,
	pass_td			decimal(32, 10)	not null default 0,
	pass_int		decimal(32, 10)	not null default 0,
	rush_yards		decimal(32, 10)	not null default 0,
	rush_td			decimal(32, 10)	not null default 0,
	rec_yards		decimal(32, 10)	not null default 0,
	rec_td			decimal(32, 10)	not null default 0,
	fg_made			decimal(32, 10)	not null default 0,
	fg_att			decimal(32, 10)	not null default 0,
	xp_made			decimal(32, 10)	not null default 0,
	xp_att			decimal(32, 10)	not null default 0,
	sacks			decimal(32, 10)	not null default 0,
	interceptions	decimal(32, 10)	not null default 0,
	fum_rec			decimal(32, 10)	not null default 0,
	safeties		decimal(32, 10)	not null default 0,
	def_td			decimal(32, 10)	not null default 0,
	
	constraint pk_ff_statsproj primary key nonclustered (player_id, [source]),
	constraint fk_ff_statsproj_playerid foreign key (player_id) references ff.Player (player_id)
)
