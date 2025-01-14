select
    rv.listing_id,
    rv.review_date,
    lst.created_at
from {{ref('fct_reviews')}} rv
join {{ref('dim_listings')}} lst
on rv.listing_id = lst.listing_id
where rv.review_date <= lst.created_at