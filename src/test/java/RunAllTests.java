
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class RunAllTests {

    private static final String REPORT_TITLE = "example UI (karate)";
    private static final String GLOBAL_IGNORE_ALL = "~@ignore";
    private static final String GLOBAL_INCLUDE_ALL = "@er-statement";

    @Test()
    public void runAllSeleniumTests() {
        Results results = Runner.parallel(1, "classpath:features", GLOBAL_IGNORE_ALL, GLOBAL_INCLUDE_ALL);
        Assertions.assertTrue(results.getFeatureCount() > 0, "Did not find any cucumber tests to execute.");
        generateReport(results.getReportDir());
        Assertions.assertTrue(results.getFailCount() == 0, "Had at least one test failure.");
    }

    public static void generateReport(String karateOutputPath) {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
        List<String> jsonPaths = new ArrayList<String>(jsonFiles != null && jsonFiles.size() > 0 ? jsonFiles.size() : 0);
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("target"), REPORT_TITLE);
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }

}
