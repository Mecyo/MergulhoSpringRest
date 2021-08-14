create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255) not null, taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6) not null, destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255), taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6), destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255), taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table entrega_ocorrencias (entrega_id bigint not null, ocorrencias_id bigint not null) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega_ocorrencias add constraint UK_t7sa7agl2yp1vrbs1tyuq133 unique (ocorrencias_id)
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table entrega_ocorrencias add constraint FKslo1yhgqgoukagpl7it6o9u4a foreign key (ocorrencias_id) references ocorrencia (id)
alter table entrega_ocorrencias add constraint FKg7nqqy0lk68qddsp7ca9ys9v5 foreign key (entrega_id) references entrega (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6), destinatario_bairro varchar(255), destinatario_complemento varchar(255), destinatario_logradouro varchar(255), destinatario_nome varchar(255), destinatario_numero varchar(255), status varchar(255), taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6), destinatario_bairro varchar(30), destinatario_complemento varchar(60), destinatario_logradouro varchar(255), destinatario_nome varchar(60), destinatario_numero varchar(30), status varchar(255), taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6), destinatario_bairro varchar(30), destinatario_complemento varchar(60), destinatario_logradouro varchar(255), destinatario_nome varchar(60), destinatario_numero varchar(30), status varchar(255), taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6), destinatario_bairro varchar(30), destinatario_complemento varchar(60), destinatario_logradouro varchar(255), destinatario_nome varchar(60), destinatario_numero varchar(30), status varchar(255), taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6), destinatario_bairro varchar(30), destinatario_complemento varchar(60), destinatario_logradouro varchar(255), destinatario_nome varchar(60), destinatario_numero varchar(30), status varchar(255), taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6), destinatario_bairro varchar(30), destinatario_complemento varchar(60), destinatario_logradouro varchar(255), destinatario_nome varchar(60), destinatario_numero varchar(30), status varchar(255), taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6), destinatario_bairro varchar(30), destinatario_complemento varchar(60), destinatario_logradouro varchar(255), destinatario_nome varchar(60), destinatario_numero varchar(30), status varchar(255), taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6), destinatario_bairro varchar(30), destinatario_complemento varchar(60), destinatario_logradouro varchar(255), destinatario_nome varchar(60), destinatario_numero varchar(30), status varchar(255), taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6), destinatario_bairro varchar(30), destinatario_complemento varchar(60), destinatario_logradouro varchar(255), destinatario_nome varchar(60), destinatario_numero varchar(30), status varchar(255), taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6), destinatario_bairro varchar(30), destinatario_complemento varchar(60), destinatario_logradouro varchar(255), destinatario_nome varchar(60), destinatario_numero varchar(30), status varchar(255), taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6), destinatario_bairro varchar(30), destinatario_complemento varchar(60), destinatario_logradouro varchar(255), destinatario_nome varchar(60), destinatario_numero varchar(30), status varchar(255), taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6), destinatario_bairro varchar(30), destinatario_complemento varchar(60), destinatario_logradouro varchar(255), destinatario_nome varchar(60), destinatario_numero varchar(30), status varchar(255), taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6), destinatario_bairro varchar(30), destinatario_complemento varchar(60), destinatario_logradouro varchar(255), destinatario_nome varchar(60), destinatario_numero varchar(30), status varchar(255), taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6), destinatario_bairro varchar(30), destinatario_complemento varchar(60), destinatario_logradouro varchar(255), destinatario_nome varchar(60), destinatario_numero varchar(30), status varchar(255), taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6), destinatario_bairro varchar(30), destinatario_complemento varchar(60), destinatario_logradouro varchar(255), destinatario_nome varchar(60), destinatario_numero varchar(30), status varchar(255), taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6), destinatario_bairro varchar(30), destinatario_complemento varchar(60), destinatario_logradouro varchar(255), destinatario_nome varchar(60), destinatario_numero varchar(30), status varchar(255), taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6), destinatario_bairro varchar(30), destinatario_complemento varchar(60), destinatario_logradouro varchar(255), destinatario_nome varchar(60), destinatario_numero varchar(30), status varchar(255), taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
create table cliente (id bigint not null auto_increment, email varchar(255), nome varchar(60), telefone varchar(20), primary key (id)) engine=InnoDB
create table entrega (id bigint not null auto_increment, data_finalizacao datetime(6), data_pedido datetime(6), destinatario_bairro varchar(30), destinatario_complemento varchar(60), destinatario_logradouro varchar(255), destinatario_nome varchar(60), destinatario_numero varchar(30), status varchar(255), taxa decimal(19,2) not null, cliente_id bigint not null, primary key (id)) engine=InnoDB
create table ocorrencia (id bigint not null auto_increment, data_registro datetime(6), descricao varchar(255), entrega_id bigint, primary key (id)) engine=InnoDB
alter table entrega add constraint FK6s5qo326hpov2shx1c5wmnofk foreign key (cliente_id) references cliente (id)
alter table ocorrencia add constraint FKj41wa4v81bo2xkg4xgc3knae foreign key (entrega_id) references entrega (id)
