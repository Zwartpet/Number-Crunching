import decimal
import math
import Queue

class Node(object):
	"""docstring for Node"""
	def __init__(self, value, parent, operation):
		self.value =  decimal.Decimal(value)
		self.parent = parent
		self.operation = operation

class Tree(object):
	"""docstring for Tree"""
	def __init__(self, startNumber):
		self.startNumber = decimal.Decimal(startNumber)
		self.rootNode = Node(4, None, None)
		self.queue = Queue.Queue()
		self.queue.put(self.rootNode)
		self.valuesToFind = list(range(1, 101))
		self.alreadyFound = list()

	def fillTree(self):
		while not self.queue.empty():
			node = self.queue.get()

			if node.value in self.valuesToFind:
				print "value: {0} queuesize: {1}".format(node.value, len(self.valuesToFind))
				self.valuesToFind.remove(node.value)
				if len(self.valuesToFind) == 0:
					break

			# print self.queue.qsize()
			# print node.value
			# print node.operation
			# print ""
			if node.value not in self.alreadyFound:
				if node.value._isinteger():
					if node.value < 200000:
						factorialNode = Node(math.factorial(node.value), node, "FACTORIAL")
						self.queue.put(factorialNode)
						#print factorialNode.value

				if node.value >= 2:
					sqrtNode = Node(node.value.sqrt(), node, "SQUAREROOT")
					self.queue.put(sqrtNode)
					
					#print sqrtNode.value
				if not node.value._isinteger():
					floorNode = Node(decimal.Decimal(math.floor(node.value)), node, "FLOOR")
					self.queue.put(floorNode)
			self.alreadyFound.append(node.value)


def isWhole(x):
	if(decimal.Decimal(x)%1 == 0):
		return True
	else:
		return False



print "running..."
tree = Tree(4)
tree.fillTree()
print "done!"

