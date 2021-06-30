package com.api.automation.Put;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunner4 {
	
	@Test
	public Karate TestRunner() {
		return Karate.run("DataOutline").relativeTo(getClass());
	}

}
