SHOW VARIABLES LIKE 'secure_file_priv';

create database greyatom;

use gryatom;

## create table
	# Syntax
	#	create table <table Name> (
	#		<column name 1> <data type> <constraints>,
	#		<column name 2> <data type> <constraints>,
    #       <column name 3> <data type> <constraints>
	#	);
        
	# Example
    
		create table greyatom.Categories (
			CategoryID int(11) PRIMARY KEY auto_increment,
			CategoryName varchar(50) not null,
			Description varchar(250)
		);
        
	# Excercise https://app.commit.live/lesson/create-database
    
    
## insert 
	# Syntax
	#	insert into <table Name> (
	#		(coulmn 1, column 2, ...., column n),
    #		values
    #		(value 1, value 2, ....., value n),
    #		(value 1, value 2, ....., value n),
    #		(value 1, value 2, ....., value n)
	#	);
        
	# Example
    
		insert into greyatom.Categories
			(CategoryID, CategoryName, Description)
            values
            (1, "general", "general category");
        
	# Excercise 
    # Insert first 5 records present inside .csv file of each
    
    
## truncate
	# Syntax
	#	truncate <table Name>
    
    # Example
		truncate table greyatom.Categories;
	
    # Excercise
	#	truncate all tables
    
## import data
	# Syntax 
	# From csv files
	#	LOAD DATA LOCAL INFILE <File name with path>
	#	INTO TABLE <table name> 
	#	FIELDS TERMINATED BY <separator> 
	#	ENCLOSED BY <enclosure>
	#	LINES TERMINATED BY <terminator>
	#	IGNORE 1 ROWS;
    
    # Example
		LOAD DATA LOCAL INFILE "C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\Categories.csv" 
		INTO TABLE greyatom.Categories 
		FIELDS TERMINATED BY ',' 
		ENCLOSED BY '"'
		LINES TERMINATED BY '\r\n'
		IGNORE 1 ROWS;
        
	# Excercise import data from csv files into all tables
    
	# From sql script
    # mysql -u username -p database_name < file.sql
    
    describe greyatom.Categories;
## Alter data
	# syntax 
    # alter table <table name>
    # ! add column_name data_type constrains
    # ! drop column column_name
    # ! modify column column_name data_type constraints
    # ! add CONSTRAINT <constraint name> constraint (column name 1, column name 2)
 
	# Example
    alter table greyatom.categories
		add column CategoryFunction varchar(100) default 0;
    describe greyatom.Categories;    
	
    alter table greyatom.categories
		drop column CategoryFunction;
	describe greyatom.Categories;
	
    select * from greyatom.categories;
    alter table greyatom.categories
		modify column CategoryFunction int(11) default 0;
    describe greyatom.Categories;
    
    alter table greyatom.categories
		add constraint unique(CategoryID, CategoryFunction);
        
	alter table greyatom.categories
		add index (CategoryFunction)