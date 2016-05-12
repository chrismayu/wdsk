class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :last_name
      t.string :first_name
      t.string :middle_initial
      t.string :address
      t.string :city
      t.string :postal_code
      t.string :phone_number
      t.string :email_address, default: "", null: false
      t.date :date_of_birth
      t.integer :years_played
      t.boolean :played_competitively, default: false
      t.string :gender
      t.string :name_of_parent_guardian
      t.boolean :willing_to_coach, default: false
      t.boolean :willing_to_assist_coach, default: false
      t.boolean :child_like_to_play_goalie, default: false
      t.boolean :child_has_a_medical_condition, default: false
      t.text :medical_condition
      t.boolean :appectance_of_terms, default: false
      t.integer :league_id
      t.string :transaction_id

      t.timestamps null: false
    end
    add_index :players, :transaction_id, unique: true
  end
end
