1)
select
  star_amount
from
  projects
where
  name = 'PictionaryGame';

2)
select
  count(*)
from
  users
inner join
  user_projects on users.id = user_projects.project_member_id
where
  users.name = 'David Pham';

3)
select
  projects.name
from
  users
inner join
  user_projects on users.id = user_projects.project_member_id
inner join
  projects on projects.id = user_projects.project_id
where
  users.name = 'David Pham';

4)
select
  projects.name
from
  users
inner join
  user_projects on users.id = user_projects.project_member_id
inner join
  projects on projects.id = user_projects.project_id
where
  users.name = 'David Pham'
order by
  projects.star_amount description
limit 3;

5)
select
  projects.id,
  projects.name,
  count(technologies.id) as tech_count
from
  projects
left outer join
  project_techs on projects.id = project_techs.project_id
left outer join
  technologies on technologies.id = project_techs.tech_id
group by
  projects.id
order
  tech_count desc
limit 3;

6)
