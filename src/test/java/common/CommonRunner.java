package common;

import com.intuit.karate.junit5.Karate;

class CommonRunner {
    
    @Karate.Test
    Karate testLogin() {
        return new Karate().feature("login").relativeTo(getClass());
    }
    
}
