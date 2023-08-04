create or replace function get_AMOUNT_count(len_from int, len_to int)
returns int
language plpgsql
as
$$
declare
   AMOUNT_count integer;
begin
   select count(*) 
   into AMOUNT_count
   from PAYMENT
   where AMOUNT between len_from and len_to;
   
   return AMOUNT_count;
end;
$$;