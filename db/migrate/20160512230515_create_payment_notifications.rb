class CreatePaymentNotifications < ActiveRecord::Migration
  def change
    create_table :payment_notifications do |t|
      t.integer :player_id
      t.text :params
      t.string :status
      t.string :transaction_id
      t.integer :league_id
      t.string :token_id
      t.float :mc_gross
      t.string :invoice
      t.string :protection_eligibility
      t.string :address_status
      t.integer :item_number1
      t.string :payer_id
      t.string :tax
      t.string :address_street
      t.datetime :payment_date
      t.string :payment_status
      t.string :charset
      t.string :address_zip
      t.string :first_name
      t.float :mc_fee
      t.string :address_country_code
      t.string :address_name
      t.string :notify_version
      t.string :custom
      t.string :payer_status
      t.string :business
      t.string :address_country
      t.string :num_cart_items
      t.string :mc_handling1
      t.string :address_city
      t.string :verify_sign
      t.string :payer_email
      t.string :mc_shipping1
      t.string :txn_id
      t.string :payment_type
      t.string :last_name
      t.string :address_state
      t.string :item_name1
      t.string :receiver_email
      t.float :payment_fee
      t.integer :quantity1
      t.string :receiver_id
      t.string :txn_type
      t.float :mc_gross_1
      t.string :mc_currency
      t.string :residence_country
      t.string :transaction_subject
      t.float :payment_gross
      t.string :ipn_track_id
      t.string :mc_shipping
      t.string :mc_handling
      t.string :tax1
      t.string :pending_reason

      t.timestamps null: false
    end
  end
end
