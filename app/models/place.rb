class Place < ActiveRecord::Base
  attr_accessible :title, :short_synopsis, :long_synopsis, :lat, :lon, :parent_id, :notes
  
  before_save :assign_guid
  before_destroy :destroy_associations
  
  has_many :locations
  has_many :place_notes
  has_many :residences
  
  validates :title, presence: true, length: {maximum: 255, :message => 'must be 255 characters or less' }
  
  # need to order by epsiode tx_date then by scene number  
  def scenes
    Scene.find( 
      :all,
      :select => 's.*',
      :from => 'scenes s, episodes e, locations l',
      :conditions => ["s.episode_id = e.id and s.id = l.scene_id and l.place_id = ?", self],
      :order => 'e.tx_date, e.position, s.segment_position'
    )
  end
  
  def parent_place
    Place.find( 
      :first,
      :conditions => ["id = ?", self.parent_id]
    )
  end  
  
  def children
    Place.find( 
      :all,
      :conditions => ["parent_id = ?", self.id],
      :order => 'title'
    )
  end

  def births
    Character.find( :all,
      :conditions => ['place_of_birth = ?', self]
    )
  end

  def deaths
    Character.find( :all,
      :conditions => ['place_of_death = ?', self]
    )
  end
  
  
  
private
  def assign_guid
    self.guid = SecureRandom.uuid unless self.guid
  end
  
  def destroy_associations
    self.place_notes.destroy_all
    self.locations.destroy_all
    self.residences.destroy_all
    self.children.each do |p|
      p.destroy
    end
    self.births.each do |c|
      c.place_of_birth = nil
      c.save
    end
  end
end
