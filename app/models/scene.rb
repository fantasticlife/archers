class Scene < ActiveRecord::Base
  attr_accessible :episode_id, :segment_position, :segment_offset_start, :segment_duration, :direction, :event_title, :event_date, :event_date_format, :event_time_of_day, :event_short_synopsis, :event_long_synopsis, :storyline_ids, :character_ids, :place_ids, :relationship_ids
  
  before_destroy :destroy_associations
  
  # associations with doctor who models just for migration
  belongs_to :event
  
  belongs_to :episode
  has_many :scenes_storylines
  has_many :storylines,
    :through => :scenes_storylines,
    :order => 'position'
  has_many :involvements
  has_many :characters,
    :through => :involvements,
    :order => 'name'
  has_many :locations
  has_many :places,
    :through => :locations,
    :order => 'title'
  has_many :script_lines  
  has_many :relationship_reveals
  has_many :relationships,
    :through => :relationship_reveals
    
  #validates :segment_position, :presence => true
  
  def display_title
    display_title = ''
    if self.event_title and !self.event_title.empty?
      display_title = self.event_title
    else
      display_title = "Scene #{self.segment_position}"
    end
    display_title
  end
    
  def display_title_with_episode
    display_title = ''
    if self.episode
      if self.episode.title
        display_title = self.episode.title
      elsif self.episode.tx_date
        display_title = self.episode.tx_date.strftime( DATE_FORMAT )
      elsif self.episode.position
        display_title = 'Episode ' + self.episode.position
      end
    end
    if self.event_title
      display_title = display_title + ' - ' unless display_title.empty?
      display_title = display_title + self.event_title
    elsif self.segment_position
      display_title = display_title + ' - ' unless display_title.empty?
      display_title = display_title + 'Scene ' + self.segment_position.to_s
    end
    display_title
  end
  
  def parent
    Scene.find(
      :first,
      :conditions => ["id = ?", self.parent_id]
    )
  end
  
  def children
    Scene.find(
      :all,
      :conditions => ["parent_id = ?", self],
      :order => 'segment_position'
    )
  end

  def previous_in_episode
    Scene.find(
      :first,
      :conditions => ["episode_id = ? and segment_position < ?", self.episode, self.segment_position],
      :order => 'segment_position desc'
    )
  end
  
  def next_in_episode
    Scene.find(
      :first,
      :conditions => ["episode_id = ? and segment_position > ?", self.episode, self.segment_position],
      :order => 'segment_position'
    )
  end
  
  def previous_in_character( character )
    Scene.find(
      :first,
      :select => 's.*',
      :from => 'scenes s, involvements i, episodes e',
      :conditions => ["s.id = i.scene_id and i.character_id = ? and s.episode_id = e.id and ((e.id = ? and s.segment_position < ?) or (e.position < ?) or (e.tx_date < ?))", character, self.episode, self.segment_position, self.episode.position, self.episode.tx_date],
      :order => 'e.position desc, e.tx_date desc, s.segment_position desc'
    )
  end
  
  def next_in_character( character )
    Scene.find(
      :first,
      :select => 's.*',
      :from => 'scenes s, involvements i, episodes e',
      :conditions => ["s.id = i.scene_id and i.character_id = ? and s.episode_id = e.id and ((e.id = ? and s.segment_position > ?) or (e.position > ?) or (e.tx_date > ?))", character, self.episode, self.segment_position, self.episode.position, self.episode.tx_date],
      :order => 'e.position, e.tx_date, s.segment_position'
    )
  end
  
  def previous_in_storyline( storyline )
    Scene.find(
      :first,
      :select => 's.*',
      :from => 'scenes s, scenes_storylines ss, episodes e',
      :conditions => ["s.id = ss.scene_id and ss.storyline_id = ? and s.episode_id = e.id and ((e.id = ? and s.segment_position < ?) or (e.position < ?) or (e.tx_date < ?))", storyline, self.episode, self.segment_position, self.episode.position, self.episode.tx_date],
      :order => 'e.position desc, e.tx_date desc, s.segment_position desc'
    )
  end

  def next_in_storyline( storyline )
    Scene.find(
      :first,
      :select => 's.*',
      :from => 'scenes s, scenes_storylines ss, episodes e',
      :conditions => ["s.id = ss.scene_id and ss.storyline_id = ? and s.episode_id = e.id and ((e.id = ? and s.segment_position > ?) or (e.position > ?) or (e.tx_date > ?))", storyline, self.episode, self.segment_position, self.episode.position, self.episode.tx_date],
      :order => 'e.position, e.tx_date, s.segment_position'
    )
  end
  
  # temp method used to munge doctor who
  def shared_scenes
    Scene.find( :all,
      :conditions => ["event_id = ? and id != ?", self.event, self]
    )
  end
  
  
  
private
  def destroy_associations
    self.scenes_storylines.destroy_all
    self.involvements.destroy_all
    self.locations.destroy_all
    self.relationship_reveals.destroy_all
  end
end
