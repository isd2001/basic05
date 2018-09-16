package beans;

import java.util.ArrayList;
import java.util.List;

public class MockDao {
	List<String> ids;
	public MockDao() {
		ids = new ArrayList<>();
		ids.add("luffy");
		
		
	}
	
	public boolean exist(String target) {
		if (ids.contains(target)) {
			return true;
		}else {
			return false;
		}
	}

}
