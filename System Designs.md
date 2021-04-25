# System Design

### UML

1. Behavioural diagrams
	- Usecase diagrams
		- system boundary
		- actors
		- usecase
		- extend
		- include

	- Sequence diagrams
	  - dotted line explains return value

		These diagrams tracks interaction between objects. Its helpful for dynamic modeling which is represented by tracking states, transition b/w states and events that trigger transitions

	- Activity diagrams
		captures the process flow. its helpful for functional modeling, means to represent flow of values from external inputs, through operations and internal data stores to external outputs.


2. Structural diagrams
	- Class diagrams
		[click here](https://www.educative.io/api/collection/5668639101419520/5692201761767424/page/6235413119238144/image/6207956561428480.png)
		- aggregation: a has instance of b. b can exist without a
		- composition: a has instance of b. b cannot exist without a



First we got to find actors in the system, then write down use cases, identify the classes through class diagrams then write down activity diagrams.

If requirement's big then write use case diagrams. these helps easily identify the boundary contexts.

We can segregate any requirement into two cateogries.

1. Functional
	- all usecases
2. Non Functional
	- availability
	- latency
	- consistency
	- reliability

### Instagram

- Design considerations
	- system reads heavily. Eficient management of storage. low latency and 100% reliable

- Capacity estimation
  - Assume max number of users/day. Registered
	- Take estimations per day/10years

- High level System design
	- Upload photos s3 and store links/meta in db.

-  Database schema.
	- as we have lots of data columns, its better to choose wide-column datastore like cassandra.They offer relaibility

- Component Design
	photo uploads can be slow but reads should be faster. all writes should hit other server just to maintain good speeds for reads and not to hog requests.

- Data sharding

