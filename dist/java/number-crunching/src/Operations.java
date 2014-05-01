import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;

/**
 * @author Rick Slot
 */
public class Operations {

    public static BigDecimal floor(BigDecimal b){
        return b.setScale(0, RoundingMode.FLOOR);
    }

    /*
    * 9901 is the biggest number a factorial can be taken of before a crash!
    */
    public static BigDecimal factorial(BigDecimal b){
        if(b.compareTo(new BigDecimal("9902")) == 1){
            return b;
        }
        BigDecimal result;
        if(BigDecimal.ONE.equals(b)){
            return b;
        }
        result = factorial(b.subtract(BigDecimal.ONE)).multiply(b);
        return result;
    }

    private static final BigDecimal SQRT_DIG = new BigDecimal(200);
    private static final BigDecimal SQRT_PRE = new BigDecimal(10).pow(SQRT_DIG.intValue());

    private static BigDecimal sqrtNewtonRaphson  (BigDecimal c, BigDecimal xn, BigDecimal precision){
        BigDecimal fx = xn.pow(2).add(c.negate());
        BigDecimal fpx = xn.multiply(new BigDecimal(2));
        BigDecimal xn1 = fx.divide(fpx,2*SQRT_DIG.intValue(),RoundingMode.HALF_DOWN);
        xn1 = xn.add(xn1.negate());
        BigDecimal currentSquare = xn1.pow(2);
        BigDecimal currentPrecision = currentSquare.subtract(c);
        currentPrecision = currentPrecision.abs();
        if (currentPrecision.compareTo(precision) <= -1){
            return xn1;
        }
        return sqrtNewtonRaphson(c, xn1, precision);
    }

    public static BigDecimal bigSqrt(BigDecimal c){
        if(c.compareTo(new BigDecimal("217121226262513110140512804188888888868180889651994279473014436421579271977636924214040854638853933592100684492485760259704960698669664112386327171371044793411422510432302886550846753009292307083661027750255221282787441841615268051879797503337337505625637404613885393359210068449248576025970496069866966411238632717137104479341")) == 1){
            return c;
        }
        return sqrtNewtonRaphson(c,new BigDecimal(1),new BigDecimal(1).divide(SQRT_PRE));
    }

    public static boolean isIntegerValue(BigDecimal bd) {
        return bd.signum() == 0 || bd.scale() <= 0 || bd.stripTrailingZeros().scale() <= 0;
    }
}
