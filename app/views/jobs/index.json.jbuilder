json.array!(@jobs) do |job|
  json.extract! job, :id, :civilian_id, :job_name
  json.url job_url(job, format: :json)
end
