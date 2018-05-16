# == Route Map
#
#                       Prefix Verb   URI Pattern                              Controller#Action
#               assemble_parts GET    /assemble_parts(.:format)                assemble_parts#index
#                              POST   /assemble_parts(.:format)                assemble_parts#create
#                assemble_part GET    /assemble_parts/:id(.:format)            assemble_parts#show
#                              PATCH  /assemble_parts/:id(.:format)            assemble_parts#update
#                              PUT    /assemble_parts/:id(.:format)            assemble_parts#update
#                              DELETE /assemble_parts/:id(.:format)            assemble_parts#destroy
#         bicycle_to_assembles GET    /bicycle_to_assembles(.:format)          bicycle_to_assembles#index
#                              POST   /bicycle_to_assembles(.:format)          bicycle_to_assembles#create
#          bicycle_to_assemble GET    /bicycle_to_assembles/:id(.:format)      bicycle_to_assembles#show
#                              PATCH  /bicycle_to_assembles/:id(.:format)      bicycle_to_assembles#update
#                              PUT    /bicycle_to_assembles/:id(.:format)      bicycle_to_assembles#update
#                              DELETE /bicycle_to_assembles/:id(.:format)      bicycle_to_assembles#destroy
#                   home_index GET    /home/index(.:format)                    home#index
#             bicycles_showpdf GET    /bicycles/showpdf(.:format)              pdfs#show
#          technicians_showpdf GET    /technicians/showpdf(.:format)           pricetech#show
#           components_showpdf GET    /components/showpdf(.:format)            pricescomponents#show
#               stores_ranking GET    /stores/ranking(.:format)                beststores#ranking
#          technicians_filter1 GET    /technicians/filter1(.:format)           filtertechnician#filtrar1
#          technicians_filter2 GET    /technicians/filter2(.:format)           filtertechnician#filtrar2
#      technicians_tecnicosman GET    /technicians/tecnicosman(.:format)       filtertechnician#mantenimiento
#            bicycles_aluminio GET    /bicycles/aluminio(.:format)             filterbicycles#aluminio
#               bicycles_acero GET    /bicycles/acero(.:format)                filterbicycles#acero
#             bicycles_carbono GET    /bicycles/carbono(.:format)              filterbicycles#carbono
#                  bicycles_gw GET    /bicycles/gw(.:format)                   filterbicycles#gw
#         bicycles_specialized GET    /bicycles/specialized(.:format)          filterbicycles#special
#             bicycles_raleigh GET    /bicycles/raleigh(.:format)              filterbicycles#rale
#                bicycles_trek GET    /bicycles/trek(.:format)                 filterbicycles#trek
#                bicycles_h500 GET    /bicycles/h500(.:format)                 filterbicycles#h500
#             bicycles_hmillon GET    /bicycles/hmillon(.:format)              filterbicycles#hmillon
#             bicycles_dmillon GET    /bicycles/dmillon(.:format)              filterbicycles#dmillon
# bicycles_send_bikes_to_users GET    /bicycles/send_bikes_to_users(.:format)  bicycles#send_bikes_to_users
#                       cities GET    /cities(.:format)                        cities#index
#                              POST   /cities(.:format)                        cities#create
#                         city GET    /cities/:id(.:format)                    cities#show
#                              PATCH  /cities/:id(.:format)                    cities#update
#                              PUT    /cities/:id(.:format)                    cities#update
#                              DELETE /cities/:id(.:format)                    cities#destroy
#                        users GET    /users(.:format)                         users#index
#                              POST   /users(.:format)                         users#create
#                         user GET    /users/:id(.:format)                     users#show
#                              PATCH  /users/:id(.:format)                     users#update
#                              PUT    /users/:id(.:format)                     users#update
#                              DELETE /users/:id(.:format)                     users#destroy
#                 transactions GET    /transactions(.:format)                  transactions#index
#                              POST   /transactions(.:format)                  transactions#create
#                  transaction GET    /transactions/:id(.:format)              transactions#show
#                              PATCH  /transactions/:id(.:format)              transactions#update
#                              PUT    /transactions/:id(.:format)              transactions#update
#                              DELETE /transactions/:id(.:format)              transactions#destroy
#                  technicians GET    /technicians(.:format)                   technicians#index
#                              POST   /technicians(.:format)                   technicians#create
#                   technician GET    /technicians/:id(.:format)               technicians#show
#                              PATCH  /technicians/:id(.:format)               technicians#update
#                              PUT    /technicians/:id(.:format)               technicians#update
#                              DELETE /technicians/:id(.:format)               technicians#destroy
#                       stores GET    /stores(.:format)                        stores#index
#                              POST   /stores(.:format)                        stores#create
#                        store GET    /stores/:id(.:format)                    stores#show
#                              PATCH  /stores/:id(.:format)                    stores#update
#                              PUT    /stores/:id(.:format)                    stores#update
#                              DELETE /stores/:id(.:format)                    stores#destroy
#                       images GET    /images(.:format)                        images#index
#                              POST   /images(.:format)                        images#create
#                        image GET    /images/:id(.:format)                    images#show
#                              PATCH  /images/:id(.:format)                    images#update
#                              PUT    /images/:id(.:format)                    images#update
#                              DELETE /images/:id(.:format)                    images#destroy
#               forum_comments GET    /forums/:forum_id/comments(.:format)     comments#index
#                              POST   /forums/:forum_id/comments(.:format)     comments#create
#                forum_comment GET    /forums/:forum_id/comments/:id(.:format) comments#show
#                              PATCH  /forums/:forum_id/comments/:id(.:format) comments#update
#                              PUT    /forums/:forum_id/comments/:id(.:format) comments#update
#                              DELETE /forums/:forum_id/comments/:id(.:format) comments#destroy
#                       forums GET    /forums(.:format)                        forums#index
#                              POST   /forums(.:format)                        forums#create
#                        forum GET    /forums/:id(.:format)                    forums#show
#                              PATCH  /forums/:id(.:format)                    forums#update
#                              PUT    /forums/:id(.:format)                    forums#update
#                              DELETE /forums/:id(.:format)                    forums#destroy
#                   components GET    /components(.:format)                    components#index
#                              POST   /components(.:format)                    components#create
#                    component GET    /components/:id(.:format)                components#show
#                              PATCH  /components/:id(.:format)                components#update
#                              PUT    /components/:id(.:format)                components#update
#                              DELETE /components/:id(.:format)                components#destroy
#                     bicycles GET    /bicycles(.:format)                      bicycles#index
#                              POST   /bicycles(.:format)                      bicycles#create
#                      bicycle GET    /bicycles/:id(.:format)                  bicycles#show
#                              PATCH  /bicycles/:id(.:format)                  bicycles#update
#                              PUT    /bicycles/:id(.:format)                  bicycles#update
#                              DELETE /bicycles/:id(.:format)                  bicycles#destroy
#               users_sessions POST   /users_sessions(.:format)                users_sessions#create
#                users_session DELETE /users_sessions/:id(.:format)            users_sessions#destroy
#      auth_google_token_index POST   /auth_google_token(.:format)             auth_google_token#create
#            auth_google_token DELETE /auth_google_token/:id(.:format)         auth_google_token#destroy
#         technicians_sessions POST   /technicians_sessions(.:format)          technicians_sessions#create
#          technicians_session DELETE /technicians_sessions/:id(.:format)      technicians_sessions#destroy
#              stores_sessions POST   /stores_sessions(.:format)               stores_sessions#create
#               stores_session DELETE /stores_sessions/:id(.:format)           stores_sessions#destroy
#                         root GET    /                                        home#index
# 

