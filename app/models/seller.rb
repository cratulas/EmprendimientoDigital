class Seller < ApplicationRecord
  # == Attributes =================================================================================

  # == Constants ==================================================================================
  
  # == Class Methods ==============================================================================
  
  # == Extensions =================================================================================
  
  # == Instance Methods ===========================================================================
  
  # == Relationships ==============================================================================
  
  # == Scopes =====================================================================================
  
  # == Validations ================================================================================
  
  # == Raise errors  ==============================================================================
  
  # == Private  ===================================================================================
  
  private
  
    def self.greater_than 
    self.where( "salary >= #{self.average("salary")}" )
  end

  def self.smaller_than
    self.where( "salary <= #{self.average("salary")}" ) 
  end

end
