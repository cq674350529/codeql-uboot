import cpp

from Function f
where f.getName() = "strlen" and f.hasDefinition()
select f, "a function name strlen with definition"
