----196---Delete Duplicate Emails--------

Delete 
From Persons 
where id not in 
               (select Min(id) id 
                From (select id From Person Group by email))