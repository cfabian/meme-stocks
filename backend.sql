CREATE TABLE Memes
(
memeID int not null PRIMARY KEY identity,
memeName nvarchar(max),
);

CREATE TABLE memeStats
(
memeStatsID int not null PRIMARY KEY identity,
memeID int,
timestamp datetime2,
score int,
foreign key(memeID) references memes(memeID)
);



CREATE PROCEDURE getMemes
AS
BEGIN

select *
from memes

END








CREATE PROCEDURE getAllMemeStats
AS
BEGIN

select *
from memeStats

END



CREATE PROCEDURE getMemeStat
@memeID int

AS
BEGIN

select *
from memeStats
where memeID = @memeID

END



CREATE PROCEDURE addNewMeme
@memeName nvarchar(max)
AS
BEGIN

insert into memes(memeName)
values(@memeName);

END