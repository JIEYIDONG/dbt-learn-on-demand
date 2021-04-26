with customers as (

    select * from {{ ref('stg_customers') }}

),

customer_orders as (

    select * from {{ ref('stg_orders') }}

),

employees as (

    select * from {{ ref('employees') }}

),

final as (
    select
        customers.CUSTOMER_ID,
        customers.first_name,
        customers.last_name,
        employees.EMPLOYEE_ID as is_employee
    from customers
)


select * from final