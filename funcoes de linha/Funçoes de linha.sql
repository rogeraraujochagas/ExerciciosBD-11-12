/* exemplo  funçoes de linha */

select*from produto
go

select*from secao
go

select*from preco_produto
go


/* funçao manipulcaçao de string */

select dsc_produto, len (dsc_produto) as 'Total de caracteres'
from produto
go

select dsc_produto, LOWER (dsc_produto) as 'Nome do curso em Minusculo'
from produto
go


select dsc_produto, upper (dsc_produto) as 'Nome do curso em Maiusculo'
from produto
go


select dsc_produto, left (dsc_produto,3) as 'left-descricao produto'
from produto
go


select dsc_produto, right  (dsc_produto,3) as 'right-descricao produto'
from produto
go


select dsc_produto, right  (RTRIM(dsc_produto),1) as 'right/Rtrim-descricao produto'
from produto
go


select dsc_produto, left  (LTRIM(dsc_produto),1) as 'left/ltrim-descricao produto'
from produto
go

/* funçoes de datas  */

select GETDATE() as 'Data Atual';
go

select DATEPART(YEAR,GETDATE()) as 'Ano Atual';
go

select DATEPART(MONTH,GETDATE()) as 'Mes Atual';
go

select DATEPART(DAY,GETDATE()) as 'Dia Atual';
go

select DATEPART(HOUR,GETDATE()) as 'Hora Atual';
go

select DATEPART(MINUTE,GETDATE()) as 'Minutos Atual';
go

select DATEPART(SECOND,GETDATE()) as 'Segundo  Atual';
go

select DATEPART(WEEKDAY,GETDATE()) as 'Dia da semana  Atual';
go

/*funçoes de data com datepart*/ 
select DATEPART(year,dat_inivigencia) 'Ano da data de vigencia'
from preco_produto
go

select DATEPART(MONTH,dat_inivigencia) 'Mes da data de vigencia'
from preco_produto
go


select DATEPART(DAY,dat_inivigencia) 'Dia da data de vigencia',
dat_inivigencia
from preco_produto;
go


select DATEPART(WEEK,dat_inivigencia) 'Semana da data de vigencia'
from preco_produto
go

select Datediff(day,dat_inivigencia,GETDATE()) 'Dias corrido',GETDATE() 'Data Atual',
dat_inivigencia 'Data vigencia produto' 
from preco_produto;
go

/* arredondamento universal*/

select ROUND(45.925 , 2) as 'Arredondamento acima',
  ROUND(45.925 , 2) as 'Arredondamento para abaixo',
  ROUND(45.923 , 0) as 'Arredondamento na 2a casa da milhar',
  ROUND(45.923 , 1) as 'Arredondamento na centena',
  ROUND(44.923 , -1) as 'Arredondamento na milhar para baixo',
  ROUND(45.923 , -1) as 'Arredondamento para cima';


  /* funçoes de usuario do sistema*/

  select * from sysusers;
  go
  select USER_NAME();
  go
  select name from sysusers where name = USER_NAME(1);
  go
 select name from sysusers where name = USER_NAME(3);
  go

  /* usuario logado no bd*/

  select SYSTEM_USER;

  declare @sys_usr char(30);
set @sys_usr = SYSTEM_USER;
select 'O usuario logado no bd e:',@sys_usr;

/*suser_name ([server_user_id])*/

select SUSER_NAME ()
select SUSER_NAME(1)
