# SpringBoot - Ceylon

This project is experimental and is being done for fun in my spare time. So if the contexts of microserviços do not make sense or looks like a super engineering for just a few CRUD`s 's because I'm just testing some concepts of both the language and the springboot.

The architecture was divided:
- Gateway: Testing a single entry that do load balancing for services registered in the discovery.
- Discovery: Test microservices be recorded and become available.
- Foo: Just foo.
- Bar: Just bar.
- FooBar: Just foo and bar (test feign client, ribbon, etc).

## Setup

Prerequisites:
- Ceylon 1.3.0
- Postgres (9.4)
 - database: ceylon-spring 
 - login: ceylon
 - password: ceylon

Eclipse:
- Import all project as eclipse project.
- For each microservice run: `gradle compileCeylon`
- Refresh all projects in eclipse.

## How to use the microservices

An important detail is that the services are not available at the same time that services are UP, this is due to the strategy used by the discovery that consist basically wait 3 beats. So do not be surprised if at first seem that the service was not available. The default standby time is 30 seconds per beat.

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

Enjoy and please open issues if you have problems with configuration.
