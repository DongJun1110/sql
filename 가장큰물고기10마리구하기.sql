select ID, LENGTH
from FISH_INFO
order by IFNULL(LENGTH,0) desc, ID
limit 10
