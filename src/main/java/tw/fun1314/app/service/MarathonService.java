package tw.fun1314.app.service;

import java.time.LocalDateTime;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.fun1314.app.dao.MarathonDao;
import tw.fun1314.app.entity.MarathonStatus;
import tw.fun1314.app.entity.MarathonTeam;

@Service
@Transactional
public class MarathonService {
	
	@Autowired
	private MarathonDao marathonDao;

	public MarathonTeam insert(MarathonTeam team) {
		
		team.setRegisterTime(LocalDateTime.now());
		team.setStatus(MarathonStatus.REGISTERED);
		team.setUuid(UUID.randomUUID().toString());
		
		marathonDao.save(team);
		
		return team;
	}
	
}
