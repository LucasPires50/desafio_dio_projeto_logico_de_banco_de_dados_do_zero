
select * from oficina.clients;

select count(*) from oficina.orders;

select * from oficina.parts order by valuePart desc;

select * from clients c, orders o where c.idClient = idOrderClient;

select c.Fname, c.Lname, o.orderStatus, o.orderStatus from clients c, orders o where c.idClient = idOrderClient;
select concat(c.Fname, '',c.Lname) as Client, o.orderStatus, o.orderStatus from clients c, orders o where c.idClient = idOrderClient;

select count(*) from clients c, orders o where c.idClient = idOrderClient group by idOrder;

select * from clients left outer join orders on idClient = idOrderClient;

select * from parts;
select * from clients inner join orders on idClient = idOrderClient inner join parts on idPart;
