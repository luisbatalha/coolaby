json.array!(@projects) do |project|
  json.extract! project, :title, :abstract
  json.url project_url(project, format: :json)
end
