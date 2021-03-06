SELECT NATION_NAME AS [FIRED MANAGER'S NATION], MANAGER.MANAGER_NAME
FROM NATION
JOIN MANAGER ON NATION.NATION_ID=MANAGER.NATION_ID
JOIN TEAM_MANAGER ON MANAGER.NATION_ID=TEAM_MANAGER.MANAGER_ID
WHERE TEAM_MANAGER.END_DATE IS NOT NULL
GROUP BY NATION.NATION_NAME, MANAGER.MANAGER_NAME