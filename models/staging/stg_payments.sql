select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    {{ cents_to_dollars('amount') }},
    created as created_at

from raw.stripe.payment

{{ limit_data_in_dev.sql }}