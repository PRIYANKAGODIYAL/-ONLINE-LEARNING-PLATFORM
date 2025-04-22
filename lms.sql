create table cust_details(
        name varchar(30) not null,
        email varchar(30) not null primary key,
        ph_no varchar(30) not null,
        address varchar(40) not null
); 

create table order_details(
        email varchar(30)  references cust_details(email),
        date_ordered date not null,
        time_slot integer not null,
        type_of_clothes varchar(60) not null,
        clothes_male integer not null,
        clothes_female integer not null,
        services_requested varchar(50) not null,
        primary key(email)
);

 create  table payments (
    id serial primary key,
    email varchar(30) references cust_details(email),
    payment_method varchar(255),
    amount numeric(10, 2),
    transaction_id varchar(255),
    payment_status varchar(50),
    payment_date timestamp default CURRENT_TIMESTAMP
);



