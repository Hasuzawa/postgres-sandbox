create trigger
before insert or update
on X
for each row
execute
	function set_updated_at();
