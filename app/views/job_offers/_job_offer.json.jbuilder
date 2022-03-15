json.extract! job_offer, :id, :title, :num_packages, :duration, :created_at, :updated_at
json.url job_offer_url(job_offer, format: :json)
