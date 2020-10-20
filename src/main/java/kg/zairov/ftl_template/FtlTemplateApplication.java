package kg.zairov.ftl_template;

import kg.zairov.ftl_template.model.Employee;
import kg.zairov.ftl_template.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class FtlTemplateApplication implements CommandLineRunner{

    private final EmployeeRepository employeeRepository;

    public FtlTemplateApplication(EmployeeRepository employeeRepository) {
        this.employeeRepository = employeeRepository;
    }

    public static void main(String[] args) {
        SpringApplication.run(FtlTemplateApplication.class, args);
    }


    @Override
    public void run(String... args) throws Exception {
        employeeRepository.save(new Employee("Koldosh", "Tashiev", "ramesh@gmail.com"));
        employeeRepository.save(new Employee("Nurlan", "Abdikarov", "ramesh@gmail.com"));
        employeeRepository.save(new Employee("Beksar", "Gasanov", "ramesh@gmail.com"));
    }
}
