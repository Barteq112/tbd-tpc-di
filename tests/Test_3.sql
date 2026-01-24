select *
from {{ ref('dim_company') }}
where name is null