//package kg.zairov.ftl_template.arhchive;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import java.util.Arrays;
//
//@Controller
//public class HelloController {
//
//    @GetMapping("/")
//    public String hello(Model model,
//                        @RequestParam(value = "name")String name) {
//        model.addAttribute("name", name);
//        return "hello";
//    }
//
//
//    @GetMapping("/fruits")
//    public String fruits(Model model,
//                        @RequestParam(value = "name")String name) {
//        model.addAttribute("title", "Fruit names");
//        model.addAttribute("names", Arrays.asList("apple", "grape", "mango"));
//        return "fruits";
//    }
//}
