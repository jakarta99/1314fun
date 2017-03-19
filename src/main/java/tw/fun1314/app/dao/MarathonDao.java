package tw.fun1314.app.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import tw.fun1314.app.entity.MarathonTeam;

public interface MarathonDao extends JpaRepository<MarathonTeam, Long> {

	public MarathonTeam findByTeamName(String teamName);
}
