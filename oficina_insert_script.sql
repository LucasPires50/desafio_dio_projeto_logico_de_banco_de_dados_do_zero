use oficina;

insert into clients(Fname, Lname, CPF, address)
    VALUES
    ("Cody","Stacey","123456789","Ap #118-7794 Elit St."),
    ("Wesley","Vaughan","271687896","971-7947 Vel Street"),
    ("Baxter","Arsenio","577312369","Ap #499-7131 Aliquam Avenue"),
    ("Garrett","Ezekiel","615555852","Ap #372-7760 Consectetuer St."),
    ("Drake","Leonard","168154165","238-4819 Duis Ave"),
    ("Colt","Levi","456983257","Ap #525-8379 Sapien Ave"),
    ("Lawrence","Elton","124035247","Ap #529-3639 Sollicitudin St."),
    ("Kennan","Caleb","358958963","P.O. Box 202, 7472 Imperdiet Road"),
    ("Lucas","Quinn","371274562","P.O. Box 463, 6544 Iaculis Av."),
    ("Rajah","Hall","558246753","977-6582 Aenean Avenue");

INSERT INTO employees(EmpFname, EmpLname, typeEmployee, EmpCPF, EmpAddress)
    VALUES
    ("Byron","Colton","Mecanico","558246753","741 Quam, Rd."),
    ("Brett","Kimberly","Atendente","784449698","Ap #261-2505 Praesent Av."),
    ("Brett","Arden","Zelador","574312907","P.O. Box 412, 359 Velit Ave"),
    ("Ashton","Sandra","Mecanico","538877896","P.O. Box 272, 1945 Pellentesque Av."),
    ("Salvador","April","Gerente","095864569","Ap #236-8977 Ultricies Street");

INSERT INTO parts(Pname, codPart, valuePart)
    VALUES
    ("Velas de ignição","KNJ54LHG7CE",65.50),
    ("Filtro de óleo","QMS33GER7WV",26.90),
    ("Pistão","SWN76REI2JT",80),
    ("Caixa de câmbio","VNT18CKR2KC",560),
    ("Suspensão","EGV66EEI3VP",1000),
    ("CALHAS","UYC21DXQ0YS",15.90),
    ("PROTETORES DIANTEIROS E TRASEIROS","GOQ92VQC2CB",29.80),
    ("RACK DE TETO","QEV33CST6LD",150.89),
    ("APARA-BARRO","VSY07JEU1TO",245.60),
    ("FRISOS LATERAIS","QMA60PGL5MB",25);


INSERT INTO partStorage(idPartStorage_part, quantity)
    VALUES
    (1,65),
    (2,26),
    (3,80),
    (4,560),
    (5,1000),
    (6,15),
    (7,29),
    (8,150),
    (9,245),
    (10,25);

INSERT INTO services(Sname, valueService)
    VALUES
    ("Troca de óleo do motor",20),
    ("Substituição de pastilhas de freio",23),
    ("Alinhamento das rodas",95),
    ("Substituição de amortecedores",260),
    ("Diagnóstico e reparo de problemas no motor",100),
    ("Troca de velas de ignição",75),
    ("Substituição de cabos de velas",30),
    ("Reparo de sistema de partida",150),
    ("Substituição de filtro de cabine",245),
    ("Reparo de pneus furados",25);

insert into payments(idPaymentClient, typePayment, valuePayment)
	VALUES
    ("1","Dinheiro",120),
    ("2","Cartão",200),
    ("3","Pix",2500),
    ("10","Dinheiro",540),
    ("5","Cartão",158),
    ("6","Pix",360),
    ("7","Dinheiro",896),
    ("4","PIX",90);

insert into orders(idOrderClient, idOrderEmployee, idOrderPart, idOrderService, idOrderPayment, orderStatus, orderDescripition, valueOrder)
	VALUES
    ("1", "1", "5", "1", "1", "Confirmado", "", 240),
    ("2", "4", "7", "2", "2", "Confirmado", "", 120),
    ("3", "4", "1", "3", "3", "Confirmado", "", 95.90),
    ("10", "1", "3", "4", "4", "Em Processamento", "", 80.05),
    ("5", "1", "2", "5", "5", "Em Processamento", "", 1200),
    ("6", "1", "10", "1", "6", "Em Processamento", "", 500),
    ("7", "4", "8", "2", "7", "Cancelado", "", 299),
    ("4", "4", "9", "2", "8", "Cancelado", "", 25.99);
