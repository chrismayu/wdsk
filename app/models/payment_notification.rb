class PaymentNotification < ActiveRecord::Base
  belongs_to :player
  serialize :params
  after_create :mark_player_as_paid

  #scope :feedback_internal, -> { select(:id,:user_id ) }

  private

  def mark_player_as_paid
     
    
     @player = Player.where(["transaction_id = ?", params[:invoice]]).first 

    if status == "Completed" && params[:secret] == ENV["paypal_secret"] &&
        params[:receiver_email] == ENV["paypal_email"] 
        
 
      @player.update_column(:status_applicants, Time.now)
      @player.update_column(:approved_applicants, true)
  
      #ApplicantMailer.paypal_confirmation(@player).deliver_now  # sends email to applicant
     
       #OrganizerMailer.applicant_paypal_confirmed(@player).deliver_now  # sends email to Pastor Kurt
       #ApplicantMailer.pastoral_feedback_confirmation(@player).deliver_now  # sends email to applicant
      
    end
  end
end
