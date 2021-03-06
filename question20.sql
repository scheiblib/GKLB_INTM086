SELECT TOP 1 TEAM.TEAM_NAME
FROM TEAM
JOIN MATCH
ON MATCH.HOME_TEAM_ID = TEAM.TEAM_ID
JOIN GOAL
ON GOAL.MATCH_ID = MATCH.MATCH_ID
JOIN PLAYER
ON PLAYER.PLAYER_ID = GOAL.PLAYER_ID
JOIN NATION 
ON NATION.NATION_ID = PLAYER.NATION_ID
WHERE NATION.NATION_NAME = 'England'
GROUP BY TEAM.TEAM_NAME
ORDER BY COUNT(PLAYER.PLAYER_ID) DESC