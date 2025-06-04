import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        Reader reader;
        if (args.length > 0) {
            reader = new FileReader(args[0]);
        } else {
            reader = new InputStreamReader(System.in);
        }
        ScannerCPF scanner = new ScannerCPF(reader); // nome da classe mudou para cpf
        while (scanner.yylex() != -1) {
            // o scanner imprime os resultados
        }
    }
}