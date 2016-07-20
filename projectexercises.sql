#1 cartesian join between project table and tech table
select



#2 left outer join b/t project table and project_uses_tech
select
	project.name, project.id as from_project, project_uses_tech.project_id as from_project_uses_tech
from
	project
left outer join
	project_uses_tech on tech_id = project.id
;

#3 left outer join b/t tech table and project_uses_tech
select
	tech.id, tech.name
from
	tech
left outer join
	project_uses_tech on tech.id = project_uses_tech.tech_id
;

#4 left outer join from project table to project_uses_tech
# and left outer join agin totech table
select
	tech.id, tech.name, *
from
	project_uses_tech
left outer join
	project on project_uses_tech.project_id = project.id
left outer join
	tech on project_uses_tech.tech_id = tech.id
;

#5 Start from the answer on the previous problem and get the #  count of how many different tech each project uses
select
 	project.name, count(project.name)
from
	project_uses_tech
left outer join
	project on project_uses_tech.project_id = project.id
left outer join
	tech on project_uses_tech.tech_id = tech.id
group by
	project.name
order by
	count(project.name) desc
;
#6 Rank each tech by how many projects use it and Rank each # project by how many tech it uses
select
 	tech.name, count(tech.name)
from
	project_uses_tech
left outer join
	project on project_uses_tech.project_id = project.id
left outer join
	tech on project_uses_tech.tech_id = tech.id
group by
	tech.name
order by
	count(tech.name) desc


#7 What is the average number of techs used by a project?
select
	avg(count) as avg_tech_uses
from
(
select
 	project.name, count(project.name)
from
	project_uses_tech
left outer join
	project on project_uses_tech.project_id = project.id
left outer join
	tech on project_uses_tech.tech_id = tech.id
group by
	project.name
order by
	count(project.name) desc
) as project_by_tech_count
