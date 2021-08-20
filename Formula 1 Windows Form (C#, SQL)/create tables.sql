create table Racing_Teams_2020 
	(
		team_name varchar(50),
		base varchar(50) not null,
		championships int not null,
		primary key (team_name)
	);
	
create table Drivers_2020
	(
		driver_id varchar(10),
		driver_first_name varchar(50) not null,
		driver_last_name varchar(50) not null,
		driver_birth_date date not null,
		driver_country varchar(50) not null,
		driver_podium_wins int not null,
		driver_racing_team varchar(50) not null,
		primary key(driver_id),
		foreign key (driver_racing_team) references Racing_Teams_2020
			on delete set null
	);
	
create table Circuits
	(
		circuit_name varchar(50),
		circuit_country varchar(50) not null,
		circuit_length numeric(5,3) not null,
		primary key (circuit_name)
	);

create table Races_2020
	(
		circuit_name varchar(50) not null,
		driver_id varchar(10) not null,
		race_date date not null,
		laps int,
		primary key (circuit_name, race_date),
		foreign key (circuit_name) references Circuits
			on delete set null,
		foreign key (driver_id) references Drivers_2020
			on delete set null
	);

create table Racing_Teams_Over_the_Years
	(
		team_name varchar(50),
		base varchar(50) not null,
		championships varchar(50) not null,
		primary key (team_name)
	);
	
create table Legendary_Drivers
	(
		driver_name varchar(50) not null,
		driver_last_name varchar(50) not null,
		driver_racing_team varchar(50) not null,
		driver_birth_date date not null,
		driver_death_date date,
		driver_country varchar(50) not null,
		driver_podiums int not null,
		driver_championships int not null,
		primary key (driver_name, driver_last_name),
		foreign key (driver_racing_team) references Racing_Teams_Over_the_Years
			on delete set null
	);
	
create table Team_Budgets_2020 
	(
		team_name varchar(50) not null,
		team_budget numeric(5,3) not null,
		primary key (team_name, team_budget),
		foreign key (team_name) references Racing_Teams_2020 
			on delete set null		
	);
	