--
select * from Report1order group by [Grade] go
--

--
select [Student name], avg([Grade] ) as N'Rating' 
from Report1
group by [Student name] 
go
--