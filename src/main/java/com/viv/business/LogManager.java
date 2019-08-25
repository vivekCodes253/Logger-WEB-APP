package com.viv.business;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.List;

public class LogManager {

	
	public static List<String> getLogs() {
		List<String> logs = fileRead("./mylog.log");	
		return logs;
	}
	
	
	private static List<String> fileRead(String filepath)
    {
		List<String> read_list = new ArrayList<>();
        File file = new File(filepath);
        String str;
        try{
            BufferedReader in = new BufferedReader(new FileReader(file)); 
            while ((str = in.readLine()) != null) 
            {
                read_list.add(str);     
            }   
        }
        catch(Exception e)
        {
            
        }

        return read_list;
    }


	public static List<String> getFilteredLogs(String filterType) {
		filterType = filterType.toUpperCase();
		List<String> tempLogs = getLogs();
		List<String> filteredLogs = new ArrayList<>();
		
		for(String log : tempLogs) {
			if(log.contains(filterType))
				filteredLogs.add(log);
		}
		return filteredLogs;
	}



}
