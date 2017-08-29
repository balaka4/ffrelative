use fantasy
go

drop table if exists ff.Player 

create table ff.Player (
	player_id		bigint			identity,
	first_name		varchar(200)	not null,
	last_name		varchar(200)	not null,
	position		varchar(20)		not null,
	constraint pk_ff_player primary key nonclustered (player_id)
)
go
