select run_date,count(1) from sysjobhistory
group by run_date

--2310604

use msdb
go 
declare @batchsize int = 10000
while 1 = 1
begin
delete top (@batchsize)
from sysjobhistory
where run_date < '20190711';
if @@ROWCOUNT < @batchsize break
end

