create or replace function f_getmetadata
return varchar2
as
v_out varchar2;
begin
	select fname 
	into v_out
	from f_metadata
	where date_recieved = sysdate;
	
	return v_out;
end;
