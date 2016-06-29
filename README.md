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
- Atualmente é necessário usa a versão do master (1.2.3)
- Postgres (9.4)
 - database: ceylon-spring 
 - login: ceylon
 - password: ceylon

Eclipse:
- Importar todos os projetos como um projeto eclipse
- Entrar em cada um dos projetos e executar: `gradle compileCeylon`
- Refresh dos projetos

