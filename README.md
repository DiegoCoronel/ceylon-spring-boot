# Spring Boot and Ceylon

An example [Spring Boot][] service written in [Ceylon][],
demonstrating the use of discovery, gateway, feign client,
JPA, dependency injection, etc.

_This project is experimental and is being done for fun in
my spare time. So don't worry if the microservices don't make
sense or look like a overengineering for just a few CRUDs._

The project is divided into the following services:

- Gateway
- Discovery
- `Foo`
- `Bar`
- `FooBar` (tests feign client, ribbon, etc)

[Ceylon]: https://ceylon-lang.org
[Spring Boot]: https://projects.spring.io/spring-boot/

### Requirements

You'll need the following prerequisites to get started:

- [Ceylon 1.3.1](https://ceylon-lang.org/download)
- Ceylon IDE 1.3.1 for IntelliJ or Eclipse

### Compiling

To compile the example, you'll need to type `ceylon compile`
in each service subdirectory. For example, to compile the
Gateway service, type:

    cd gateway
    ceylon compile

Alternatively, you can simply import this project into
Eclipse or IntelliJ.

### Starting the services

To start a service, go to the service subdirectory, and
type `ceylon run <name>`. For example, to start the
Discovery service, type:

    cd discovery
    ceylon run discovery

To start a service from within the IDE, go to it's `run()`
function, and Run it.

## How to use the microservices

An important detail is that the services are not available
at the same time that services are UP, this is due to the
strategy used by the discovery that consist basically wait 3
beats. So do not be surprised if at first seem that the
service was not available. The default standby time is 30
seconds per beat.

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

Enjoy and please open issues if you have problems with
configuration.
