package com.api.automation.getrequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class KarateRunner1 {
	
	@Test
	public Karate runTest() {
		
		return Karate.run("get2").relativeTo(getClass());
	}

}
