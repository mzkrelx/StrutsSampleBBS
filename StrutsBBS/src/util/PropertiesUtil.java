package util;

import java.util.ResourceBundle;

public class PropertiesUtil {

    private static PropertiesUtil self = new PropertiesUtil();

    private final String DB_PROP_NAME = "db";

    private final ResourceBundle applicationBundle;

    private PropertiesUtil() {
        applicationBundle = ResourceBundle.getBundle(DB_PROP_NAME);
    }

    public static String getProperty(String key) {
        return self.applicationBundle.getString(key);
    }

}
