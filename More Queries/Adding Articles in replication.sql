For removing article

step 1

EXEC sp_changepublication
@publication = 'publication_name',
@property = N'allow_anonymous',
@value = 'false'
GO
EXEC sp_changepublication
@publication = 'publication_name', 
@property = N'immediate_sync',
@value = 'false'
GO


step 2
remove articles through GUI

step 3
Run snapshot agent

Step 4
EXEC sp_changepublication
@publication = 'publication_name', 
@property = N'immediate_sync',
@value = 'True'
GO

EXEC sp_changepublication
@publication = 'publication_name',
@property = N'allow_anonymous',
@value = 'True'
GO

Step 1 2 3 & 4 Same for adding