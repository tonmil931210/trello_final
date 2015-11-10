json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :description, :duration, :start_date, :finish_date, :autor, :finish_task, :user_id
  json.url task_url(task, format: :json)
end
