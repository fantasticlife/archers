Homefront::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'home#index'
  
  match '/characters' => 'character#index', :as => :character_list
  match '/characters/speaks' => 'character#speak', :as => :character_speak
  match '/characters/silent' => 'character#silent', :as => :character_silent
  match '/characters/cooccurrences' => 'character#cooccurrence', :as => :character_cooccurrence
  match '/characters/new' => 'character#new', :as => :character_new
  match '/characters/create' => 'character#create', :as => :character_create
  match '/characters/:character' => 'character#show', :as => :character_show
  match '/characters/:character/neighbours' => 'character#neighbours', :as => :character_neighbours
  match '/characters/:character/edit' => 'character#edit', :as => :character_edit
  match '/characters/:character_to_update/update' => 'character#update', :as => :character_update
  match '/characters/:character/delete' => 'character#delete', :as => :character_delete
  
  match '/characters/:character/names' => 'character_name#index', :as => :character_name_list
  match '/characters/:character/names/new' => 'character_name#new', :as => :character_name_new
  match '/characters/:character/names/create' => 'character_name#create', :as => :character_name_create
  match '/characters/:character/names/:name' => 'character_name#show', :as => :character_name_show
  match '/characters/:character/names/:name/edit' => 'character_name#edit', :as => :character_name_edit
  match '/characters/:character/names/:name_to_update/update' => 'character_name#update', :as => :character_name_update
  match '/characters/:character/names/:name/delete' => 'character_name#delete', :as => :character_name_delete
  
  match '/characters/:character/notes' => 'character_note#index', :as => :character_note_list
  match '/characters/:character/notes/new' => 'character_note#new', :as => :character_note_new
  match '/characters/:character/notes/create' => 'character_note#create', :as => :character_note_create
  match '/characters/:character/notes/:note' => 'character_note#show', :as => :character_note_show
  match '/characters/:character/notes/:note/edit' => 'character_note#edit', :as => :character_note_edit
  match '/characters/:character/notes/:note_to_update/update' => 'character_note#update', :as => :rcharacter_note_update
  match '/characters/:character/notes/:note/delete' => 'character_note#delete', :as => :character_note_delete
  
  match 'characters/:character/scenes' => 'character_scene#index', :as => :character_scene_list
  match 'characters/:character/scenes/:scene' => 'character_scene#show', :as => :character_scene_show
  
  match '/relationships' => 'relationship#index', :as => :relationship_list
  match '/relationships/graphviz' => 'relationship#graphviz', :as => :relationship_graphviz
  match '/relationships/new' => 'relationship#new', :as => :relationship_new
  match '/relationships/create' => 'relationship#create', :as => :relationship_create
  match '/relationships/:relationship' => 'relationship#show', :as => :relationship_show
  match '/relationships/:relationship/edit' => 'relationship#edit', :as => :relationship_edit
  match '/relationships/:relationship_to_update/update' => 'relationship#update', :as => :relationship_update
  match '/relationships/:relationship/delete' => 'relationship#delete', :as => :relationship_delete
  
  match '/relationship-types' => 'relationship_type#index', :as => :relationship_type_list
  match '/relationship-types/new' => 'relationship_type#new', :as => :relationship_type_new
  match '/relationship-types/create' => 'relationship_type#create', :as => :relationship_type_create
  match '/relationship-types/:relationship_type' => 'relationship_type#show', :as => :relationship_type_show
  match '/relationship-types/:relationship_type/edit' => 'relationship_type#edit', :as => :relationship_type_edit
  match '/relationship-types/:relationship_type_to_update/update' => 'relationship_type#update', :as => :relationship_type_update
  match '/relationship-types/:relationship_type/delete' => 'relationship_type#delete', :as => :relationship_type_delete
  
  match '/occupations' => 'occupation#index', :as => :occupation_list
  match '/occupations/new' => 'occupation#new', :as => :occupation_new
  match '/occupations/create' => 'occupation#create', :as => :occupation_create
  match '/occupations/:occupation' => 'occupation#show', :as => :occupation_show
  match '/occupations/:occupation/edit' => 'occupation#edit', :as => :occupation_edit
  match '/occupations/:occupation_to_update/update' => 'occupation#update', :as => :occupation_update
  match '/occupations/:occupation/delete' => 'occupation#delete', :as => :occupation_delete
  
  match '/groups' => 'group#index', :as => :group_list
  match '/groups/new' => 'group#new', :as => :group_new
  match '/groups/create' => 'group#create', :as => :group_create
  match '/groups/:group' => 'group#show', :as => :group_show
  match '/groups/:group/edit' => 'group#edit', :as => :group_edit
  match '/groups/:group_to_update/update' => 'group#update', :as => :group_update
  match '/groups/:group/delete' => 'group#delete', :as => :group_delete
  
  match '/characters/:character/memberships' => 'membership#index', :as => :membership_list
  match '/characters/:character/memberships/new' => 'membership#new', :as => :membership_new
  match '/characters/:character/memberships/create' => 'membership#create', :as => :membership_create
  match '/characters/:character/memberships/:membership' => 'membership#show', :as => :membership_show
  match '/characters/:character/memberships/:membership/edit' => 'membership#edit', :as => :membership_edit
  match '/characters/:character/memberships/:membership_to_update/update' => 'membership#update', :as => :membership_update
  match '/characters/:character/memberships/:membership/delete' => 'membership#delete', :as => :membership_delete
  
  match '/characters/:character/residences' => 'residence#index', :as => :residence_list
  match '/characters/:character/residences/new' => 'residence#new', :as => :residence_new
  match '/characters/:character/residences/create' => 'residence#create', :as => :residence_create
  match '/characters/:character/residences/:residence' => 'residence#show', :as => :residence_show
  match '/characters/:character/residences/:residence/edit' => 'residence#edit', :as => :residence_edit
  match '/characters/:character/residences/:residence_to_update/update' => 'residence#update', :as => :residence_update
  match '/characters/:character/residences/:residence/delete' => 'residence#delete', :as => :residence_delete
  
  match '/characters/:character/occupations' => 'character_occupation#index', :as => :character_occupation_list
  match '/characters/:character/occupations/new' => 'character_occupation#new', :as => :character_occupation_new
  match '/characters/:character/occupations/create' => 'character_occupation#create', :as => :character_occupation_create
  match '/characters/:character/occupations/:character_occupation' => 'character_occupation#show', :as => :character_occupation_show
  match '/characters/:character/occupations/:character_occupation/edit' => 'character_occupation#edit', :as => :character_occupation_edit
  match '/characters/:character/occupations/:character_occupation_to_update/update' => 'character_occupation#update', :as => :character_occupation_update
  match '/characters/:character/occupations/:character_occupation/delete' => 'character_occupation#delete', :as => :character_occupation_delete
  
  match '/characters/:character/belongings' => 'belonging#index', :as => :belonging_list
  match '/characters/:character/belongings/new' => 'belonging#new', :as => :belonging_new
  match '/characters/:character/belongings/create' => 'belonging#create', :as => :belonging_create
  match '/characters/:character/belongings/:belonging' => 'belonging#show', :as => :belonging_show
  match '/characters/:character/belongings/:belonging/edit' => 'belonging#edit', :as => :belonging_edit
  match '/characters/:character/belongings/:belonging_to_update/update' => 'belonging#update', :as => :belonging_update
  match '/characters/:character/belongings/:belonging/delete' => 'belonging#delete', :as => :belonging_delete
  
  match '/artefacts' => 'artefact#index', :as => :artefact_list
  match '/artefacts/new' => 'artefact#new', :as => :artefact_new
  match '/artefacts/create' => 'artefact#create', :as => :artefact_create
  match '/artefacts/:artefact' => 'artefact#show', :as => :artefact_show
  match '/artefacts/:artefact/edit' => 'artefact#edit', :as => :artefact_edit
  match '/artefacts/:artefact_to_update/update' => 'artefact#update', :as => :artefact_update
  match '/artefacts/:artefact/delete' => 'artefact#delete', :as => :artefact_delete
  
  match '/places' => 'place#index', :as => :place_list
  match '/places/new' => 'place#new', :as => :place_new
  match '/places/create' => 'place#create', :as => :place_create
  match '/places/:place' => 'place#show', :as => :place_show
  match '/places/:place/edit' => 'place#edit', :as => :place_edit
  match '/places/:place_to_update/update' => 'place#update', :as => :place_update
  match '/places/:place/delete' => 'place#delete', :as => :place_delete
  
  match '/places/:place/notes' => 'place_note#index', :as => :place_note_list
  match '/places/:place/notes/new' => 'place_note#new', :as => :place_note_new
  match '/places/:place/notes/create' => 'place_note#create', :as => :place_note_create
  match '/places/:place/notes/:note' => 'place_note#show', :as => :place_note_show
  match '/places/:place/notes/:note/edit' => 'place_note#edit', :as => :place_note_edit
  match '/places/:place/notes/:note_to_update/update' => 'place_note#update', :as => :place_note_update
  match '/places/:place/notes/:note/delete' => 'place_note#delete', :as => :place_note_delete
  
  match '/storylines' => 'storyline#index', :as => :storyline_list
  match '/storylines/new' => 'storyline#new', :as => :storyline_new
  match '/storylines/create' => 'storyline#create', :as => :storyline_create
  match '/storylines/:storyline' => 'storyline#show', :as => :storyline_show
  match '/storylines/:storyline/edit' => 'storyline#edit', :as => :storyline_edit
  match '/storylines/:storyline_to_update/update' => 'storyline#update', :as => :storyline_update
  match '/storylines/:storyline/delete' => 'storyline#delete', :as => :storyline_delete
  
  match '/storylines/:storyline/beats' => 'beat#index', :as => :beat_list
  match '/storylines/:storyline/beats/new' => 'beat#new', :as => :beat_new
  match '/storylines/:storyline/beats/create' => 'beat#create', :as => :beat_create
  match '/storylines/:storyline/beats/:beat' => 'beat#show', :as => :beat_show
  match '/storylines/:storyline/beats/:beat/edit' => 'beat#edit', :as => :beat_edit
  match '/storylines/:storyline/beats/:beat_to_update/update' => 'beat#update', :as => :beat_update
  match '/storylines/:storyline/beats/:beat/delete' => 'beat#delete', :as => :beat_delete
  
  match '/storylines/:storyline/scenes' => 'storyline_scene#index', :as => :storyline_scene_list
  match '/storylines/:storyline/scenes/:scene' => 'storyline_scene#show', :as => :storyline_scene_show
  
  match '/episodes' => 'episode#index', :as => :episode_list
  match '/episodes/new' => 'episode#new', :as => :episode_new
  match '/episodes/create' => 'episode#create', :as => :episode_create
  match '/episodes/:episode' => 'episode#show', :as => :episode_show
  match '/episodes/:episode/edit' => 'episode#edit', :as => :episode_edit
  match '/episodes/:episode_to_update/update' => 'episode#update', :as => :episode_update
  match '/episodes/:episode/delete' => 'episode#delete', :as => :episode_delete
  
  match 'episodes/:episode/scenes' => 'episode_scene#index', :as => :episode_scene_list
  match 'episodes/:episode/scenes/new' => 'episode_scene#new', :as => :episode_scene_new
  
  match '/scenes' => 'scene#index', :as => :scene_list
  match '/scenes/new' => 'scene#new', :as => :scene_new
  match '/scenes/create' => 'scene#create', :as => :scene_create
  match '/scenes/:scene' => 'scene#show', :as => :scene_show
  match '/scenes/:scene/edit' => 'scene#edit', :as => :scene_edit
  match '/scenes/:scene_to_update/update' => 'scene#update', :as => :scene_update
  match '/scenes/:scene/delete' => 'scene#delete', :as => :scene_delete
  
  match '/actors' => 'actor#index', :as => :actor_list
  match '/actors/new' => 'actor#new', :as => :actor_new
  match '/actors/create' => 'actor#create', :as => :actor_create
  match '/actors/:actor' => 'actor#show', :as => :actor_show
  match '/actors/:actor/edit' => 'actor#edit', :as => :actor_edit
  match '/actors/:actor_to_update/update' => 'actor#update', :as => :actor_update
  match '/actors/:actor/delete' => 'actor#delete', :as => :actor_delete
  
  match '/characters/:character/castings' => 'casting#index', :as => :casting_list
  match '/characters/:character/castings/new' => 'casting#new', :as => :casting_new
  match '/characters/:character/castings/create' => 'casting#create', :as => :casting_create
  match '/characters/:character/castings/:casting' => 'casting#show', :as => :casting_show
  match '/characters/:character/castings/:casting/edit' => 'casting#edit', :as => :casting_edit
  match '/characters/:character/castings/:casting_to_update/update' => 'casting#update', :as => :casting_update
  match '/characters/:character/castings/:casting/delete' => 'casting#delete', :as => :casting_delete
  
  match '/crews' => 'crew#index', :as => :crew_list
  match '/crews/new' => 'crew#new', :as => :crew_new
  match '/crews/create' => 'crew#create', :as => :crew_create
  match '/crews/:crew' => 'crew#show', :as => :crew_show
  match '/crews/:crew/edit' => 'crew#edit', :as => :crew_edit
  match '/crews/:crew_to_update/update' => 'crew#update', :as => :crew_update
  match '/crews/:crew/delete' => 'crew#delete', :as => :crew_delete
  
  match '/universes' => 'universe#index', :as => :universe_list
  match '/universes/new' => 'universe#new', :as => :universe_new
  match '/universes/create' => 'universe#create', :as => :universe_create
  match '/universes/:universe' => 'universe#show', :as => :universe_show
  match '/universes/:universe/edit' => 'universe#edit', :as => :universe_edit
  match '/universes/:universe_to_update/update' => 'universe#update', :as => :universe_update
  
  match '/tleos' => 'tleo#index', :as => :tleo_list
  match '/tleos/new' => 'tleo#new', :as => :tleo_new
  match '/tleos/create' => 'tleo#create', :as => :tleo_create
  match '/tleos/:tleo' => 'tleo#show', :as => :tleo_show
  match '/tleos/:tleo/delete' => 'tleo#delete', :as => :tleo_delete
  

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
