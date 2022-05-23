-- section 2

USE moduleExam;

-- que1

create table temp1(ename varchar(20));
insert into temp1 values('DAC'),('CDAC');

create table ano(res varchar(20));

delimiter //
create procedure Proc1()
begin
	declare  res varchar(10);
    set res=(select * from temp1 where ename like '%DAC%');
	 
     if res='found' then
		insert into ano values('found');
     else
		 insert into ano values('Not found');
end; //
delimiter ;
 call Proc1();
drop procedure Proc1;

select res from ano;













        
-- question2

create table temp2(fir varchar(20));
delimiter //
create function FUNC1(x float,y float,z float)
returns boolean
deterministic
begin
	if (x+y) > z and (y+z) > x and (x+z) > y then
		return TRUE;
	else
		return FALSE;
	end if;
end; //
delimiter ;

delimiter //
create procedure triangle()
begin
    declare x boolean default false;
    set x = FUNC1(10,20,30);
    if x = true then
		insert into temp2 values('valid triangle');
	else
       insert into temp2 values('invalid triangle');
	end if;
end; //
delimiter ;
drop table temp2;
drop procedure triangle;
call triangle();

select * from temp2;