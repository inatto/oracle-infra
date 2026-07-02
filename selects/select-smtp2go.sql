SELECT *
FROM smtp2go
WHERE 1 = 1
and username = 'api-207565AC5AEA'
ORDER BY id DESC
;

begin
delete from smtp2go where username = 'api-207565AC5AEA';
end;



SELECT *
FROM wksp_sindicatto.smtp2go
WHERE subject = 'ASAnews - 20% Dr Lava Tudo, 10% Taua, 12% Morana, ate 20% Hot Beach e 20% Royal Tulip/Golden Tulip'

