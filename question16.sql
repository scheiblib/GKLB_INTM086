SELECT TOP (1)
  P.TEAM_ID,
  NUMPLAYERS = COUNT(*),
  NUMENGLISHPLAYERS = COUNT(N.NATION_ID),
  HIGHESTSCORE = M.HOME_SCORE
FROM (
    SELECT TOP (1) *
    FROM MATCH M
    ORDER BY
      M.HOME_SCORE DESC
) M
JOIN PLAYER P ON M.HOME_TEAM_ID = P.TEAM_ID
LEFT JOIN NATION N ON P.NATION_ID = N.NATION_ID
    AND N.NATION_NAME = 'ENGLAND'
GROUP BY
  M.HOME_TEAM_ID,
  P.TEAM_ID,
  M.HOME_SCORE;
