 select *
 from survey
 limit 10;
 
select question,
	count(distinct user_id)
from survey
group by question;

select *
from quiz
limit 5;

select *
from home_try_on
limit 5;

select *
from purchase
limit 5;

select distinct q.user_id,
	h.user_id is not null as 'is_home_try_on',
  h.number_of_pairs,
  p.user_id is not null as 'is_purchase'
from quiz q
left join home_try_on h
	on q.user_id = h.user_id
left join purchase p
	on p.user_id = q.user_id
limit 10;

select style,
count(*) 
from quiz
group by style;

select fit,
count(*)
from quiz
group by fit;

select shape,
count(*)
from quiz
group by shape;

select color,
count(*)
from quiz
group by color;

select number_of_pairs,
count(*)
from home_try_on
group by number_of_pairs;

select product_id,
count(*)
from purchase
group by product_id;

select style,
count(*)
from purchase
group by style;

select model_name,
count(*)
from purchase
group by model_name;

select color,
count(*)
from purchase
group by color;