Rails.application.routes.draw do
  resources :assemble_parts
  resources :bicycle_to_assembles
  get 'home/index'
  get "bicycles/showpdf", to: "pdfs#show"
  get "technicians/showpdf", to: "pricetech#show"
  get "components/showpdf", to: "pricescomponents#show"
  get "stores/ranking", to: "beststores#ranking"
  get "technicians/filter1", to: "filtertechnician#filtrar1"
  get "technicians/filter2", to: "filtertechnician#filtrar2"
  get "technicians/tecnicosman", to: "filtertechnician#mantenimiento"
  get "bicycles/aluminio", to: "filterbicycles#aluminio"
  get "bicycles/acero", to: "filterbicycles#acero"
  get "bicycles/carbono", to: "filterbicycles#carbono"
  get "bicycles/gw", to: "filterbicycles#gw"
  get "bicycles/specialized", to: "filterbicycles#special"
  get "bicycles/raleigh", to: "filterbicycles#rale"
  get "bicycles/trek", to: "filterbicycles#trek"
  get "bicycles/h500", to: "filterbicycles#h500"
  get "bicycles/hmillon", to: "filterbicycles#hmillon"
  get "bicycles/dmillon", to: "filterbicycles#dmillon"
  get "bicycles/send_bikes_to_users", to:"bicycles#send_bikes_to_users"

  get "components/get_seats_to_urban", to: "get_parts#get_seats_to_urban"
  get "components/get_seats_to_bmx", to: "get_parts#get_seats_to_bmx"
  get "components/get_seats", to: "get_parts#get_seats"

  get "components/get_handlebar_to_urban", to: "get_parts#get_handlebar_to_urban"
  get "components/get_handlebar_to_mountain", to: "get_parts#get_handlebar_to_mountain"
  get "components/get_handlebar_to_road", to: "get_parts#get_handlebar_to_road"
  get "components/get_handlebar_to_bmx", to: "get_parts#get_handlebar_to_bmx"

  get "components/get_fork_to_urban" , to: "get_parts#get_fork_to_urban"
  get "components/get_fork_to_mountain" , to: "get_parts#get_fork_to_mountain"
  get "components/get_fork_to_road" , to: "get_parts#get_fork_to_road"
  get "components/get_fork_to_bmx" , to: "get_parts#get_fork_to_bmx"

  get "components/get_tire_to_urban" , to: "get_parts#get_tire_to_urban"
  get "components/get_tire_to_mountain" , to: "get_parts#get_tire_to_mountain"
  get "components/get_tire_to_road" , to: "get_parts#get_tire_to_road"
  get "components/get_tire_to_bmx" , to: "get_parts#get_tire_to_bmx"

  get "components/get_wheel_to_urban" , to: "get_parts#get_wheel_to_urban"
  get "components/get_wheel_to_mountain" , to: "get_parts#get_wheel_to_mountain"
  get "components/get_wheel_to_road" , to: "get_parts#get_wheel_to_road"
  get "components/get_wheel_to_bmx" , to: "get_parts#get_wheel_to_bmx"

  get "components/get_brakes_to_urban" , to: "get_parts#get_brakes_to_urban"
  get "components/get_brakes_to_mountain" , to: "get_parts#get_brakes_to_mountain"
  get "components/get_brakes_to_bmx" , to: "get_parts#get_brakes_to_bmx"

  get "components/get_frame_size_to_urban_xs" , to: "get_parts#get_frame_size_to_urban_xs"
  get "components/get_frame_size_to_urban_s" , to: "get_parts#get_frame_size_to_urban_s"
  get "components/get_frame_size_to_urban_m" , to: "get_parts#get_frame_size_to_urban_m"
  get "components/get_frame_size_to_urban_l" , to: "get_parts#get_frame_size_to_urban_l"
  get "components/get_frame_size_to_urban_xl" , to: "get_parts#get_frame_size_to_urban_xl"

  get "components/get_frame_size_to_mountain_xs" , to: "get_parts#get_frame_size_to_mountain_xs"
  get "components/get_frame_size_to_mountain_s" , to: "get_parts#get_frame_size_to_mountain_s"
  get "components/get_frame_size_to_mountain_m" , to: "get_parts#get_frame_size_to_mountain_m"
  get "components/get_frame_size_to_mountain_l" , to: "get_parts#get_frame_size_to_mountain_l"
  get "components/get_frame_size_to_mountain_xl" , to: "get_parts#get_frame_size_to_mountain_xl"

  get "components/get_frame_size_to_road_xs" , to: "get_parts#get_frame_size_to_road_xs"
  get "components/get_frame_size_to_road_s" , to: "get_parts#get_frame_size_to_road_s"
  get "components/get_frame_size_to_road_m" , to: "get_parts#get_frame_size_to_road_m"
  get "components/get_frame_size_to_road_l" , to: "get_parts#get_frame_size_to_road_l"
  get "components/get_frame_size_to_road_xl" , to: "get_parts#get_frame_size_to_road_xl"

  get "components/get_frame_size_to_bmx_xs" , to: "get_parts#get_frame_size_to_bmx_xs"
  get "components/get_frame_size_to_bmx_s" , to: "get_parts#get_frame_size_to_bmx_s"
  get "components/get_frame_size_to_bmx_m" , to: "get_parts#get_frame_size_to_bmx_m"
  get "components/get_frame_size_to_bmx_l" , to: "get_parts#get_frame_size_to_bmx_l"
  get "components/get_frame_size_to_bmx_xl" , to: "get_parts#get_frame_size_to_bmx_xl"

  #devise_for :technicians
  #devise_for :stores
  #devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :cities
  resources :users
  resources :transactions
  resources :technicians
  resources :stores
  resources :images
  resources :forums do
    resources :comments 
  end
  resources :components
  resources :bicycles
  resources :users_sessions, only: [ :create ,:destroy]
  resources :auth_google_token, only: [ :create ,:destroy]
  resources :technicians_sessions, only: [ :create ,:destroy]
  resources :stores_sessions, only: [ :create ,:destroy]
  
  
  root to: "home#index"

end
