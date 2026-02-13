select * from users;
select * from movies;
select * from subscriptions;
select * from views;

--Total number of users
select count(*) as total_users 
from users;

--Total subscription revenue
select sum(price) as subscription_revenue 
from subscriptions;

--Revenue by plan type
select plan, sum(price) as revenue 
from subscriptions 
group by plan 
order by revenue desc;

--Most watched movie
select m.movie_id, m.title, count(v.movie_id) as watch_count
from movies m
left join views v
on m.movie_id = v.movie_id
group by m.movie_id, m.title
order by watch_count desc
limit 1;

--Top 3 most watched movies
select m.movie_id, m.title, count(v.movie_id) as watch_count
from movies m
left join views v
on m.movie_id = v.movie_id
group by m.movie_id, m.title
order by watch_count desc
limit 3;

--Average watch duration per user
select u.user_id, u.name, round(avg(v.watch_duration),2) as avg_watch_duration 
from views v
join users u
on u.user_id = v.user_id
group by u.user_id, u.name
order by avg_watch_duration desc;

--Total watch time per movie
select m.movie_id, m.title, coalesce(sum(v.watch_duration),0) as watch_time
from movies m
left join views v
on m.movie_id = v.movie_id
group by m.movie_id, m.title
order by watch_time desc;

--Most popular genre
select m.genre, count(v.movie_id) as total_views
from movies m
join views v
on m.movie_id = v.movie_id
group by genre
order by total_views desc
limit 1;

--Users who watched more than 2 movies
select u.user_id, u.name
from users u
join views v
on u.user_id = v.user_id
group by u.user_id, u.name
having count(v.movie_id)>2;

--Active users in April 2025
select distinct u.user_id, u.name
from users u
join views v
on u.user_id = v.user_id
where v.watch_date between '2025-04-01' and '2025-04-30';

--Rank Movies by Watch Count
select m.movie_id, m.title, count(v.view_id) as total_views,
rank() over(order by count(v.view_id) desc) as movie_rank
from movies m
left join views v
on m.movie_id = v.movie_id
group by m.movie_id, m.title
order by movie_rank;

--Percentage Contribution of Each Genre
select m.genre, count(v.view_id) as total_views,
round(count(v.view_id)*100/sum(count(v.view_id)) over(),2) as percentage_contribution
from movies m
left join views v
on m.movie_id=v.movie_id
group by m.genre
order by percentage_contribution desc;

--Find Top 2 Most Engaging Users (By Total Watch Time)
select u.user_id, u.name, sum(v.watch_duration) as watch_time,
dense_rank() over(order by sum(v.watch_duration) desc) as engagement_rank
from users u
join views v
on u.user_id = v.user_id
group by u.user_id, u.name
order by engagement_rank
limit 2;