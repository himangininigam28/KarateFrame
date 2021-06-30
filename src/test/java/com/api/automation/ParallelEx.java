package com.api.automation;

import java.util.Arrays;
import java.util.List;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner.Builder;

public class ParallelEx {
	String CLASSPATH="classpath:";
	@Test
	public void ParallelRunner() {
		Builder a=new Builder();
		System.out.println(getPath());
		System.out.println(getTags());
		a.path(getPath());
		
		a.tags(getTags());
		Results r= a.parallel(5);
		
		System.out.println("Total Features - "+r.getFeaturesTotal());
		System.out.println("test Features - "+r.getFeaturesPassed());
		System.out.println("Total Features - "+r.getScenariosPassed());
		
		
		
		Assertions.assertEquals(0, r.getFailCount());
		
		
	}
	
	private List<String> getPath(){
		
		return (List<String>) Arrays.asList(CLASSPATH+System.getProperty("location"));
	}
	private List<String> getTags(){
		
		return (List<String>) Arrays.asList(System.getProperty("tags"));
	}

}
