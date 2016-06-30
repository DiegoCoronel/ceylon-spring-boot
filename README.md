# SpringBoot - Ceylon

Este projeto tem caráter experimental e está sendo feito por pura diversão em meu tempo livre. Portanto se os contextos dos microserviços não fizerem sentido ou se parece uma super engenharia para apenas alguns CRUD`s é porque estou apenas testando alguns conceitos tanto da linguagem quanto do springboot.

A arquitetura ficou dividida em alguns microserviços:
- Gateway: Testar uma entrada única que faça balanceamento de carga para os serviços registrados no discovery.
- Discovery: Testar os microserviços ser registrando e ficando disponíveis.
- Flight (FOO): Registro de aviões disponíveis... ou se ficar mais fácil pense em FOO.
- Passenger (BAR): Registro de pessoas que podem usar aviões... ou se ficar mais fácil pense em BAR.
- Reservation (FOOBAR): Apenas para usar o stack feign, ribbon e discovery. União de aviões e passageiros (FOOBAR).

## Configuração do ambiente

Pré-Requisitos:
- Atualmente é necessário usar a versão do master (1.2.3)
- Postgres (9.4)
 - database: ceylon-spring 
 - login: ceylon
 - password: ceylon

Eclipse:
- Importar todos os projetos como um projeto eclipse
- Entrar em cada um dos projetos e executar: `gradle compileCeylon`
 - Aqui é importante ressaltar que é necessário estar com a versão 1.2.3 do Ceylon no classpath, caso esteja com uma versão diferente é possível configurar o caminho no arquivo build.gradle e adicionar: `ceylonLocation = "/your_compatible_ceylon_path/dist/bin/ceylon"` próximo a declaração do seu módule.

  
- Refresh dos projetos

## Usando os serviços

Um importante detalhe é que os serviços não ficam disponíveis no mesmo momento que os serviços estão UP, isso deve-se a estratégia utilizada pelo discovery que consistem basicamente em aguardar 3 batimentos. Portanto não se assuste se no primeiro momento parecer que o serviço não ficou disponível. O tempo padrão de espera é de 30 segundos por batimento.

- Discovery
 - http://localhost:8761/
 
- Passenger
 - GET http://localhost:8080/passenger/person/{ID HERE}
 - POST http://localhost:8080/passenger/person
```json
{
  "name" : "Any Name Here"
}
```

- Flight
 - GET http://localhost:8080/flight/flight/{ID HERE} 
 - POST http://localhost:8080/flight/flight
```json
{
  "maximumPlaces" : 3
}
```

- Reservation
 - POST http://localhost:8080/reservation/reservation
```json
{
  {
    "passenger" : 1,
    "flight" : 1
  }
}
```
