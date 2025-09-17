-- Add a defaulted column
    alter table mytable add column defaulted int;
    
    update mytable
    set defaulted= case
						when credit_history=1 then 0
                        when credit_history=0 then 1
                        else -1
					end
	where loan_id > 0;
    