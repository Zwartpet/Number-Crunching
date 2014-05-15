import decimal
import math
import Queue
import time

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
				self.valuesToFind.remove(node.value)
				print "value: {0} tofindsize: {1}".format(node.value, len(self.valuesToFind))
				printNode(node)
				if len(self.valuesToFind) == 0:
					print ""
					print "Found all numbers!"
					break

			if node.value not in self.alreadyFound:
				if node.value._isinteger():
					if node.value < 30000:
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
		print "while loop is done!"


def isWhole(x):
	if(decimal.Decimal(x)%1 == 0):
		return True
	else:
		return False

def printNode(node):
	operationList = list()
	while node.parent is not None:
		operationList.append(node.operation)
		node = node.parent

	operationList.reverse()
	print "Sequence: {0}".format(operationList)



print "running..."
t0 = time.time()
tree = Tree(4)
tree.fillTree()
t1 = time.time()
totalTime = t1 - t0
print "total running time: {0}".format(totalTime)

