# Topological sort

helps us sort elements if there's dependencies b/w two. Lets say if b is dependent on a then a comes first in Topological ordering.


in ruby we have tsort inbuild. Its used by bundler and gem dependencies. also for callbacks tsort is being used.

needs two methods. 

```ruby
def tsort_each_node(&block)
end
def tsort_each_child(name, &block)
end
```
