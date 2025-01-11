select * 
from 
--stg.airbnb.src_reviews
{{ref('src_reviews')}}
WHERE review_text is not null