json.extract! installment, :id, :project_id, :amount, :installment_date, :status, :details, :created_at, :updated_at
json.url installment_url(installment, format: :json)