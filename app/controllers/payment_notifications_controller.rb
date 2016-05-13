class PaymentNotificationsController < ApplicationController
  protect_from_forgery :except => [:create] 

  def create
    PaymentNotification.create!(:params => params, :token_id => params[:invoice], :status => params[:payment_status], :transaction_id => params[:txn_id], :mc_gross => params[:mc_gross], :invoice => params[:invoice], :protection_eligibility => params[:protection_eligibility], :address_status => params[:address_status], :item_number1 => params[:item_number1], :payer_id => params[:payer_id], :tax => params[:tax], :address_street => params[:address_street], :payment_date => params[:payment_date], :payment_status => params[:payment_status], :charset => params[:charset], :address_zip => params[:address_zip], :first_name => params[:first_name], :mc_fee => params[:mc_fee], :address_country_code => params[:address_country_code], :address_name => params[:address_name], :notify_version => params[:notify_version], :custom => params[:custom], :payer_status => params[:payer_status], :business => params[:business], :address_country => params[:address_country], :num_cart_items => params[:num_cart_items], :mc_handling1 => params[:mc_handling1], :address_city => params[:address_city], :verify_sign => params[:verify_sign], :payer_email => params[:payer_email], :mc_shipping1 => params[:mc_shipping1], :txn_id => params[:txn_id], :payment_type => params[:payment_type], :last_name => params[:last_name], :address_state => params[:address_state], :item_name1 => params[:item_name1], :receiver_email => params[:receiver_email], :payment_fee => params[:payment_fee], :quantity1 => params[:quantity1], :receiver_id => params[:receiver_id], :txn_type => params[:txn_type], :mc_gross_1 => params[:mc_gross_1], :mc_currency => params[:mc_currency], :residence_country => params[:residence_country], :transaction_subject => params[:transaction_subject], :payment_gross => params[:payment_gross], :ipn_track_id => params[:ipn_track_id])
    render :nothing => true
   
  end
end
  
end


#:mc_gross, :invoice, :protection_eligibility, :address_status, :item_number1, :payer_id, :tax, :address_street, :payment_date, :payment_status, :charset, :address_zip, :first_name, :mc_fee, :address_country_code, :address_name, :notify_version, :custom, :payer_status, :business, :address_country, :num_cart_items, :mc_handling1, :address_city, :verify_sign, :payer_email, :mc_shipping1, :txn_id, :payment_type, :last_name, :address_state, :item_name1, :receiver_email, :payment_fee, :quantity1, :receiver_id, :txn_type, :mc_gross_1, :mc_currency, :residence_country, :transaction_subject, :payment_gross, :ipn_track_id,



 # Parameters: {"mc_gross"=>"1.00", "invoice"=>"24a0f6", "protection_eligibility"=>"Ineligible", "address_status"=>"confirmed", "item_number1"=>"2015", "payer_id"=>"MVF45UKCF2HHC", "tax"=>"0.00", "address_street"=>"1 Main St", "payment_date"=>"19:50:20 Aug 17, 2015 PDT", "payment_status"=>"Pending", "charset"=>"windows-1252", "address_zip"=>"95131", "mc_shipping"=>"0.00", "mc_handling"=>"0.00", "first_name"=>"hope", "mc_fee"=>"0.33", "address_country_code"=>"US", "address_name"=>"hope  inter", "notify_version"=>"3.8", "custom"=>"", "payer_status"=>"verified", "business"=>"seller@morninglight.ca", "address_country"=>"United States", "num_cart_items"=>"1", "mc_handling1"=>"0.00", "address_city"=>"San Jose", "verify_sign"=>"AsAwmFCfcpLRX5VAYVp6FqhVOqAOAKcFHIo9XQSqM5oWnu.LFr0.8EA9", "payer_email"=>"buyer3@morninglight.ca", "mc_shipping1"=>"0.00", "tax1"=>"0.00", "txn_id"=>"6E357962NX825304S", "payment_type"=>"instant", "last_name"=>"inter", "address_state"=>"CA", "item_name1"=>"Hope Intl Trip Deposit", "receiver_email"=>"seller@morninglight.ca", "payment_fee"=>"0.33", "quantity1"=>"1", "receiver_id"=>"5WQV4CG25BHM6", "pending_reason"=>"paymentreview", "txn_type"=>"cart", "mc_gross_1"=>"1.00", "mc_currency"=>"USD", "residence_country"=>"US", "test_ipn"=>"1", "transaction_subject"=>"", "payment_gross"=>"1.00", "ipn_track_id"=>"952716c5930d", "secret"=>"supersecret"}