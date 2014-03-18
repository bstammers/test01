json.array!(@competitions) do |competition|
  json.extract! competition, :id, :name, :points_percent_flag, :sets_percent_flag, :mvp_flag
  json.url competition_url(competition, format: :json)
end
