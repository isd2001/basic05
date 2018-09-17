package beans;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class MockDao {
	List<String> ids;


	public MockDao() {
		ids = new ArrayList<>();
		ids.add("luffy");


	}
	public List<Map> findList(int cnt){
		List<Map> list = new ArrayList<>();

		for (int i = 0; i < cnt; i++) {
			Map map = new HashMap<>();
			map.put("key",UUID.randomUUID().toString().split("-")[0]);		//String
			map.put("price", (int)(Math.random()*30)*100);					//Number
			map.put("recommend", Math.random()>0.5);						//boolean
			list.add(map);
		}

		return list;
	}



	public boolean exist(String target) {
		if (ids.contains(target)) {
			return true;
		}else {
			return false;
		}
	}

}
