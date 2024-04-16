<h1 align="center">
  API REST Insanos
</h1>

<p align="center">
 <img src="https://img.shields.io/static/v1?label=Youtube&message=@mecyo&color=#0092df&labelColor=000000" alt="@mecyo" />
 <img src="https://img.shields.io/static/v1?label=Tipo&message=Template&color=#0092df&labelColor=000000" alt="Template" />
</p>

Api para atender ao site insanos de clash royale.


## Tecnologias
 
 Exemplos:
- [Spring Boot](https://spring.io/projects/spring-boot)
- [Spring MVC](https://docs.spring.io/spring-framework/reference/web/webmvc.html)
- [Spring Data JPA](https://spring.io/projects/spring-data-jpa)
- [SpringDoc OpenAPI 3](https://springdoc.org/v2/#spring-webflux-support)
- [Lombok](https://projectlombok.org/)
- [Flyway](https://flywaydb.org/)
- [PostgreSql](https://www.postgresql.org/)

## Práticas adotadas

 Exemplos:
- SOLID, DRY, YAGNI, KISS
- API REST
- Consultas com Spring Data JPA
- Injeção de Dependências
- ~~Tratamento de respostas de erro~~
- <s>Geração automática do Swagger com a OpenAPI 3<s>

## Como Executar

 Exemplos:
- Clonar repositório git
- Construir o projeto:
```
$ ./mvnw clean package
```
- Executar a aplicação:
```
$ java -jar target/insanos-api-0.0.1-SNAPSHOT.jar
```

A API poderá ser acessada em [localhost:8080](http://localhost:8080).
<s>O Swagger poderá ser visualizado em [localhost:8080/swagger-ui.html](http://localhost:8080/swagger-ui.html)<s>

## API Endpoints

- Criar Clan 
```
$ http POST :8080/clans nome="Clan 1" id=1

{
  "id": 1,
  "nome": "Clan 1",
  "dataRegistro": "16/04/2024 08:00:01"
}
```

- Listar Clans
```
$ http GET :8080/clans

[
  {
    "id": 1,
    "nome": "Clan 1",
    "dataRegistro": "16/04/2024 08:00:01"
  }
]
```

- Atualizar Clan
```
$ http PUT :8080/clans/1 nome="Clan 1 Up"

{
  "id": 1,
  "nome": "Clan 1 Up",
  "dataRegistro": "16/04/2024 08:00:01"
}
```

- Remover Clan
```
http DELETE :8080/clans/1

true
```
