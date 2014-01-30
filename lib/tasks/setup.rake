require 'CSV'
require 'hpricot'

# homefront
task :homefront_setup => [
  :create_characters,
  :create_character_relationships,
  :create_scenes
]
task :create_characters => :environment do
  puts "creating characters"
  CSV.foreach( 'db/setup/homefront/characters/characters.csv' ) do |row|
    unless row[0] and row[0].strip == 'First name'
      character = Character.new
      
      # character type
      character.character_type_id = 1
      
      # names / lookup labels
      name = ''
      name = name + row[0].strip if row[0]
      name = name + ' ' unless name.empty?
      name = name + row[1].strip if row[1]
      character.name = name
      if row[0]
        character.lookup_label = row[0].strip
      elsif row[1]
        character.lookup_label = row[1].strip
      end
      
      # gender
      character.gender = row[2].strip
      
      # date of birth
      character.date_of_birth = Date.strptime(row[3], '%d-%m-%Y') if row[3]
      
      # occupations
      character.occupations = row[4].strip if row[4]
    
      # place of birth
      if row[5]
        place = Place.find_by_title( row[5].strip )
        unless place
          place = Place.new
          place.title = row[5].strip
          place.save
        end
        character.place_of_birth = place.id
      end
    
      # Notes
      character.notes = row[6].strip if row[6]
    
      # Story 1
      if row[8]
        character_level = MinorCharacter.new if row[8].strip == 'minor'
        character_level = MajorCharacter.new if row[8].strip == 'major'
        character_level.character = character
        character_level.storyline_id = 1
        character_level.save
      end

      # Story 2
      if row[9]
        character_level = MinorCharacter.new if row[9].strip == 'minor'
        character_level = MajorCharacter.new if row[9].strip == 'major'
        character_level.character = character
        character_level.storyline_id = 2
        character_level.save
      end

      # Story 3
      if row[10]
        character_level = MinorCharacter.new if row[10].strip == 'minor'
        character_level = MajorCharacter.new if row[10].strip == 'major'
        character_level.character = character
        character_level.storyline_id = 3
        character_level.save
      end

      # Story 4
      if row[11]
        character_level = MinorCharacter.new if row[11].strip == 'minor'
        character_level = MajorCharacter.new if row[11].strip == 'major'
        character_level.character = character
        character_level.storyline_id = 4
        character_level.save
      end
    
      character.save
    end
  end
end
task :create_character_relationships => :environment do
  puts "creating character relationships"
  CSV.foreach( 'db/setup/homefront/characters/characters.csv' ) do |row|
    unless row[0] and row[0].strip == 'First name'
      lookup_label = ''
      if row[0]
        lookup_label = row[0].strip
      elsif row[1]
        lookup_label = row[1].strip
      end
      character = Character.find(
        :first,
        :conditions => ["lookup_label = ?", lookup_label]
      )
    
      if row[7]
        relationships = row[7].split( ',' )
        relationships.each do |r|
          to_character = Character.find_by_lookup_label( r.split( ':' ).last.strip )
          if to_character
            relationship = Relationship.new
            relationship.to_character_id = to_character.id
            relationship.from_character_id = character.id
            relationship_type = RelationshipType.find_by_label( r.split( ':' ).first.strip )
            unless relationship_type
              relationship_type = RelationshipType.new
              relationship_type.label = r.split( ':' ).first.strip
              relationship_type.save
            end
            relationship.relationship_type = relationship_type
            relationship.save
          else
            puts "Character not found for relationship #{r.split( ':' ).last.strip}"
          end
        end
      end
    end
  end
end
task :create_scenes => :environment do
  puts "creating scenes"
  CSV.foreach( 'db/setup/homefront/scenes/scenes.csv' ) do |row|
    date = Date.parse( row[0] )
    
    # find or create episode
    episode = Episode.find_by_tx_date( date )
    unless episode
      episode = Episode.new
      episode.tx_date = date
      episode.save
    end
    
    # find or create scene
    scene = Scene.find(
      :first,
      :conditions => ["episode_id = ? and segment_position = ?", episode, row[1].strip]
    )
    if scene
      scene.event_long_synopsis = "#{scene.event_long_synopsis} #{row[3]}"
    else
      scene = Scene.new
      scene.segment_position = row[1].strip
      scene.direction = row[2]
      scene.event_long_synopsis = row[3]
      scene.event_date = date - 100.years
      scene.event_date_format = '%b %d, %Y'
      scene.episode = episode
      
      # make character appearance links
      if row[4]
        characters = row[4].split( ',' )
        characters.each do |c|
          character = Character.find_by_lookup_label( c.strip )
          if character
            involvement = Involvement.new
            involvement.scene = scene
            involvement.character = character
            involvement.save
          else
            puts "ERROR: Character #{c.strip} not found"
          end
        end
      end
    end  
    scene.save
  end
