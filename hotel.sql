CREATE DATABASE Hotel_Res
use Hotel_Res;
CREATE TABLE HOTEL(
hot_code int primary key,
emp_id int,
hot_name nvarchar(50),
loc nvarchar(50),
num_rooms int,
)

CREATE TABLE RESERVATION(
res_nr int primary key,
guest_id int,
hot_code int,
Room_type nvarchar(20),
Room_id int,
)

CREATE TABLE room (
Room_id int primary key ,
Room_type nvarchar(20),
guest_id int,
res_nr int,
)

CREATE TABLE employee (
emp_id int,
Name nvarchar(50),
lastname nvarchar(50),
phone nvarchar(20),
)

create table Guest(
guest_id int primary key,
res_nr int,
guest_name nvarchar(50),
guest_lastname nvarchar(50),
guest_phone nvarchar(20),
guest_address nvarchar(Max),
guest_room nvarchar(50),
)
 
create table bill(
invoice_nr int primary key,
room_charge int,
misc_charges int,
)