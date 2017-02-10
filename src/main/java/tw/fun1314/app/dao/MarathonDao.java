package tw.fun1314.app.dao;

import org.springframework.data.repository.CrudRepository;

import tw.fun1314.app.entity.MarathonTeam;

public interface MarathonDao extends CrudRepository<MarathonTeam, Long> {

	
}
