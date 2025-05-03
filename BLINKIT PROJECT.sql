create database blinkit ;

select * from BLINKIT b ;

select  item_identifier from BLINKIT b ;

select count(item_identifier) as total_identifier_count from BLINKIT b ;

select max(item_weight) as max_item_weight from BLINKIT b ;

select min(item_weight) as min_item_weight from BLINKIT b ;

select avg(item_weight) as avg_item_weight from BLINKIT b ;

SELECT COUNT(*) AS Low_Fat_Count FROM BLINKIT b WHERE Item_Fat_Content = 'Low Fat';

select count(*) as regular_fat_count from BLINKIT b where item_fat_content = 'regular' ;

select max(item_mrp) as max_mrp from BLINKIT b ;

select min(item_mrp) as min_mrp from BLINKIT b ;

select item_identifier,item_fat_content,item_mrp,item_type  from BLINKIT b where item_mrp >200 ;

select max(item_mrp) as max_mrp from BLINKIT b where item_fat_content = 'low_fat' 

select min(item_mrp) as min_mrp from BLINKIT b where item_fat_content = 'regular' 

select * from BLINKIT b where item_mrp between 50 and 100 order by item_mrp  ;

select distinct item_fat_content  from BLINKIT b ; 

select distinct item_type from BLINKIT b ; 

select * from BLINKIT b order by item_mrp desc ;

select * from BLINKIT b order by item_outlet_sales asc ; 

select *from BLINKIT b order by item_type asc ;

select item_type  from BLINKIT b where item_type in ('dairy','meat') ; 

select distinct outlet_size  from BLINKIT b ;

select distinct outlet_location_type  from BLINKIT b ;

select distinct outlet_type  from BLINKIT b ;

select item_type , count(*) as item_count
from BLINKIT b 
group by item_type
order by item_count desc ;


select outlet_size , count(*) as out_let_count 
from BLINKIT b 
group by outlet_size
order by out_let_count asc ;


select outlet_type , count(*) as outlet_type_count 
from BLINKIT b 
group by outlet_type 
order by outlet_type_count desc  ;


select outlet_location_type , count(*) as item_count
from BLINKIT b 
group by outlet_location_type
order by item_count desc ;

select item_type, max(item_mrp) as max_item_mrp from blinkit group by item_type ;

select item_type, min(item_mrp) as min_item_mrp from BLINKIT b group by item_type ;

select outlet_establishment_year, min(item_mrp ) as min_item_mrp 
from BLINKIT b 
group by outlet_establishment_year 
order by min_item_mrp desc ;

select b.outlet_establishment_year , max(item_mrp) as max_item_mrp
from BLINKIT b 
group by outlet_establishment_year 
order by max_item_mrp desc ;

select outlet_size , avg(item_mrp) as avg_item_mrp
from BLINKIT b 
group by outlet_size 
order by avg_item_mrp desc ;

select outlet_type , avg(item_mrp ) as avg_mrp
from BLINKIT b 
group by outlet_type 
order by avg_mrp desc ;

select outlet_type , max(item_mrp) as max_mrp 
from BLINKIT b 
group by outlet_type
order by max_mrp ;

select item_type , max(item_weight) as max_weight 
from BLINKIT b 
group by item_type ;

select b.outlet_establishment_year , max(item_weight) as max_item_weight 
from BLINKIT b 
group by outlet_establishment_year ;

select outlet_type , min(item_weight) as min_weght 
from BLINKIT b 
group by outlet_type ;


select outlet_establishment_year , avg(item_weight ) avg_item_weight 
from BLINKIT b 
group by outlet_establishment_year 
order by avg_item_weight desc ;

 select item_type, max(item_outlet_sales) as max_item_sales
 from BLINKIT b 
group by b.item_type


select item_type , min(b.item_outlet_sales) as min_sales 
from BLINKIT b 
group by b.item_type ;

select outlet_establishment_year , max(item_outlet_sales) as max_sales
from blinkit b 
group by outlet_establishment_year 
order by max_sales desc ;

select outlet_size , avg(item_outlet_sales ) as avg_sales
from blinkit b 
group by outlet_size 
order by avg_sales desc ;


select outlet_size , avg(outlet_type) as avg_type 
from blinkit b 
group by outlet_size ;

select item_outlet_sales , item_type , b.outlet_location_type 
from blinkit b 
where outlet_location_type = 'tier 1'; 


select item_outlet_sales , outlet_type , item_fat_content  
from blinkit b 
where item_fat_content = 'low fat' ;


























