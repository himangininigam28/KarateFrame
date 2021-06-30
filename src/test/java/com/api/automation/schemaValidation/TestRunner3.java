package com.api.automation.schemaValidation;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunner3 {
	
	@Test
	public Karate TestRunner() {
		return Karate.run("schemaValidation").relativeTo(getClass());
	}

}
