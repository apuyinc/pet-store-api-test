import com.intuit.karate.junit5.Karate;

class AllTestsRunner {
    
    @Karate.Test
    Karate testUsers() {
        return new Karate().relativeTo(getClass());
    }
    
}
