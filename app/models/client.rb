class Client < ApplicationRecord
  # == Attributes =================================================================================

  # == Constants ==================================================================================

  # == Class Methods ==============================================================================

  # == Extensions =================================================================================

  # == Instance Methods ===========================================================================

  # == Relationships ==============================================================================
  
  belongs_to :state
  
  # == Scopes =====================================================================================

  # == Validations ================================================================================
  
  email_message = "Debe ingresar un email válido"
  email_regex = /[^@\s]+@[^@\s]+[.][\w]+/
  validates :name, :last_name, :address, :state, presence: true
  validates :email, presence: true, format: { with: email_regex, message: email_message }

  # == Raise errors  ==============================================================================

  # == Private  ===================================================================================

  private
  
  def self.greater_than
    self.where( "total_paid >= #{self.average("total_paid")} ")
  end

  def self.smaller_than
    self.where( "total_paid <= #{self.average("total_paid")} ")
  end
end

