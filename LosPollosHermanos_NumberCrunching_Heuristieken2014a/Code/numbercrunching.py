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
		self.alreadyFound = dict()
		self.totalSteps = 0

	def fillTree(self):
		while not self.queue.empty():
			node = self.queue.get()

			if node.value in self.valuesToFind:
				self.valuesToFind.remove(node.value)
				print "Value found:{0}\nNumbers left: {1}".format(node.value, len(self.valuesToFind))
				self.printNode(node)
				if len(self.valuesToFind) == 0:
					print ""
					print "Found all numbers!"
					break

			if self.alreadyFound.get(str(node.value), None) is None:
				if node.value._isinteger():
					if node.value < 30000:
						factorialNode = Node(math.factorial(node.value), node, "FAC")
						self.queue.put(factorialNode)

				if node.value >= 2:
					sqrtNode = Node(node.value.sqrt(), node, "SQR")
					self.queue.put(sqrtNode)
					
				if not node.value._isinteger():
					floorNode = Node(decimal.Decimal(math.floor(node.value)), node, "FLO")
					self.queue.put(floorNode)
			self.alreadyFound[str(node.value)] = node.value
		print "while loop is done!"

	def printNode(self, node):
		operationList = list()
		while node.parent is not None:
			operationList.append(node.operation)
			node = node.parent

		operationList.reverse()
		print "Steps: {0}".format(len(operationList))
		print "Sequence: {0}".format(operationList)
		self.totalSteps += len(operationList)
		print ""


def isWhole(x):
	if(decimal.Decimal(x)%1 == 0):
		return True
	else:
		return False






print "running... Finding 1-100 with the limit 30,000"
t0 = time.time()
tree = Tree(4)
tree.fillTree()
t1 = time.time()
totalTime = t1 - t0
print "total running time: {0}".format(totalTime)
print "Total steps: {0}".format(tree.totalSteps)

