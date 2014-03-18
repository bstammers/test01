json.array!(@teams) do |team|
  json.extract! team, :id, :name, :manager, :played, :won, :drawn, :set_won, :set_lost, :points_for, :points_against, :sets_percent, :points_percent, :comp_points
  json.url team_url(team, format: :json)
end
