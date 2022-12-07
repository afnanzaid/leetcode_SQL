1667. Fix names in a table

select user_id, 
               concat(upper(left(name,1)),lower(right(name,length(name)-1))) as name
from Users
group by user_id
order_by user_id 