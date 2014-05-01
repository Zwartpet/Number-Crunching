import java.math.BigDecimal;
import java.util.*;

/**
 * @author Rick Slot
 */
public class Tree extends Thread{

    private String startNumber;
    private String endNumber;
    private Node rootNode;
    private Node finalNode;
    Queue<Node> queue = new LinkedList<>();
    Set<BigDecimal> numbersToFind = new HashSet<>();
    Set<BigDecimal> alreadyVisited = new HashSet<>();

    public Tree(String start, String end){
        this.startNumber = start;
        this.endNumber = end;
        this.rootNode = new Node(null, new BigDecimal(startNumber), null);
        queue.add(this.rootNode);

        for(int i = 1; i < 100; i++){
            numbersToFind.add(new BigDecimal("" + i));
        }
    }

    public void fillTree(){
        while(queue.size() != 0){
            Node node = queue.remove();

            alreadyVisited.add(node.getValue());

            if(numbersToFind.contains(node.getValue())){
                numbersToFind.remove(node.getValue());
                printNodeSequence(node);
                if(numbersToFind.size() == 0){
                    break;
                }
            }

            if(Operations.isIntegerValue(node.getValue())){
                if(node.getValue().compareTo(BigDecimal.ONE) != 0){
                    BigDecimal newNumber = Operations.factorial(node.getValue());
                    if(!alreadyVisited.contains(newNumber)){
                        node.setFactorialNode(new Node(node, newNumber, OperationType.FACTORIAL));
                        queue.add(node.getFactorialNode());
                    }
                }
            }
            if(!Operations.isIntegerValue(node.getValue())){
                BigDecimal newNumber = Operations.floor(node.getValue());
                if(!alreadyVisited.contains(newNumber)){
                    node.setFloorNode(new Node(node, newNumber, OperationType.FLOOR));
                    queue.add(node.getFloorNode());
                }
            }
            BigDecimal newNumber = Operations.bigSqrt(node.getValue());
            if(!alreadyVisited.contains(newNumber)){
                node.setSquareRootNode(new Node(node, Operations.bigSqrt(node.getValue()), OperationType.SQUARE_ROOT));
                queue.add(node.getSquareRootNode());
            }
        }
    }

    public void printNodeSequence(Node node){
        System.out.println("Found: " +  node.getValue());
        List<OperationType> sequence = new ArrayList<>();
        while(node != null){
            if(node.getOperationType() != null){
                sequence.add(node.getOperationType());
            }
            node = node.getParentNode();
        }
        Collections.reverse(sequence);
        for(OperationType type : sequence){
            System.out.print(type.toString() + ", ");
        }
        System.out.println("\n" + numbersToFind.size() +" numbers left to find!");
        System.out.println("queue size: " + queue.size());
        System.out.println();
    }

    public void run() {
        System.out.println("start thread" + this.endNumber);
        fillTree();
        printNodeSequence(null);
        System.out.println();
    }
}