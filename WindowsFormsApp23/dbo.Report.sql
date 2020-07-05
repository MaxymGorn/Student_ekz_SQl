create view Report as
select  
st.Name as N'Style name',
per.Name as N'Performer name'
from Style st inner join Musicdisc md on st.Id=md.StyleId, Performer per inner join Musicdisc md2 on per.Id=md2.PerformerId