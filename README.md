# SpringBoot - Ceylon

An example [SpringBoot][] service written in [Ceylon][], 
demonstrating the use of discovery, gateway, feign client, jpa, dependency injection, etc.

This project is experimental and is being done for fun in my spare time. So dont worry if the microservices do not make sense or looks like a super engineering for just a few CRUD`s.

[Ceylon]: https://ceylon-lang.org
[SpringBoot]: https://projects.spring.io/spring-boot/

The projects were divided:
- Gateway: Testing a single entry that do load balancing for services registered in the discovery.
- Discovery: Test microservices be recorded and become available.
- Foo: Just foo.
- Bar: Just bar.
- FooBar: Just foo and bar (test feign client, ribbon, etc).

## Setup

### Prerequisites

You'll need the following prerequisites to get started:

- [Ceylon 1.3.1+](https://ceylon-lang.org/download)
- [Eclipse Plugin] (https://ceylon-lang.org/download/)
- Import all project as eclipse project

## Starting the service

For each project theres a file `run.ceylon`

    Right-Click ->  Run As -> Ceylon Java Application

It's possible to start the service in any order, but I would suggest to start first _discovery_ service.


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
