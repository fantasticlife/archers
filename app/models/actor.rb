class Actor < ActiveRecord::Base
  attr_accessible :given_name, :middle_name, :family_name, :date_of_birth, :date_of_death, :note
  
  before_save :assign_guid
  before_destroy :destroy_associations
  
  has_many :castings,
    :order => 'start_date'
  
  def name
    name = ''
    name = name + self.given_name if self.given_name
    name = name + ' ' + self.middle_name if self.middle_name
    name = name + ' ' + self.family_name if self.family_name
    name
  end



private
  def assign_guid
    self.guid = SecureRandom.uuid unless self.guid
  end
  
  def destroy_associations
    self.castings.destroy_all
  end
end
