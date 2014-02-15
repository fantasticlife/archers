class Storyline < ActiveRecord::Base
  attr_accessible :title, :short_synopsis, :long_synopsis, :article, :position, :major_character_character_ids, :minor_character_character_ids
  
  before_save :assign_guid
  before_destroy :destroy_associations
  
  has_many :major_characters
  has_many :major_character_characters,
    :through => :major_characters,
    :class_name => 'Character',
    :source => :character,
    :order => 'name'
  has_many :minor_characters
  has_many :minor_character_characters,
    :through => :minor_characters,
    :class_name => 'Character',
    :source => :character,
    :order => 'name'
  has_many :scenes_storylines
  has_many :beats,
    :order => 'date'
    
  validates :title, presence: true, length: {maximum: 255, :message => 'must be 255 characters or less' }
  
  def scenes
    Scene.find( 
      :all,
      :select => 's.*',
      :from => 'scenes s, episodes e, scenes_storylines ss',
      :conditions => ["s.episode_id = e.id and s.id = ss.scene_id and ss.storyline_id = ?", self],
      :order => 'e.position, e.tx_date, s.segment_position'
    )
  end
  
  
  
private
  def assign_guid
    self.guid = SecureRandom.uuid unless self.guid
  end
  
  def destroy_associations
    self.major_characters.destroy_all
    self.minor_characters.destroy_all
    self.scenes_storylines.destroy_all
    self.beats.destroy_all
  end
end