end

# archers
task :archers_setup => [
  :create_archers_character_titles,
  :create_archers_character_appearance_types,
  :create_archers_characters,
  :create_archers_occupations,
  :create_archers_character_occupations,
  :create_archers_character_notes,
  :create_archers_character_names,
  :create_archers_groups,
  :create_archers_membership_roles,
  :create_archers_memberships,
  :create_archers_places,
  :create_archers_place_notes,
  :create_archers_storylines,
  :create_archers_crews,
  :create_archers_episodes,
  :munge_archers_involvements,
  :munge_archers_relationships
]
task :create_archers_character_titles => :environment do
  puts "creating character titles"
  CSV.foreach( 'db/setup/archers/csv/character_titles.csv' ) do |row|
    unless row[0] == 'Ref'
      character_title = CharacterTitle.new
      character_title.id = row[0]
      character_title.label = row[1]
      character_title.save
    end
  end
end
task :create_archers_character_appearance_types => :environment do
  puts "creating character appearance types"
  CSV.foreach( 'db/setup/archers/csv/character_appearance_types.csv' ) do |row|
    unless row[0] == 'Ref'
      character_appearance_type = CharacterAppearanceType.new
      character_appearance_type.id = row[0]
      character_appearance_type.label = row[1]
      character_appearance_type.sort_order = row[2]
      character_appearance_type.save
    end
  end
end
task :create_archers_characters => :environment do
  puts "creating characters"
  CSV.foreach( 'db/setup/archers/csv/characters.csv' ) do |row|
    unless row[0] == 'Ref'
      character = Character.new
      character.id = row[0]
      character.character_title_id = row[1]
      character_name = ''
      character_name = character_name + row[2].to_s if row[2]
      character_name = character_name + ' ' + row[3].to_s if row[3]
      character_name = character_name + ' ' + row[4].to_s if row[4]
      character.name = character_name
      if row[5]
        character_date_of_birth = Date.strptime( row[5], '%m/%d/%y' )
        character_date_of_birth = character_date_of_birth - 100.years if character_date_of_birth > Date.today
        character.date_of_birth = character_date_of_birth
      end
      if row[6]
        character_date_of_death = Date.strptime( row[6], '%m/%d/%y' )
        character_date_of_death = character_date_of_death - 100.years if character_date_of_death > Date.today
        character.date_of_death = character_date_of_death
      end
      
      if row[7] == '1'
        character.gender = 'Male'
      else
        character.gender = 'Female'
      end
     if row[8] == '1'
       character.speaks = false
      else
        row[8]
        character.speaks = true
      end
      character.character_appearance_type_id = row[9]
      character.known_as = row[10]
      character.notes = row[11]
      character.save
    end
  end
end
task :create_archers_occupations => :environment do
  puts "creating occupations"
  CSV.foreach( 'db/setup/archers/csv/occupations.csv' ) do |row|
    unless row[0] == 'Ref'
      occupation = Occupation.new
      occupation.id = row[0]
      occupation.label = row[1]
      occupation.save
    end
  end
end
task :create_archers_character_occupations => :environment do
  puts "creating character occupations"
  CSV.foreach( 'db/setup/archers/csv/characters_occupations.csv' ) do |row|
    unless row[0] == 'Ref'
      if row[1] and row[2]
        character_occupation = CharactersOccupation.new
        character_occupation.id = row[0]
        character_occupation.character_id = row[1]
        character_occupation.occupation_id = row[2]
        if row[3]
          character_occupation_start = Date.strptime( row[3], '%m/%d/%y' )
          character_occupation_start = character_occupation_start - 100.years if character_occupation_start > Date.today
          character_occupation.start_date = character_occupation_start
        end
        character_occupation.save
      end
    end
  end
end
task :create_archers_character_notes => :environment do
  puts "creating character notes"
  CSV.foreach( 'db/setup/archers/csv/character_notes.csv' ) do |row|
    unless row[0] == 'Ref'
      character_note = CharacterNote.new
      character_note.id = row[0]
      if row[1]
        character_note_date = Date.strptime( row[1], '%m/%d/%y' )
        character_note_date = character_note_date - 100.years if character_note_date > Date.today
        character_note.date = character_note_date
      end
      character_note.character_id = row[2]
      character_note.note = row[3]
      character_note.save
    end
  end
