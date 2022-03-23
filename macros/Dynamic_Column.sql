{% macro column_list(c1) %}
{% set counter = 0 %}
B.PARENT,
B.CHILD,
{% for counter in range(0, 101) %}
{% if counter < (c1+1) %}
   A.LVL{{counter}},
{% elif counter == (c1+1) and counter!=100%}
   B.CHILD AS LVL{{counter}},
{% elif counter == (c1+1) and counter==100 %}
   B.CHILD AS LVL{{counter}}
{% elif counter > (c1+1) and counter!=100 %}
   NULL AS LVL{{counter}},
{% elif counter > (c1+1) and counter == 100 %}
   NULL AS LVL{{counter}}
{% endif %}
{%set counter = counter+1 %}
{% endfor %}
{% endmacro %}
