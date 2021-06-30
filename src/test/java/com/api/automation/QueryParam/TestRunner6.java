package com.api.automation.QueryParam;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunner6 {
	
	@Test
	public Karate RunnerMe() {
		return Karate.run("f1").relativeTo(getClass());
	}

}
