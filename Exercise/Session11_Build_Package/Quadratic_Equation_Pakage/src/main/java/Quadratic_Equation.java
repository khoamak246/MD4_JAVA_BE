import java.util.Scanner;

public class Quadratic_Equation {
    private static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {

    }
    public static void calculateQuadraticEquation(){
        System.out.println("Your Quadratic Equation Format Is: ax^2 + bx + c = 0");
        double numberA = getDouble("a");
        double numberB = getDouble("b");
        double numberC = getDouble("c");
        double delta = (numberB * numberB) - (4 * numberA * numberC);
        showResult(delta, numberA, numberB);
    }

    public static double getDouble(String sentence) throws NumberFormatException{
        while (true) {
            try {
                System.out.print("Please enter " + sentence + " : ");
                return Double.parseDouble(sc.nextLine());
            } catch (NumberFormatException e) {
                System.err.println("Invalid number format!");
                try {
                    Thread.sleep(100);
                } catch (InterruptedException ex) {
                    throw new RuntimeException(ex);
                }
            }
        }
    }

    public static void showResult(double delta, double numA, double numB) {
        System.out.println("\n========== RESULT ==========");
        if (delta < 0) {
            System.out.println("Impossible equation!");
        } else if (delta == 0) {
            System.out.println("Equation have double root: x1 = x2 = " + (-numB)/(2 * numA));
        } else {
            double solution_1 = ((-numB) + Math.sqrt(delta)) / (2 * numA);
            double solution_2 = ((-numB) - Math.sqrt(delta)) / (2 * numA);
            System.out.println("Equation have two root:");
            System.out.println("x1 = " + solution_1);
            System.out.println("x2 = " + solution_2);
        }
        System.out.println("========== END PROCESS ==========");
    }
}
