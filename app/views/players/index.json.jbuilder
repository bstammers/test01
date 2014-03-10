json.array!(@players) do |player|
  json.extract! player, :id, :first_name, :last_name, :email, :password_digest
  json.url player_url(player, format: :json)
end
