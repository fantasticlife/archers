class Crew < ActiveRecord::Base
  attr_accessible :given_name, :family_name, :note
  
  before_save :assign_guid
  
  def name
    "#{self.given_name} #{self.family_name}"
  end
  
  def written_episodes
    Episode.find(
      :all,
      :conditions => ["writer_id = ?", self], 
      :order => 'tx_date, position'
    )
  end

  def produced_episodes
    Episode.find(
      :all,
      :conditions => ["producer_id = ?", self], 
      :order => 'tx_date, position'
    )
  end

  def edited_episodes
    Episode.find(
      :all,
      :conditions => ["editor_id = ?", self], 
      :order => 'tx_date, position'
    )
  end

  def directed_episodes
    Episode.find(
      :all,
      :conditions => ["director_id = ?", self], 
      :order => 'tx_date, position'
    )
  end

  def researched_episodes
    Episode.find(
      :all,
      :conditions => ["researcher_id = ?", self], 
      :order => 'tx_date, position'
    )
  end



private
  def assign_guid
    self.guid = SecureRandom.uuid unless self.guid
  end
end
