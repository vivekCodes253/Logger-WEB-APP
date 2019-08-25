package com.viv.log;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;



public class LoggerMain {
	public static Logger logger = Logger.getLogger(LoggerMain.class);
	static final String LOG_PROPERTIES_FILE = "log4j.properties";
	
	public static void initializeLogging() {
		BasicConfigurator.configure();
		initializeLogger();
	}
	
	private static void initializeLogger() {
        Properties logProperties = new Properties();
        try {

            logProperties.load(new FileInputStream(LOG_PROPERTIES_FILE));
            PropertyConfigurator.configure(logProperties);
            logger.warn("New session initiated");
        } catch (IOException e) {
            logger.error("Unable to load logging property :", e);
        }
       
    }
}