end
task :create_archers_character_names => :environment do
  puts "creating character names"
  CSV.foreach( 'db/setup/archers/csv/character_names.csv' ) do |row|
    unless row[0] == 'Ref'
      character_name = CharacterName.new
      character_name.id = row[0]
      if row[1]
        character_name_date = Date.strptime( row[1], '%m/%d/%y' )
        character_name_date = character_name_date - 100.years if character_name_date > Date.today
        character_name.date = character_name_date
      end
      character_name.character_id = row[2]
      character_name.old_name = row[3]
      character_name.new_name = row[4]
      character_name.known_as = row[5]
      character_name.note = row[6]
      character_name.save
    end
  end
end
task :create_archers_groups => :environment do
  puts "creating groups"
  CSV.foreach( 'db/setup/archers/csv/groups.csv' ) do |row|
    unless row[0] == 'Ref'
      group = Group.new
      group.id = row[0]
      group.label = row[1]
      if row[2]
        group_start = Date.strptime( row[2], '%m/%d/%y' )
        group_start = group_start - 100.years if group_start > Date.today
        group.start_date = group_start
      end
      if row[3]
        group_end = Date.strptime( row[3], '%m/%d/%y' )
        group_end = group_end - 100.years if group_end > Date.today
        group.end_date = group_end
      end
      group.notes = row[4]
      group.save
    end
  end
end
task :create_archers_membership_roles => :environment do
  puts "creating membership roles"
  CSV.foreach( 'db/setup/archers/csv/membership_roles.csv' ) do |row|
    unless row[0] == 'Ref'
      membership_role = MembershipRole.new
      membership_role.id = row[0]
      membership_role.label = row[1]
      membership_role.is_spouse = row[2]
      membership_role.save
    end
  end
end
task :create_archers_memberships => :environment do
  puts "creating memberships"
  CSV.foreach( 'db/setup/archers/csv/memberships.csv' ) do |row|
    unless row[0] == 'Ref'
      membership = Membership.new
      membership.id = row[0]
      membership.character_id = row[1]
      membership.group_id = row[2]
      membership.membership_role_id = row[3]
      if row[4]
        membership_start = Date.strptime( row[4], '%m/%d/%y' )
        membership_start = membership_start - 100.years if membership_start > Date.today
        membership.start_date = membership_start
      end
      if row[5]
        membership_end = Date.strptime( row[5], '%m/%d/%y' )
        membership_end = membership_end - 100.years if membership_end > Date.today
        membership.end_date = membership_end
      end
      membership.save
    end
  end
end
task :create_archers_places => :environment do
  puts "creating places"
  CSV.foreach( 'db/setup/archers/csv/places.csv' ) do |row|
    unless row[0] == 'Ref'
      place = Place.new
      place.id = row[0]
      place.title = row[1]
      place.notes = row[2]
      place.save
    end
  end
end
task :create_archers_place_notes => :environment do
  puts "creating place notes"
  CSV.foreach( 'db/setup/archers/csv/place_notes.csv' ) do |row|
    unless row[0] == 'Ref'
      place_note = PlaceNote.new
      place_note.id = row[0]
      place_note.place_id = row[1]
      if row[2]
        place_note_date = Date.strptime( row[2], '%m/%d/%y' )
        place_note_date = place_note_date - 100.years if place_note_date > Date.today
        place_note.date = place_note_date
      end
      place_note.note = row[3]
      place_note.save
    end
  end
end
task :create_archers_storylines => :environment do
  puts "creating storylines"
  CSV.foreach( 'db/setup/archers/csv/storylines.csv' ) do |row|
    unless row[0] == 'Ref'
      storyline = Storyline.new
      storyline.id = row[0]
      storyline.title = row[1]
      storyline.notes = row[2]
      storyline.save
    end
  end
end
task :create_archers_crews => :environment do
  puts "creating crew"
  CSV.foreach( 'db/setup/archers/csv/crews.csv' ) do |row|
    unless row[0] == 'Ref'
      crew = Crew.new
      crew.id = row[0]
      crew.given_name = row[1]
      crew.family_name = row[2]
      crew.note = row[3]
      crew.save
    end
  end
