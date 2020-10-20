package kg.zairov.ftl_template.controller;

import kg.zairov.ftl_template.model.Country;
import kg.zairov.ftl_template.repository.CountryRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@Controller
public class CountryController {

    private final CountryRepository countryRepository;

    public CountryController(CountryRepository countryRepository) {
        this.countryRepository = countryRepository;
    }

    @GetMapping("/country")
    public ModelAndView showCountry(Model model) {
        List<Country> countryList = this.countryRepository.findAll();
        Map<String, Object> params = new HashMap<>();
        if (Objects.nonNull(countryList)) {
            params.put("countryList", countryList);
            return new ModelAndView("showCountryList", params);
        }
        else
            return new ModelAndView("error/404");
    }
}
