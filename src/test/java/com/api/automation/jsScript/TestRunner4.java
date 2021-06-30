package com.api.automation.jsScript;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunner4 {
	
	@Test
	public Karate TestRunner() {
		return Karate.run("JSExecuterschemaValidation").relativeTo(getClass());
	}

}
