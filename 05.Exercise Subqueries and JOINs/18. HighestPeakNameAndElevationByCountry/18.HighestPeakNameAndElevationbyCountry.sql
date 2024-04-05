 SELECT TOP (5) k.Country,	k.[Highest Peak Name],	k.[Highest Peak Elevation],	Mountain
      FROM(
          SELECT CountryName AS Country,  
                 ISNULL( p.PeakName,'(no highest peak)' )AS [Highest Peak Name],
                 ISNULL( MAX(p.Elevation), 0)  AS [Highest Peak Elevation],
                 ISNULL(m.MountainRange, '(no mountain)')AS Mountain,	
                 DENSE_RANK() OVER(PARTITION BY CountryName ORDER BY   (p.Elevation)        DESC ) AS Ranked
            FROM Countries AS c
                  LEFT JOIN MountainsCountries AS mc ON c.CountryCode =               mc.CountryCode
                  LEFT JOIN Mountains AS m ON mc.MountainId = m.Id
                  LEFT JOIN Peaks AS p ON m.Id = p.MountainId
          GROUP BY CountryName, PeakName, m. MountainRange , p.Elevation) AS k
   ORDER BY   Country, [Highest Peak Name]
 

