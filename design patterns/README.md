# Rules
- Separate out parts of code that vary or change from those that remain the same.
- Always code to an interface and not against a concrete implementation.
- Encapsulate behaviors as much as possible.
- Favor composition over inheritance. Inheritance can result in explosion of classes and also sometimes the base class is fitted with new functionality that isn't applicable to some of its derived classes.
- Interacting components within a system should be as loosely coupled as possible.
- Ideally, class design should inhibit modification and encourage extension.
- Using patterns in your day to day work, allows exchanging entire implementation concepts with other developers via shared pattern vocabulary.

# Patterns
##### Creational
This helps create objects in classes
- Builder Pattern
construction business, we have builders and directors. Directors has many builders and they ask builders to do the work in specific way. But only the builders know how to do it.
```ruby
class House
	def construction(sand, brick, water, wall, garden, trees, place)
	end
end
# here above construction is expandable and not very friendly. So we move these into methods for each builder and they know how to do it. When implementing director pass that director to constructor and instruct them. Its directors job to get builders and build house.
# eg:
class Director
	def initialize(builder)

	end
	def build_house
		builder.build_wall()
		builder.build_garden()
		# ...
	end
end
class House
	def constructor(director)
		director.build_house
	end
end
```
- Prototype pattern:
for cloning purposes
- Singleton Pattern:
for global access to the entire application
- Abstract factory pattern:
all the products are being made in factory. so creation of new objects are being done inside factory means inside the parent/abstract class.
Eg: Logistics -> [RoadLogistics(trasport-> new truck()), SeaLogistics(transport->new ship())]

##### Structural
Create classes best way 
- Adapter pattern
- Bridge pattern
- Composite pattern
- Decorator pattern
- Facade pattern
- Flywheel pattern
- Proxy pattern

##### Behavioural
Helps with interaction of classes and objects best way possible
- Interpreter Pattern
- Template Pattern
- Chain of Responsibility Pattern
- Command Pattern
- Iterator Pattern
- Mediator Pattern
- Memento Pattern
- Observer Pattern
- State Pattern
- Strategy Pattern
- Visitor Pattern