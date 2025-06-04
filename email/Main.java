import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        Reader reader;
        if (args.length > 0) {
            reader = new FileReader(args[0]);
        } else {
            reader = new InputStreamReader(System.in);
        }
        ScannerEmail scanner = new ScannerEmail(reader); // nome da classe mudou para email
        while (scanner.yylex() != -1) {
            // o scanner imprime os resultados
        }
    }
}