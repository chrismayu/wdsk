json.array!(@players) do |player|
  json.extract! player, :id, :last_name, :first_name, :middle_initial, :address, :city, :postal_code, :phone_number, :email_address, :date_of_birth, :years_played, :played_competitively, :gender, :name_of_parent_guardian, :willing_to_coach, :willing_to_assist_coach, :child_like_to_play_goalie, :child_has_a_medical_condition, :medical_condition, :appectance_of_terms, :league_id, :email_address, :transaction_id
  json.url player_url(player, format: :json)
end
