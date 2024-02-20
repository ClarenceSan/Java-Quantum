import com.github.ojplg.skirho.strange.*;

public class QuantumProgramRunner {
    public static void main(String[] args) {
        // Create a quantum execution environment
        QuantumExecutionEnvironment qee = new SimpleQuantumExecutionEnvironment();

        // Create a quantum program with 2 qubits
        Program program = createQuantumProgram();

        // Execute the quantum program and print the result
        executeAndPrintResult(qee, program);
    }

    // Method to create a quantum program
    private static Program createQuantumProgram() {
        Program program = new Program(2);
        Step step = new Step();
        step.addGate(new Hadamard(0)); // Apply Hadamard gate to the first qubit
        step.addGate(new Cnot(0, 1)); // Apply CNOT gate between the first and second qubits
        program.addStep(step);
        return program;
    }

    // Method to execute a quantum program and print the result
    private static void executeAndPrintResult(QuantumExecutionEnvironment qee, Program program) {
        try {
            Result result = qee.runProgram(program);
            System.out.println("Quantum Program Result: " + result);
        } catch (Exception e) {
            System.err.println("Error executing quantum program: " + e.getMessage());
        }
    }
}
