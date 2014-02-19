class Character < ActiveRecord::Base
  attr_accessible :pid, :name, :lookup_label, :character_type_id, :gender, :date_of_birth, :place_of_birth, :strapline, :short_synopsis, :long_synopsis, :notes, :major_storyline_ids, :minor_storyline_ids, :known_as, :speaks, :date_of_death, :place_of_death, :character_title_id, :character_appearance_type_id, :occupation_ids, :artefact_ids
  
  attr_accessor :source_index, :target_index, :value
  
  before_save :assign_guid
  before_destroy :destroy_associations
  
  belongs_to :character_title
  belongs_to :character_appearance_type
  belongs_to :character_type
  has_many :major_characters
  has_many :major_storylines,
    :through => :major_characters,
    :class_name => 'Storyline',
    :source => :storyline,
    :order => 'title'
  has_many :minor_characters
  has_many :minor_storylines,
    :through => :minor_characters,
    :class_name => 'Storyline',
    :source => :storyline,
    :order => 'title'
  has_many :involvements
  has_many :characters_occupations
  has_many :occupations,
    :through => :characters_occupations,
    :order => 'label'
  has_many :character_notes,
    :order => 'date, id'
  has_many :character_names,
    :order => 'date, id'
  has_many :castings,
    :order => 'start_date'
  has_many :memberships,
    :order => 'start_date'
  has_many :residences,
    :order => 'start_date'
  has_many :belongings
  has_many :artefacts,
    :through => :belongings,
    :order => 'title'
    
  validates :name, presence: true, length: {maximum: 255, :message => 'must be 255 characters or less' }
  
  def scenes
    Scene.find( 
      :all,
      :select => 's.*',
      :from => 'scenes s, involvements i, episodes e',
      :conditions => ["i.character_id = ? and i.scene_id = s.id and s.episode_id = e.id", self],
      :order => 'e.position, e.tx_date, s.segment_position'
    )
  end
	
	# used as label on graphviz
	def label 
	  self.name
	end
		
	def age( fictional_date )
	  dob = self.date_of_birth
    fictional_date.year - dob.year - ( ( fictional_date.month > dob.month || ( fictional_date.month == dob.month && fictional_date.day >= dob.day ) ) ? 0 : 1 )
  end
  
  def birth_place
    Place.find( self.place_of_birth )
  end

  def death_place
    Place.find( self.place_of_death )
  end
  
  def relationships
    Relationship.find(
      :all,
      :conditions => ["from_character_id =? or to_character_id = ?", self, self]
    )
  end
  
  def relationships_from
    Relationship.find(
      :all,
      :conditions => ["from_character_id = ?", self]
    )
  end

  def relationships_to
    Relationship.find(
      :all,
      :conditions => ["to_character_id = ?", self]
    )
  end
  
  def relationships_to_characters
    Character.find(
      :all,
      :select => 'c.*',
      :from => 'characters c, relationships r',
      :conditions => ["r.to_character_id = c.id and r.from_character_id =?", self]
    )
  end
  
  def cooccurrent_characters
    Character.find_by_sql( "SELECT c.*, ij.count 
      FROM characters c
      INNER JOIN (
        SELECT i2.character_id, count(i2.scene_id) as count 
        FROM involvements i1, involvements i2 
        WHERE i1.character_id = #{self.id}
        AND i1.character_id != i2.character_id
        AND i1.scene_id = i2.scene_id
        GROUP by i2.character_id
        ORDER by count desc 
      ) as ij
      ON ij.character_id = c.id;"
    )
  end
  
  
  
private
  def assign_guid
    self.guid = SecureRandom.uuid unless self.guid
  end
  
  def destroy_associations
    self.castings.destroy_all
    self.character_names.destroy_all
    self.character_notes.destroy_all
    self.characters_occupations.destroy_all
    self.major_characters.destroy_all
    self.minor_characters.destroy_all
    self.involvements.destroy_all
    self.relationships_from.each do |r|
      r.destroy
    end
    self.relationships_to.each do |r|
      r.destroy
    end
    self.memberships.destroy_all
    self.residences.destroy_all
    self.belongings.destroy_all
  end
end
