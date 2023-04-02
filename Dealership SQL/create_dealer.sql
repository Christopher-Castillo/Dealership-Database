create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	address VARCHAR(50),
	billing_info VARCHAR(50)
);
create table salesperson(
	sp_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	total_sales NUMERIC(10,2)
);
create table vehicle(
	car_id SERIAL primary key,
	make VARCHAR(50),
	model VARCHAR(50),
	VIN SERIAL,
	sp_id INTEGER,
	customer_id INTEGER,
	foreign key(sp_id) references salesperson(sp_id),
	foreign key(customer_id) references customer(customer_id)
);


create table mechanic(
	mechanic_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	parts_cost NUMERIC(8,2),
	service_cost NUMERIC(8,2),
	car_id INTEGER,
	foreign key(car_id) references vehicle(car_id)
);

create table ticket(
	ticket_id SERIAL primary key,
	mechanic_id INTEGER,
	car_id INTEGER,
	customer_id INTEGER,
	service_cost Numeric(8,2),
	foreign key(mechanic_id) references mechanic(mechanic_id),
	foreign key(car_id) references vehicle(car_id),
	foreign key(customer_id) references customer(customer_id)

);


create table invoice(
	invoice_id SERIAL primary key,
	sale_amount numeric(10,2),
	sp_id INTEGER,
	customer_id INTEGER,
	foreign key(sp_id) references salesperson(sp_id),
	foreign key(customer_id) references customer(customer_id)
);

alter table salesperson rename column total_sales to sales_total

