import com.github.ojplg.skirho.strange.*;

public class Main {
    public static void main(String[] args) {
        final QuantumExecutionEnvironment qee = new SimpleQuantumExecutionEnvironment();
        final Program program = new Program(2);
        final Step step = new Step();
        step.addGate(new Hadamard(0));
        step.addGate(new Cnot(0, 1));
        program.addStep(step);
        final Result result = qee.runProgram(program);
        System.out.println(result);
    }
}

