json.array!(@employees) do |employee|
  json.extract! employee, :id, :employee_id, :first_name, :last_name, :email, :phone_number, :hire_date, :job_id, :salary, :commission_pct, :manager_id, :department_id
  json.url employee_url(employee, format: :json)
end
