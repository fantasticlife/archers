class Episode < ActiveRecord::Base
  attr_accessible :pid, :title, :long_synopsis, :position, :tx_date, :series, :block, :writer_id, :producer_id, :editor_id, :director_id, :researcher_id
  
  before_destroy :destroy_associations
  
  has_many :scenes,
    :order => 'segment_position'
    
  def display_title
    if self.title
      self.title
    elsif self.tx_date
      self.tx_date.strftime( DATE_FORMAT )
    elsif self.position
      self.position
    else
      'No title'
    end
  end
    
  def previous
    # previous by tx_date
    episode = Episode.find(
      :first,
      :conditions => ["tx_date < ? or position < ?", self.tx_date, self.position],
      :order => 'position desc, tx_date desc'
    )
  end
  
  def next
    # next by tx_date
    episode = Episode.find(
      :first,
      :conditions => ["tx_date > ? or position > ?", self.tx_date, self.position],
      :order => 'position, tx_date'
    )
  end
  
  def has_crew?
    if self.writer_id or self.producer_id or self.editor_id or self.director_id or self.researcher
      true
    else
      false
    end
  end
  
  def writer
    Crew.find(
      :first,
      :conditions => ["id = ?", self.writer_id]
    )
  end
  
  def producer
    Crew.find(
      :first,
      :conditions => ["id = ?", self.producer_id]
    )
  end
  
  def editor
    Crew.find(
      :first,
      :conditions => ["id = ?", self.editor_id]
    )
  end
  
  def director
    Crew.find(
      :first,
      :conditions => ["id = ?", self.director_id]
    )
  end
  
  def researcher
    Crew.find(
      :first,
      :conditions => ["id = ?", self.researcher_id]
    )
  end
    
    
    
private
  def destroy_associations
    self.scenes.destroy_all
  end
end
