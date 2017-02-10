package tw.fun1314.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.data.jpa.convert.threeten.Jsr310JpaConverters;

@EntityScan(basePackageClasses = { Fun1314App.class, Jsr310JpaConverters.class })
@SpringBootApplication
public class Fun1314App extends SpringBootServletInitializer {
	
	@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(Fun1314App.class);
    }
	
	public static void main(String[] args) {
		SpringApplication.run(Fun1314App.class, args);
	}

	
	
	
}