end
task :create_archers_episodes => :environment do
  puts "creating episodes"
  CSV.foreach( 'db/setup/archers/csv/episodes.csv' ) do |row|
    unless row[0] == 'Ref'
      episode = Episode.new
      episode.id = row[0]
      episode.position = row[1]
      episode.title = row[2]
      if row[3]
        tx_date = Date.strptime( row[3], '%m/%d/%y' )
        tx_date = tx_date - 100.years if tx_date > Date.today
        episode.tx_date = tx_date
      end
      episode.long_synopsis = row[4]
      episode.writer_id = row[5]
      episode.producer_id = row[6]
      episode.editor_id = row[7]
      episode.director_id = row[8]
      episode.researcher_id = row[9]
      episode.series = row[10]
      episode.block = row[11]
      episode.save
    end
  end
end
task :munge_archers_involvements => :environment do
  puts "creating involvements, scenes and scenes_storylines"
  CSV.foreach( 'db/setup/archers/csv/involvements.csv' ) do |row|
    unless row[0] == 'Ref'
      # find or create scene
      # where scene number is given
      if row[2]
        scene = Scene.find(
          :first,
          :conditions => ["episode_id = ? and segment_position = ? and event_long_synopsis = ?", row[1], row[2], row[8]]
        )
        unless scene
          scene = Scene.new
          scene.episode_id = row[1]
          scene.segment_position = row[2]
          scene.event_long_synopsis = row[8]
          scene.save
        end
      else
        # where scene number is not given
        # need to comment out validates :segment_position, :presence => true in scene model
        scene = Scene.new
        scene.episode_id = row[1]
        scene.event_long_synopsis = row[8]
        scene.event_title = 'Fake event'
        scene.save
      end
      
      # create involvement  
      if row[3]
        involvement = Involvement.new
        involvement.scene_id = scene.id
        involvement.character_id = row[3]
        involvement.save
      end

      # find or create scenes_storylines
      if row[5]
        scenes_storyline = ScenesStoryline.find(
          :first,
          :conditions => ["scene_id = ? and storyline_id = ?", scene.id, row[5]]
        )
        unless scenes_storyline
          scenes_storyline = ScenesStoryline.new
          scenes_storyline.scene_id = scene.id
          scenes_storyline.storyline_id = row[5]
          scenes_storyline.save
        end
      end

      # find or create location
      if row[6]
        location = Location.find(
          :first,
          :conditions => ["scene_id = ? and place_id = ?", scene.id, row[6]]
        )
        unless location
          location = Location.new
          location.scene_id = scene.id
          location.place_id = row[6]
          location.save
        end
      end
    end
  end
end
task :munge_archers_relationships => :environment do
  puts "munging archers groups"
  groups = Group.find(
    :all
  )
  relationship_type = RelationshipType.new
  relationship_type.label = 'married'
  relationship_type.save
  groups.each do |group|
    if group.spouses.size == 2
      relationship = Relationship.new
      relationship.from_character_id = group.spouses.first.character.id
      relationship.to_character_id = group.spouses.last.character.id
      relationship.relationship_type_id = 1
      relationship.save
    end
    if group.spouses.size > 0
      group.nonspouses.each do |m|
        rt = RelationshipType.find_by_label( m.membership_role.label )
        unless rt
          rt = RelationshipType.new
          rt.label = m.membership_role.label
          rt.save
        end
        relationship = Relationship.new
        relationship.from_character_id = m.character.id
        relationship.to_character_id = group.spouses.first.character.id
        relationship.relationship_type = rt
        relationship.save
        relationship = Relationship.new
        relationship.from_character_id = m.character.id
        relationship.to_character_id = group.spouses.last.character.id
        relationship.relationship_type = rt
        relationship.save
      end
    end
  end
end

# doctor who
task :drwho_munge_scenes => [
  :pull_event_data_into_scenes,
  :populate_scene_position,
  :populate_cross_scene_event_references,
  :populate_locations,
  :attach_scenes_to_storylines,
  :create_involvements,
  :populate_event_references_with_scenes
]
task :pull_event_data_into_scenes => :environment do
  puts "populating scenes with event data"
  scenes = Scene.find( :all )
  scenes.each do |s|
    s.segment_position = 1 # set temp position cos can't save without it
    s.segment_duration = (s.end_time - s.segment_offset_start).to_i
    s.event_date = s.event.date
    s.event_date_format = s.event.date_format
    s.event_title = s.event.title
    s.event_short_synopsis = s.event.short_synopsis
    s.event_long_synopsis = s.event.long_synopsis
    s.save
  end
