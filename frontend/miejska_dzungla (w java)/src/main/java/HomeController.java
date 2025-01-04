

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home()
    {
        return "index"; // wskazuje na plik index.html w folderze src/main/resources/templates
    }
}
