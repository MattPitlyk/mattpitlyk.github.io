{%- extends 'full.tpl' -%}

{% block codecell %}
    {% block input_group %}
        {% if 'input' in cell.metadata.get('tags', []) %}
            {{ super() }}
        {% endif %}
    {% endblock input_group %}
    
    {% block output_group %}
        {% if 'output' in cell.metadata.get('tags', []) %}
            {{ super() }}
        {% endif %}
    {% endblock output_group %}

{% endblock codecell %}

{% block markdowncell %}
    {% if 'keep' in cell.metadata.get('tags', []) %}
       {{ super() }}
    {% endif %}
{% endblock markdowncell %}

{% block rawcell %}
    {% if 'keep' in cell.metadata.get('tags', []) %}
       {{ super() }}
    {% endif %}
{% endblock rawcell %}