set serveroutput on;
--declare 
--    var1 varchar(20) :='hey';
--    a int := 10;
--    b int := 20;
--    c int;
--    d constant int := 19;
--begin
--    c := a+b;
----    d := 20; This line will show an error because we make d var constant
--    dbms_output.put_line(var1 || ' ' || d);
--end;


-- operator
    -- airthmetic operator (+,-,**)
    -- relational operator (compare values)(=,<,> etc)
    -- comparison operator (used to compare the expression)(like,between,is,null)
    -- logical operator (and , or , not)
    
--precedence rule
--    (*,+,-,/    

-- use of if elsif else
--declare 
--    var1 varchar(20) :='hey';
--    a int := 10;
--    b int := 20;
--    c int;
--    d constant int := 19;
--begin
--    c := a+b;
----    d := 20; This line will show an error because we make d var constant
--    dbms_output.put_line(var1 || ' ' || d);
--    if(a>15) then
--        dbms_output.put_line('a value is greater than 5');
--    ELSIF(a=10) then
--        dbms_output.put_line('value is 10');
--    else 
--        dbms_output.put_line('else part');
--    end if;
--end;

-- Case statement is same like sql

-- loop

--declare 
--    a int := 10;
--begin
--    loop
--        dbms_output.put_line(a);
--        a := a+1;
--        -- exit when a>13 this will also exit     
--        if(a>13) then 
--            exit;
--        end if;
--    end loop;
--end;

-- while loop
-- syntax
--    while(condition) loop
--        a: a+=1
--    end loop;

-- for loop
-- syntax
--    for var in 1..10 loop
--        statement
--    end loop;

begin
    for var in 1..10 loop
        dbms_output.put_line(var);
    end loop;
end;


-- what is cursors
-- implicit vs explicit cursor
-- percentage type and percentage row type
