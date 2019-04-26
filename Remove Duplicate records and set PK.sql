/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [imdbID]
      ,[username]
      ,[Tags]
      ,[followers]
      ,[following]
  FROM [DMDD Project].[dbo].[TweeterProfile$]
  
  
  
  
  --ALTER TABLE [DMDD Project].[dbo].[Movie$]
  --ALTER COLUMN imdbid nvarchar(255) not null
  ADD PRIMARY KEY (imdbid)


  ; with cte as (
  Select *, ROW_NUMBER() over(  Partition by imdbid order by imdbid) Rn from Movie$

  )

  delete  from cte where rn > 1


