json.array!(@leagues) do |league|
  json.extract! league, :id, :name, :season, :year, :final_name, :league_type_dropdown, :league_type, :description, :limit, :price, :start_players_birthday, :last_players_birthday, :show_on_main_page, :open_registration, :close_registration, :hide_on_main_page, :receive_emails, :email, :competitive, :disabled, :slug, :notes
  json.url league_url(league, format: :json)
end