end
task :populate_scene_position => :environment do
  puts "populating scene positions"
  episodes = Episode.find( :all )
  episodes.each do |e|
    position = 1
    e.scenes.each do |s|
      s.segment_position = position
      position = position + 1
      s.save
    end
  end
end
task :populate_cross_scene_event_references => :environment do
  puts "populating cross scene references (same event in different scenes)"
  scenes = Scene.find( :all )
  scenes.each do |s|
    s.shared_scenes.each do |ss|
      cross_scene_event_reference = CrossSceneEventReference.new
      cross_scene_event_reference.from_scene_id = s.id
      cross_scene_event_reference.to_scene_id = ss.id
      cross_scene_event_reference.save
    end
  end
end
task :populate_locations => :environment do
  puts "populating locations"
  event_locations = EventLocation.find( :all )
  event_locations.each do |el|
    el.event.scenes.each do |s|
      location = Location.new
      location.place = el.place
      location.scene = s
      location.save
    end
  end
end
task :attach_scenes_to_storylines => :environment do
  puts "attaching scenes to storylines"
  scenes_storylines = ScenesStoryline.find(
    :all,
    :conditions => 'event_id is not null'
  )
  scenes_storylines.each do |ss|
    ss.event.scenes.each do |s|
      scene_storyline = ScenesStoryline.new
      scene_storyline.storyline = ss.storyline
      scene_storyline.scene = s
      scene_storyline.save
    end
  end
end
task :create_involvements => :environment do
  puts "creating character involvements in scenes"
  involvements = Involvement.find(
    :all,
    :conditions => 'event_id is not null'
  )
  involvements.each do |i|
    i.event.scenes.each do |s|
      involvement = Involvement.new
      involvement.character = i.character
      involvement.scene = s
      involvement.description = i.description
      involvement.save
    end
  end
end
task :populate_event_references_with_scenes => :environment do
  puts "populating event to event references onto scenes"
  event_to_event_references = EventToEventReference.find(
    :all,
    :conditions => 'from_event_id is not null'
  )
  event_to_event_references.each do |eer|
    eer.from_event.scenes.each do |from_scene|
      eer.to_event.scenes.each do |to_scene|
        event_to_event_reference = EventToEventReference.new
        event_to_event_reference.from_scene_id = from_scene.id
        event_to_event_reference.to_scene_id = to_scene.id
        # event ids can't be null so adding fake values
        event_to_event_reference.from_event_id = 13
        event_to_event_reference.to_event_id = 13
        event_to_event_reference.description = eer.description
        event_to_event_reference.save
      end
    end
  end
end

# macbeth
task :macbeth_setup => [
  :get_xml
]
task :get_xml => :environment do
  puts "setting up macbeth"
  xml = File.open( 'db/setup/macbeth/mac.xml')
  doc = Hpricot::XML( xml )

  #create characters
  puts "creating characters"
  (doc/:castItem/:role).each do |role|
    character = Character.new
    character.name = role.innerHTML
    character.lookup_label = role.attributes[ 'xmlid' ]
    character.save
  end
  
  # create acts and scenes
  puts "creatings acts and scenes"
  segment_position = 1
  doc.search("//body/div").each do |act|
    @act = Scene.new
    @act.event_title = act.search("/head").innerHTML
    @act.episode_id = 1
    @act.save
    act.search("/div").each do |scene|
      @scene = Scene.new
      @scene.event_title = scene.search("/head").innerHTML
      @scene.segment_position = segment_position
      segment_position = segment_position + 1
      @scene.parent_id = @act.id
      @scene.episode_id = 1
      @scene.save
      scene.children.each do |line|
        unless line.class == Hpricot::Text or line.name == 'head'
          @line = ScriptLine.new
          @line.scene = @scene
          if line.name == 'stage'
            @line.line_type = 'stage'
            @line.line = line.innerHTML
          elsif line.name == 'sp'
            @line.line_type = 'line'
            @line.line = (line/"l").innerHTML
            character = line.attributes['who']
            @character = Character.find_by_lookup_label( character )
            @line.character = @character
            involvement = Involvement.find(
              :first,
              :conditions => ["scene_id = ? and character_id = ?", @scene, @character]
            )
            unless involvement
              involvement = Involvement.new
              involvement.character = @character
              involvement.scene = @scene
              involvement.save
            end
          end
          @line.save
        end
      end
    end
  end
end