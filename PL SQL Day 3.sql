set serveroutput on;

-- %type
--declare
--    eid int := 102;
--    v_name hr.employees.first_name%type;
--begin
--    select first_name into v_name from employees where employee_id=eid;
--    dbms_output.put_line(eid || ' ' || v_name);
--end;

-- %rowtype
--declare
--    eid int := 102;
--    v_name hr.employees.first_name%type;
--    emp_rec hr.employees%rowtype;
--begin
--    select first_name into v_name from employees where employee_id=eid;
--    select * into emp_rec from employees where employee_id=eid;
--    dbms_output.put_line(eid || ' ' || v_name);
--    dbms_output.put_line(emp_rec.first_name || ' ' || emp_rec.last_name);
--end;

-- %record is same as %rowtype but the diff is that we define datatype in records but not in rowtype.

-- Implicit Cursor
    -- in this cursor we have some implicit cursor attributes
    --  %found ,%notfound,%rowcount %isopen

--create table test(id int);
--insert into test values(10);
--insert into test values(20);
--insert into test values(30);
--select * from test;
--drop table test;

--declare 
--    v_count int := 0;
--begin
--    if sql%found then
--        dbms_output.put_line('cursor open 1' || ' ' || sql%rowcount);
--    end if;
--    
--    update test set id=50;
--    
--    if sql%found then
--        dbms_output.put_line('cursor open 2' || ' ' || sql%rowcount);
--    end if;
--end;

--declare 
--    v_count int := 0;
--begin
--    if sql%found then
--        dbms_output.put_line('cursor open 1' || ' ' || sql%rowcount);
--    end if;
--    
--    insert into test values(40);
--    insert into test values(50);
--    insert into test values(60);
--    insert into test values(70);
--    
--    if sql%found then
--        dbms_output.put_line('cursor open 2' || ' ' || sql%rowcount);
--    end if;
--end;