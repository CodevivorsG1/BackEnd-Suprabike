# == Schema Information
#
# Table name: components
#
#  id                    :integer          not null, primary key
#  type_component        :string
#  price_component       :float
#  description_component :string
#  brand_component       :string
#  sizes_component       :float
#  material_component    :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  store_id              :integer
#  part_of_bike          :string
#  strength              :string
#  length                :float
#  height                :string
#  suspension            :string
#  width                 :float
#  amount_of_relief      :string
#  rin                   :integer
#  profile               :string
#  frame_size            :float
#  rear_suspension       :string
#  number_of_changes     :integer
#  num_plates            :integer
#  num_dish_teeth        :integer
#

class Component < ApplicationRecord
    validates :type_component, presence: true,length: { maximum: 20 }
    validates :price_component, presence: true , numericality: true
    validates :description_component, presence: true,length: { maximum: 50 }
    validates :brand_component, presence: true,length: { maximum: 20 }
    validates :sizes_component, presence: true, numericality: true,length: { maximum: 20 }
    validates :material_component, presence: true,length: { maximum: 20 }

    belongs_to :store, required: false
    has_many :images, as: :imageable , dependent: :destroy
    has_many :assemble_parts
    has_many :bicycle_to_assembles , through: :assemble_parts

    #scope :baratos, lambda { |price_component| where("price_component < ?", price_component) }
    scope :baratos, lambda { |price_component| where("price_component < ?", price_component) }
    
    scope :get_seats_to_urban, -> { where("part_of_bike = lower(:part_of_bike) and suspension <> ''", { part_of_bike: "sillin".downcase , suspension:""})}
    scope :get_seats_to_bmx, -> { where("part_of_bike = lower(:part_of_bike) and height = :height ", { part_of_bike: "sillin".downcase , height: "alta"})}
    scope :get_seats, -> { where("part_of_bike = lower(:part_of_bike) and type_component = :type_component ", { part_of_bike: "sillin".downcase , type_component: "antiprostatico" })}
    
    scope :get_handlebar_to_urban, -> { where("part_of_bike = lower(:part_of_bike) and width = :width and height = :height", { part_of_bike: "manillar".downcase , width: 40 , height: "alta"})}
    scope :get_handlebar_to_mountain, -> { where("part_of_bike = lower(:part_of_bike) and strength = :strength and height = :height", { part_of_bike: "manillar".downcase , strength: "alta" , height: "alta"})}
    scope :get_handlebar_to_road, -> { where("part_of_bike = lower(:part_of_bike) and type_component = :type_component", { part_of_bike: "manillar".downcase , type_component: "de carretera"})}
    scope :get_handlebar_to_bmx, -> { where("part_of_bike = lower(:part_of_bike) and width = :width and height = :height and type_component = :type_component", { part_of_bike: "manillar".downcase , width: 40 , height: "alta" , type_component: "riser bar"})}

    scope :get_fork_to_urban, -> { where("part_of_bike = lower(:part_of_bike) and type_component = :type_component and suspension <> '' ", { part_of_bike: "horquilla".downcase , type_component: "sencillo" , suspension:""})}
    scope :get_fork_to_mountain, -> { where("part_of_bike = lower(:part_of_bike) and type_component = :type_component and suspension <> '' ", { part_of_bike: "horquilla".downcase , type_component: "mtb" , suspension:""})}
    scope :get_fork_to_road, -> { where("part_of_bike = lower(:part_of_bike) and suspension is null ", { part_of_bike: "horquilla".downcase })}
    scope :get_fork_to_bmx, -> { where("part_of_bike = lower(:part_of_bike) and type_component = :type_component and suspension <> '' ", { part_of_bike: "horquilla".downcase , type_component: "bmx" , suspension:""})}

    scope :get_tire_to_urban, -> { where("part_of_bike = lower(:part_of_bike) and type_component = :type_component and amount_of_relief = :amount_of_relief ", { part_of_bike: "llantas".downcase , type_component: "pisteras" , amount_of_relief:"pocos"})}
    scope :get_tire_to_mountain, -> { where("part_of_bike = lower(:part_of_bike) and type_component = :type_component and amount_of_relief = :amount_of_relief and strength = :strength", { part_of_bike: "llantas".downcase , type_component: "pisteras" , amount_of_relief:"muchos", strength: "alta"})}
    scope :get_tire_to_road, -> { where("part_of_bike = lower(:part_of_bike) and type_component = :type_component and amount_of_relief = :amount_of_relief ", { part_of_bike: "llantas".downcase , type_component: "lisas" , amount_of_relief:"ninguno"})}

    scope :get_wheel_to_urban, -> { where("part_of_bike = lower(:part_of_bike) and rin >= 26 AND rin <= 28", { part_of_bike: "ruedas".downcase })}
    scope :get_wheel_to_mountain, -> { where("part_of_bike = lower(:part_of_bike) and rin = :rin and strength = :strength and type_component = :type_component", { part_of_bike: "ruedas".downcase , rin: 26, strength: "alta" ,  type_component: "doble pared"})}
    scope :get_wheel_to_road,-> { where("part_of_bike = lower(:part_of_bike) and rin = :rin and profile = :profile", { part_of_bike: "ruedas".downcase , rin: 28, profile: "bajo"})}
    scope :get_wheel_to_bmx, -> { where("part_of_bike = lower(:part_of_bike) and rin = :rin and strength = :strength and type_component = :type_component", { part_of_bike: "ruedas".downcase , rin: 20, strength: "alta" ,  type_component: "doble pared"})}
    
    scope :get_brakes_to_urban, -> { where("part_of_bike = lower(:part_of_bike) and type_component = :type_component", { part_of_bike: "frenos".downcase ,  type_component: "V brakes"})}
    scope :get_brakes_to_mountain, -> { where("part_of_bike = lower(:part_of_bike) and type_component = :type_component", { part_of_bike: "frenos".downcase ,  type_component: "de disco"})}
    scope :get_brakes_to_bmx,  -> { where("part_of_bike = lower(:part_of_bike) and type_component = :type_component", { part_of_bike: "frenos".downcase ,  type_component: "U brakes"})}

    scope :get_frame_size_to_urban_xs, -> { where("part_of_bike = lower(:part_of_bike) and frame_size >= 18.5 AND frame_size <= 19.29", { part_of_bike: "marco".downcase })}
    scope :get_frame_size_to_urban_s, -> { where("part_of_bike = lower(:part_of_bike) and frame_size >= 19.4 AND frame_size <= 20.86", { part_of_bike: "marco".downcase })}
    scope :get_frame_size_to_urban_m, -> { where("part_of_bike = lower(:part_of_bike) and frame_size >= 20.91 AND frame_size <= 22.44", { part_of_bike: "marco".downcase })}
    scope :get_frame_size_to_urban_l, -> { where("part_of_bike = lower(:part_of_bike) and frame_size >= 22.48 AND frame_size <= 24.02", { part_of_bike: "marco".downcase })}
    scope :get_frame_size_to_urban_xl, -> { where("part_of_bike = lower(:part_of_bike) and frame_size >= 24.41 ", { part_of_bike: "marco".downcase })}

    scope :get_frame_size_to_mountain_xs, -> { where("part_of_bike = lower(:part_of_bike) and frame_size >= 14.0 AND frame_size <= 15.0 and rear_suspension <> '' and strength = :strength  and (material_component LIKE '%aluminio%' OR material_component LIKE '%fibra de carbono%') ", { part_of_bike: "marco".downcase, rear_suspension:"" , strength: "alta"})}
    scope :get_frame_size_to_mountain_s, -> { where("part_of_bike = lower(:part_of_bike) and frame_size >= 15.0 AND frame_size <= 17.0 and rear_suspension <> '' and strength = :strength  and (material_component LIKE '%aluminio%' OR material_component LIKE '%fibra de carbono%') ", { part_of_bike: "marco".downcase, rear_suspension:"" , strength: "alta"})}
    scope :get_frame_size_to_mountain_m, -> { where("part_of_bike = lower(:part_of_bike) and frame_size >= 17.0 AND frame_size <= 19.0 and rear_suspension <> '' and strength = :strength  and (material_component LIKE '%aluminio%' OR material_component LIKE '%fibra de carbono%') ", { part_of_bike: "marco".downcase, rear_suspension:"" , strength: "alta"})}
    scope :get_frame_size_to_mountain_l, -> { where("part_of_bike = lower(:part_of_bike) and frame_size >= 19.0 AND frame_size <= 21.0 and rear_suspension <> '' and strength = :strength  and (material_component LIKE '%aluminio%' OR material_component LIKE '%fibra de carbono%') ", { part_of_bike: "marco".downcase, rear_suspension:"" , strength: "alta"})}
    scope :get_frame_size_to_mountain_xl, -> { where("part_of_bike = lower(:part_of_bike) and frame_size >= 22.0  and rear_suspension <> '' and strength = :strength  and (material_component LIKE '%aluminio%' OR material_component LIKE '%fibra de carbono%' ", { part_of_bike: "marco".downcase, rear_suspension:"" , strength: "alta"})}

    scope :get_frame_size_to_road_xs, -> { where("part_of_bike = lower(:part_of_bike) and frame_size >= 18.5 AND frame_size <= 19.29 AND ( material_component LIKE '%aluminio%' OR material_component LIKE '%fibra de carbono%') and type_component = :type_component", { part_of_bike: "marco".downcase , type_component: "de carrera"})}
    scope :get_frame_size_to_road_s, -> { where("part_of_bike = lower(:part_of_bike) and frame_size >= 19.4 AND frame_size <= 20.86 AND ( material_component LIKE '%aluminio%' OR material_component LIKE '%fibra de carbono%') and type_component = :type_component", { part_of_bike: "marco".downcase , type_component: "de carrera"})}
    scope :get_frame_size_to_road_m, -> { where("part_of_bike = lower(:part_of_bike) and frame_size >= 20.91 AND frame_size <= 22.44 AND ( material_component LIKE '%aluminio%' OR material_component LIKE '%fibra de carbono%') and type_component = :type_component", { part_of_bike: "marco".downcase , type_component: "de carrera"})}
    scope :get_frame_size_to_road_l, -> { where("part_of_bike = lower(:part_of_bike) and frame_size >= 22.48 AND frame_size <= 24.02 AND ( material_component LIKE '%aluminio%' OR material_component LIKE '%fibra de carbono%') and type_component = :type_component", { part_of_bike: "marco".downcase , type_component: "de carrera"})}
    scope :get_frame_size_to_road_xl, -> { where("part_of_bike = lower(:part_of_bike) and frame_size >= 24.41 AND ( material_component LIKE '%aluminio%' OR material_component LIKE '%fibra de carbono%') and type_component = :type_component", { part_of_bike: "marco".downcase , type_component: "de carrera"})}

=begin scope :get_frame_size_to_bmx_xs, -> { where("part_of_bike = lower(:part_of_bike) and frame_size >= 18.5 AND frame_size <= 19.29", { part_of_bike: "marco".downcase })}
    scope :get_frame_size_to_bmx_s, -> { where("part_of_bike = lower(:part_of_bike) and frame_size >= 19.4 AND frame_size <= 20.86", { part_of_bike: "marco".downcase })}
    scope :get_frame_size_to_bmx_m, -> { where("part_of_bike = lower(:part_of_bike) and frame_size >= 20.91 AND frame_size <= 22.44", { part_of_bike: "marco".downcase })}
    scope :get_frame_size_to_bmx_l, -> { where("part_of_bike = lower(:part_of_bike) and frame_size >= 22.48 AND frame_size <= 24.02", { part_of_bike: "marco".downcase })}
    scope :get_frame_size_to_bmx_xl, -> { where("part_of_bike = lower(:part_of_bike) and frame_size >= 24.41 ", { part_of_bike: "marco".downcase })}
=end
end
