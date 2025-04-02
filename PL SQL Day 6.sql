set serveroutput on;

-- TRIGGER

--A trigger are a store program which  run automatically when an event occurs
--types:
--    DML Trigger
--    DDL Trigger
--    System or a database event trigger
--    Event base trigger
--    Compound Trigger

-- Syntax :
--    Create or replace trigger name
--    {before | after } event on table 
--    for each row [follow another_trigger]
--    enable / disable [when condition]
--    declare
--        statement
--    begin
--        executed
--    end;

--drop table test;
--
--create table test(name1 varchar(20));

-- Usinf before

--create or replace trigger test_trigger
--before insert on test
--for each row
--enable
--declare
--    u_name varchar(20):='anmol';
--begin
--    dbms_output.put_line('Your user is' || ' ' || u_name);
--end;

--insert into test values ('abc');

-- Using After

--create or replace trigger test_trigger
--after insert on test
--for each row
--enable
--declare
--    u_name varchar(20):='anmol';
--begin
--    dbms_output.put_line('Your user is' || ' ' || u_name);
--end;

--insert into test values ('abc');

-- using inserting and updating both together

--create or replace trigger test_trigger
--after insert or update on test
--for each row
--enable
--declare
--    u_name varchar(20):='anmol';
--begin
--    if inserting then
--        dbms_output.put_line('Your user is inserting' || ' ' || u_name);
--    elsif updating then
--        dbms_output.put_line('Your user is updating' || ' ' || u_name);
--    end if;
--end;

-- insert into test values ('abc');
-- update test set name1 = 'x';

-- create table user_audit in which we have 4 column => date1 date datatype , user1 varchar datatype , object1 varchar datatype , 
--    operation1 varchar datatype now create a trigger user_audit_trigger after ddl on schema. then start begin 
--    insert value in user_audit sys_date current user name obj => pseudo column => ora_dict_obj_name
--    operation => ora_sysevent

--create table user_audit (date1 date, user1 varchar(20),object1 varchar(200), operation1 varchar(200));

--create or replace trigger user_audit_trigger
--after create or drop or alter on schema
--begin
--    insert into user_audit values(sysdate, user, ora_dict_obj_name, ora_sysevent);
--end;

--select * from user_audit;

--create table test_audit (name varchar(20));

