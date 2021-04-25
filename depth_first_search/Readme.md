Trees: 
Binary search: ()
perfect if 
-> total no of nodes doubles each level(h)
-> h = 2^0 = 1 = log2(n+1) ; n = (2^h) - 1; ( half of our nodes are on the last level. )


Traversals:

pre order: 
it starts from root, go around tree counterclockwise.
print when we touch left side of circle

<code>
	def traverse(tree):
	  print(tree.val)
	  traverse(tree.left)
	  traverse(tree.right)
</code>


in order:
it starts from root, go around tree counterclockwise.
print when we touch bottom side of circle
<code>
	def traverse(tree):
	  traverse(tree.left)
	  print(tree.val)
	  traverse(tree.right)
</code>


post order:
it starts from root, go around tree counterclockwise.
print when we touch right side of circle
<code>
	def traverse(tree):
	  traverse(tree.left)
	  traverse(tree.right)
	  print(tree.val)
</code>
