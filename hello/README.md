# mysql query

	-- 회원 테이블

	drop table if exists member_table;

	create table member_table(
	id bigint primary key auto_increment,
	memberEmail varchar(20) unique,
	memberPassword varchar(20),
	memberName varchar(20),
	memberAge int,
	memberMobile varchar(30)
	);

	-- 보드 테이블

	drop table if exists board_table;

	create table board_table(
	id bigint primary key auto_increment,
	boardWriter varchar(50),
	boardPass varchar(20),
	boardTitle varchar(50),
	boardContents varchar(500),
	boardCreatedTime datetime default now(),
	boardHits int default 0,
	);

	drop table if exists board_file_table;
	
	drop table if exists comment_table;
	
	create table comment_table(
	id bigint primary key auto_increment,
	commentWriter varchar(50),
	commentContents varchar(200),
	boardId bigint,
	commentCreatedTime datetime default now(),
	constraint fk_comment_table foreign key (boardId) references board_table(id) on delete cascade
	);
	
	select * from board_table;
	
	-- id 기준 내림차순 정렬

	select * from board_table order by id desc;
	
	-- 한페이지 3개씩 출력

	select * from board_table order by id desc limit 0, 3;
	select * from board_table order by id desc limit 1, 3;
	select * from board_table order by id desc limit 2, 3;
	select * from board_table order by id desc limit 3, 3;
	
	select * from board_table order by id desc limit 0, 5;
	
	select * from board_table order by id desc limit 0, 3;
	select * from board_table order by id desc limit 3, 3;
	select * from board_table order by id desc limit 6, 3;
	
	select count(id) from board_table;
