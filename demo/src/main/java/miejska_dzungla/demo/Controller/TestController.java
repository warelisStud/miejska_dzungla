package miejska_dzungla.demo.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController
{
    @GetMapping("/")
    public String homePage(){
        return "Dziala";
    }


}
