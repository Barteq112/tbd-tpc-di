select *
from {{ ref('dim_trade') }}
where status not in (
    'Completed',
    'Canceled',
    'Pending',
    'Submitted'
)
