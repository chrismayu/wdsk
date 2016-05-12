class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :name, default: "",    null: false
      t.string :season
      t.integer :year
      t.string :final_name
      t.string :league_type_dropdown
      t.integer :league_type
      t.text :description
      t.integer :limit,null: false
      t.decimal :price
      t.date :start_players_birthday, null: false
      t.date :last_players_birthday, null: false
      t.date :show_on_main_page, null: false
      t.date :open_registration, null: false
      t.date :close_registration, null: false
      t.date :hide_on_main_page, null: false
      t.boolean :receive_emails, default: false
      t.string :email, default: "", null: false
      t.boolean :competitive, default: false
      t.boolean :disabled, default: false
      t.string :slug
      t.text :notes

      t.timestamps null: false
    end
    add_index :leagues, :slug, unique: true
  end
end
