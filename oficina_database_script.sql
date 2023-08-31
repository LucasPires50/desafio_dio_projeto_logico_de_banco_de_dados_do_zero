create database oficina;
use oficina;

-- Criar tabela clientes
create table clients(
	idClient int auto_increment primary key,
    Fname varchar(10),
    Lname varchar(20),
    CPF char(9),
    address varchar(45)
);

-- Criar tabela funcionário
create table employees(
	idEmployee int auto_increment primary key,
    EmpFname varchar(10),
    EmpLname varchar(20),
    typeEmployee enum('Mecanico', 'Atendente', 'Zelador', 'Gerente') not null,
    EmpCPF char(9),
    EmpAddress varchar(45)
);

-- Criar tabela de peças
create table parts(
	idPart int auto_increment primary key,
    Pname varchar(100) not null,
    codPart varchar(128),
    valuePart float
);

-- Criar tabela estoque
create table partStorage(
	idPartStorage int auto_increment primary key,
    idPartStorage_part int,
    quantity int default 0,
    constraint fk_partStorage_part foreign key(idPartStorage_part) references parts(idPart)
);

-- Criar tabela serviços
create table services(
	idService int auto_increment primary key,
    Sname varchar(100) not null,
    valueService float
);

-- Criar tabela de pagamento
create table payments(
	idPayment int auto_increment,
    idPaymentClient int,
    typePayment enum('Dinheiro', 'Cartão', 'Pix') not null,
    valuePayment float,
    primary key(idPayment, idPaymentClient),
	constraint fk_payments_client foreign key(idPaymentClient) references clients(idClient)
);

-- Criar tabela pedido
create table orders(
	idOrder int auto_increment primary key,
    idOrderClient int,
    idOrderEmployee int,
    idOrderPart int,
    idOrderService int,
    idOrderPayment int, 
    orderStatus enum('Cancelado', 'Confirmado', 'Em Processamento') default 'Em Processamento',
    orderDescripition varchar(255),
    valueOrder float,
    constraint fk_orders_payment foreign key(idOrderPayment) references payments(idPayment),
    constraint fk_orders_service foreign key(idOrderService) references services(idService),
    constraint fk_orders_psrt foreign key(idOrderPart) references parts(idPart),
    constraint fk_orders_employee foreign key(idOrderEmployee) references employees(idEmployee),
    constraint fk_orders_client foreign key(idOrderClient) references clients(idClient)
		on update cascade
);
