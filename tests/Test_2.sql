select *
from {{ ref('fact_watches') }}
where
    sk_date_placed is not null
    and sk_date_removed is not null
    and sk_date_removed < sk_date_placed