class Artefact < ActiveRecord::Base
  attr_accessible :title, :short_synopsis, :long_synopsis
  
  before_save :assign_guid
  before_destroy :destroy_associations
  
  has_many :belongings
  has_many :characters,
    :through => :belongings,
    :order => 'name'
  has_many :usages
    
  def scenes
    Scene.find( 
      :all,
      :select => 's.*',
      :from => 'scenes s, usages u, episodes e',
      :conditions => ["u.artefact_id = ? and u.scene_id = s.id and s.episode_id = e.id", self],
      :order => 'e.position, e.tx_date, s.segment_position'
    )
  end
  
  
  
private
  def assign_guid
    self.guid = SecureRandom.uuid unless self.guid
  end
  
  def destroy_associations
    self.belongings.destroy_all
    self.usages.destroy_all
  end
end
