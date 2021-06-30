package com.api.automation.postRequests;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class KarateRunner2 {
	
	@Test
	public Karate TestRunner() {
		
		return Karate.run("postRequest").relativeTo(getClass());
		
	}

}
