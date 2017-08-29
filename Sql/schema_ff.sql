use fantasy
go

if not exists (
select SCHEMA_NAME
from INFORMATION_SCHEMA.SCHEMATA
where SCHEMA_NAME = 'ff'
)
begin
exec sp_executesql N'create schema ff'
end

