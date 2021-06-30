package com.api.automation;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class Runner {
	@Test
	public Karate TestRunner() {
		
		return Karate.run("PostValue").relativeTo(getClass());
	}
}
