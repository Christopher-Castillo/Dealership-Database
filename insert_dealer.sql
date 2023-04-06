-- customer

insert into customer(customer_id,first_name,last_name,address,billing_info)
values(1, 'Chris', 'Castle', '1589 mad ave, NY,NY 13124', '0090 0902 8047 8937');

insert into customer(customer_id,first_name,last_name,address,billing_info)
values(2, 'Dallas', 'Cowboy', 'Martingaile trail Fort Worth, TX 76110', '4242 0000 1111, 2314');

insert into customer(customer_id,first_name,last_name,address,billing_info)
values(3, 'Jilian', 'colten', '1885 Rayen St Apt 40 Los Angeles, CA 91345', '5278 7893 i802 3767');

-- vehicle

insert into vehicle(car_id,sp_id,customer_id,make,model,VIN)
values(1, '1', '1', 'Honda', 'Civic', '0008733780');

insert into vehicle(car_id,sp_id,customer_id,make,model,VIN)
values(2, '2', '2', 'Acura', 'Integra', '0008933780');

insert into vehicle(car_id,sp_id,customer_id,make,model,VIN)
values(3, '3', '3', 'Toyota', 'Camry', '0003894670');


-- Salesperson

insert into salesperson(sp_id,first_name,last_name,sales_total)
values(1, 'Ben', 'Franklin', '6200');

insert into salesperson(sp_id,first_name,last_name,sales_total)
values(2, 'Thomas', 'Jefferson', '3300');

insert into salesperson(sp_id,first_name,last_name,sales_total)
values(3, 'Aaron', 'Burr', '2300');

-- Mechanic
insert into mechanic(mechanic_id,first_name,last_name,parts_cost,service_cost)
values(1, 'Joe', 'Mourino', '200', '450');

insert into mechanic(mechanic_id,first_name,last_name,parts_cost,service_cost)
values(2, 'Dani', 'Alvez', '150', '100');

insert into mechanic(mechanic_id,first_name,last_name,parts_cost,service_cost)
values(3, 'Karim', 'Benzemma', '1500', '800');

-- Invoice
insert into invoice(invoice_id,sp_id,customer_id,sale_amount)
values('1001','1','1','6200');

insert into invoice(invoice_id,sp_id,customer_id,sale_amount)
values('1002','2','2','3300');

insert into invoice(invoice_id,sp_id,customer_id,sale_amount)
values('1003','3','3','2300');

-- Ticket 
insert into ticket(ticket_id,mechanic_id,car_id,customer_id,service_cost)
values('11','2','3','3','450');

insert into ticket(ticket_id,mechanic_id,car_id,customer_id,service_cost)
values('16','1','2','1','100');

insert into ticket(ticket_id,mechanic_id,car_id,customer_id,service_cost)
values('22','3','1','2','800');


-- INSERT FUNCTIONS 

create function insert_mechanic(mechanic_id INTEGER, first_name VARCHAR, last_name VARCHAR)
returns void
as $MAIN$
begin 
		insert into mechanic (mechanic_id,first_name,last_name)
		values (mechanic_id,first_name,last_name);
end;
$MAIN$
language plpgsql;

select insert_mechanic(10,'Gomez','Alex');

select insert_mechanic(4,'Embid','Joel');


create function insert_salesperson(sp_id INTEGER, first_name VARCHAR, last_name VARCHAR)
returns void
as $MAIN$
begin 
		insert into salesperson (sp_id,first_name,last_name)
		values (sp_id ,first_name,last_name);
end;
$MAIN$
language plpgsql;

select insert_salesperson(4,'Rodriguez','Benjamin');

select * from salesperson;
