import java.math.BigDecimal;

/**
 * @author Rick Slot
 */
public class Node {

    private Node parentNode;
    private Node factorialNode;
    private Node floorNode;
    private Node squareRootNode;
    private BigDecimal value;
    private OperationType operationType;

    public Node(Node parent, BigDecimal value, OperationType type){
        this.parentNode = parent;
        this.value = value;
        this.operationType = type;
    }

    public Node getParentNode() {
        return parentNode;
    }

    public void setParentNode(Node parentNode) {
        this.parentNode = parentNode;
    }

    public Node getFactorialNode() {
        return factorialNode;
    }

    public void setFactorialNode(Node factorialNode) {
        this.factorialNode = factorialNode;
    }

    public Node getFloorNode() {
        return floorNode;
    }

    public void setFloorNode(Node floorNode) {
        this.floorNode = floorNode;
    }

    public Node getSquareRootNode() {
        return squareRootNode;
    }

    public void setSquareRootNode(Node squareRootNode) {
        this.squareRootNode = squareRootNode;
    }

    public BigDecimal getValue() {
        return value;
    }

    public void setValue(BigDecimal value) {
        this.value = value;
    }

    public OperationType getOperationType() {
        return operationType;
    }

    public void setOperationType(OperationType operationType) {
        this.operationType = operationType;
    }
}
