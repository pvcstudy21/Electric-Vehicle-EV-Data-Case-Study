use ev_cardata;
select * from overall_info;
select * from specifications;
select brand,model,price_euro from overall_info order by price_euro desc;
select brand, model, accelaration, top_speed from specifications order by top_speed desc;

select brand,model,power_train,accelaration from specifications where power_train = 'awd' order by accelaration;
select brand,model,accelaration as 'accelaration(0-100)' from specifications order by top_speed desc,accelaration; 
select * from overall_info where body_Style = 'suv';
select brand, count(model) from overall_info group by brand;
select brand, model, accelaration, top_speed from specifications where accelaration < 4 and top_speed > 200; 
select brand,model,overall_range from specifications where overall_range between 400 and 500 order by overall_range desc;
select distinct body_style from overall_info;
select * from overall_info order by price_euro desc limit 1,1; 
select * from overall_info where brand like '%a' or brand like '%i';
select brand, model from specifications where brand like '__l%'; 
select count(*) as NumberOfModels ,power_train from specifications group by power_train;
select max(overall_range) as MaxRange,min(overall_range) as MinRange, Avg(overall_range)as AvgRange from specifications;
select floor(avg(accelaration)) as Seconds from specifications;
select upper(brand) as Capital,upper(model) as edition,Upper(segment) as Class from overall_info;
select upper(substring(brand,1,3)) as shortform,upper(model) from overall_info;
select max(price_euro) from overall_info where price_euro <(select max(price_euro) from overall_info);
select*from overall_info where body_style not in ('sedan','suv','hatchback') order by price_euro desc;
create view cardetails as select brand,model,segment from overall_info;
drop view cardetails;
select o.model,s.overall_range,o.price_euro from overall_info as o inner join specifications as s on o.brand = s.brand where price_euro between 30000 and 60000 and overall_range between 300 and 500;
select o.brand,o.model,s.accelaration,s.top_speed,o.price_euro from overall_info as o join specifications as s on o.brand = s.brand where price_euro <50000 and top_speed > 150 limit 5;
select o.model,o.body_style,o.segment,s.power_train from overall_info as o join specifications as s on o.brand = s.brand group by o.segment having