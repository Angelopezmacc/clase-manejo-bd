CREATE TABLE public.shippers (
	shipper_id smallint NOT NULL,
	company_name character varying(40) NOT NULL,
	phone character varying(24),
	CONSTRAINT shippers_pkey PRIMARY KEY (shipper_id)

);

CREATE TABLE public.orders (
	order_id smallint NOT NULL,
	customer_id bpchar,
	employee_id smallint,
	order_date date,
	required_date date,
	shipped_date date,
	ship_via smallint,
	freight real,
	ship_name character varying(40),
	ship_address character varying(60),
	ship_city character varying(15),
	ship_region character varying(15),
	ship_postal_code character varying(10),
	ship_country character varying(15),
	CONSTRAINT orders_pkey PRIMARY KEY (order_id)

);

ALTER TABLE public.orders ADD CONSTRAINT orders_ship_via_fkey FOREIGN KEY (ship_via)
REFERENCES public.shippers (shipper_id);
