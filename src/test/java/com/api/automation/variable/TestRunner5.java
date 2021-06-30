package com.api.automation.variable;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunner5 {

	@Test
	public Karate TestRunner() {
		
		return Karate.run("GetWithVariables").relativeTo(getClass());
	}
}
