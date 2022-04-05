-- Select fields
SELECT c.region, AVG(e.gdp_percapita) AS avg_gdp
-- From countries (alias as c)
from countries as c
  -- Left join with economies (alias as e)
left join economies as e
    -- Match on code fields
USING (code)
-- Focus on 2010
where e.year = 2010
-- Group by region
group by c.region
-- Order by descending avg_gdp
order by avg_gdp desc;
