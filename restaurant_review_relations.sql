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
