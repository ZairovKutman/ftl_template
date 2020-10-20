//package kg.zairov.ftl_template.arhchive;
//
//import freemarker.template.Configuration;
//import freemarker.template.Template;
//import freemarker.template.TemplateException;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.CommandLineRunner;
//import org.springframework.stereotype.Component;
//
//import java.io.*;
//import java.util.HashMap;
//import java.util.Map;
//
//@Component
//public class AppRunner implements CommandLineRunner {
//
//    @Autowired
//    private Configuration markerConfig;
//
//    @Override
//    public void run(String... args) throws Exception {
//        fileBasedMarker();
//        stringBasedMarker();
//    }
//    private void stringBasedMarker() throws IOException, TemplateException {
//        String htmlftl = "<!DOCTYPE html>\n" +
//                "<html lang=\"en\">\n" +
//                "<head>\n" +
//                "    <title>hello </title>\n" +
//                "</head>\n" +
//                "<body>\n" +
//                "    <h2>Hello ${name}</h2>\n" +
//                "</body>\n" +
//                "\n" +
//                "\n" +
//                "</html>";
//
//        StringReader reader = new StringReader(htmlftl);
//        Template template = new Template("hello", reader, markerConfig);
//        Map<String, String>dataMap = new HashMap<>();
//        dataMap.put("name", "World");
//        StringWriter writer = new StringWriter();
//        template.process(dataMap, writer);
//        System.out.println("output:: " + writer.toString());
//
//    }
//    private void fileBasedMarker() throws IOException, TemplateException {
//        FileReader reader = new FileReader(new File("/home/kutman/Desktop/hello.ftl"));
//        Template template = new Template("hello", reader, markerConfig);
//        Map<String, String>dataMap = new HashMap<>();
//        dataMap.put("name", "World");
//        template.process(dataMap, new FileWriter(new File("/home/kutman/Desktop/test.html")));
//    }
//}
