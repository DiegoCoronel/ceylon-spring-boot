# SpringBoot - Ceylon

Este projeto tem caráter experimental e está sendo feito por pura diversão em meu tempo livre. Portanto se os contextos dos microserviços não fizerem sentido ou se parece uma super engenharia para apenas alguns CRUD`s é porque estou apenas testando alguns conceitos tanto da linguagem quanto do springboot.

A arquitetura ficou dividida em alguns microserviços:
- Gateway: Testar uma entrada única que faça balanceamento de carga para os serviços registrados no discovery.
- Discovery: Testar os microserviços ser registrando e ficando disponíveis.
- Foo: Apenas um módulo qualquer chamado foo.
- Bar: Apenas um módulo qualquer chamado bar.
- FooBar: Um módulo para integrar foo e bar.

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
 - Outro importante detalhe é que o plugin do gradle-ceylon ainda não suporta o prefixo `maven:`, por enquanto aconselho remover o prefixo, executar o comando e depois adicionar novamente para que a IDE reconheça corretamente.
- Refresh dos projetos

## Usando os serviços

Um importante detalhe é que os serviços não ficam disponíveis no mesmo momento que os serviços estão UP, isso deve-se a estratégia utilizada pelo discovery que consistem basicamente em aguardar 3 batimentos. Portanto não se assuste se no primeiro momento parecer que o serviço não ficou disponível. O tempo padrão de espera é de 30 segundos por batimento.

- Discovery
 - http://localhost:8761/
 
- Bar
 - GET http://localhost:8080/bar/{ID HERE}
 - POST http://localhost:8080/bar/
```json
{
  "name" : "Any Name Here"
}
```

- Foo
 - GET http://localhost:8080/foo/{ID HERE} 
 - POST http://localhost:8080/foo/
```json
{
  "maximumPlaces" : 3
}
```

- FooBar
 - POST http://localhost:8080/foobar/
```json
{
  "bar" : 1,
  "foo" : 1
}
```
