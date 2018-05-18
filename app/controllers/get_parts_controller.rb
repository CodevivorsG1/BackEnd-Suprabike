class GetPartsController < ActionController::Base
    def get_model
        @components = Component.all
    end

    def get_seats_to_urban
        get_model
        render json: @components.get_seats_to_urban
    end

    def get_seats_to_bmx
        get_model
        render json: @components.get_seats_to_bmx
    end

    def get_seats
        get_model
        render json: @components.get_seats
    end

    def get_handlebar_to_urban
        get_model
        render json: @components.get_handlebar_to_urban
    end

    def get_handlebar_to_mountain
        get_model
        render json: @components.get_handlebar_to_mountain
    end

    def get_handlebar_to_road
        get_model
        render json: @components.get_handlebar_to_road
    end

    def get_handlebar_to_bmx
        get_model
        render json: @components.get_handlebar_to_bmx
    end

    def get_fork_to_urban
        get_model
        render json: @components.get_fork_to_urban
    end

    def get_fork_to_mountain
        get_model
        render json: @components.get_fork_to_mountain
    end

    def get_fork_to_road
        get_model
        render json: @components.get_fork_to_road
    end

    def get_fork_to_bmx
        get_model
        render json: @components.get_fork_to_bmx
    end

    def get_tire_to_urban
        get_model
        render json: @components.get_tire_to_urban
    end

    def get_tire_to_mountain
        get_model
        render json: @components.get_tire_to_mountain
    end

    def get_tire_to_road
        get_model
        render json: @components.get_tire_to_road
    end

    def get_tire_to_bmx
        get_model
        render json: @components.get_tire_to_bmx
    end

    def get_wheel_to_urban
        get_model
        render json: @components.get_wheel_to_urban
    end

    def get_wheel_to_mountain
        get_model
        render json: @components.get_wheel_to_mountain
    end

    def get_wheel_to_road
        get_model
        render json: @components.get_wheel_to_road
    end

    def get_wheel_to_bmx
        get_model
        render json: @components.get_wheel_to_bmx
    end

    def get_brakes_to_urban
        get_model
        render json: @components.get_brakes_to_urban
    end

    def get_brakes_to_mountain
        get_model
        render json: @components.get_brakes_to_mountain
    end

    def get_brakes_to_bmx
        get_model
        render json: @components.get_brakes_to_bmx
    end

    def get_frame_size_to_urban_xs
        get_model
        render json: @components.get_frame_size_to_urban_xs
    end

    def get_frame_size_to_urban_s
        get_model
        render json: @components.get_frame_size_to_urban_s
    end

    def get_frame_size_to_urban_m
        get_model
        render json: @components.get_frame_size_to_urban_m
    end

    def get_frame_size_to_urban_l
        get_model
        render json: @components.get_frame_size_to_urban_l
    end

    def get_frame_size_to_urban_xl
        get_model
        render json: @components.get_frame_size_to_urban_xl
    end

    def get_frame_size_to_mountain_xs
        get_model
        render json: @components.get_frame_size_to_mountain_xs
    end

    def get_frame_size_to_mountain_s
        get_model
        render json: @components.get_frame_size_to_mountain_s
    end

    def get_frame_size_to_mountain_m
        get_model
        render json: @components.get_frame_size_to_mountain_m
    end

    def get_frame_size_to_mountain_l
        get_model
        render json: @components.get_frame_size_to_mountain_l
    end

    def get_frame_size_to_mountain_xl
        get_model
        render json: @components.get_frame_size_to_mountain_xl
    end

    def get_frame_size_to_road_xs
        get_model
        render json: @components.get_frame_size_to_road_xs
    end

    def get_frame_size_to_road_s
        get_model
        render json: @components.get_frame_size_to_road_s
    end

    def get_frame_size_to_road_m
        get_model
        render json: @components.get_frame_size_to_road_m
    end

    def get_frame_size_to_road_l
        get_model
        render json: @components.get_frame_size_to_road_l
    end

    def get_frame_size_to_road_xl
        get_model
        render json: @components.get_frame_size_to_road_xl
    end

    def get_frame_size_to_bmx_xs
        get_model
        render json: @components.get_frame_size_to_bmx_xs
    end

    def get_frame_size_to_bmx_s
        get_model
        render json: @components.get_frame_size_to_bmx_s
    end

    def get_frame_size_to_bmx_m
        get_model
        render json: @components.get_frame_size_to_bmx_m
    end

    def get_frame_size_to_bmx_l
        get_model
        render json: @components.get_frame_size_to_bmx_l
    end

    def get_frame_size_to_bmx_xl
        get_model
        render json: @components.get_frame_size_to_bmx_xl
    end

    def get_group_to_urban
        get_model
        render json: @components.get_group_to_urban
    end

    def get_group_to_mountain
        get_model
        render json: @components.get_group_to_mountain
    end

    def get_group_to_road
        get_model
        render json: @components.get_group_to_road
    end

    def get_group_to_bmx
        get_model
        render json: @components.get_group_to_bmx
    end
end
