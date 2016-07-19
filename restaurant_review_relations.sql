select
  users.name as author,
  restaurants.name as restaurant,
  reviews.title as review_title,
  reviews.review as review,
  reviews.stars as stars
from
  users,
  restaurants,
  reviews
where
  users.id = reviews.author_user_id and
  restaurants.id = reviews.restaurant_id
;
--average stars by restaurant
select
  users.id,
  users.name,
  avg(reviews.stars) as average_stars
from
 users,
 restaurants,
 reviews
where
  users.id = reviews.author_user_id and
  restaurants.id = reviews.restaurant_id
group by
  users.id
;

--average stars by user
select
  restaurants.id,
  restaurants.name,
  avg(reviews.stars) as average_stars
from
 users,
 restaurants,
 reviews
where
  users.id = reviews.author_user_id and
  restaurants.id = reviews.restaurant_id
group by
  restaurants.id
;

--Lowest star rating by user
select
  users.id,
  users.name,
  min(reviews.stars) as lowest_stars_rating
from
 users,
 restaurants,
 reviews
where
  users.id = reviews.author_user_id and
  restaurants.id = reviews.restaurant_id
group by
  users.id
;

--Count number of restaurant reviews
select
  restaurants.id,
  restaurants.name,
  count(reviews.restaurant_id) as number_of_reviews
from
 users,
 restaurants,
 reviews
where
  users.id = reviews.author_user_id and
  restaurants.id = reviews.restaurant_id
group by
  restaurants.id
;

--Number of restaurants in each category and count
select
  restaurants.id,
  restaurants.name,
  restaurants.category,
  count(restaurants.name) as category
from
 users,
 restaurants,
 reviews
where
  users.id = reviews.author_user_id and
  restaurants.id = reviews.restaurant_id
group by
  reviews.id, restaurants.name, restaurants.id restaurants.category
;
