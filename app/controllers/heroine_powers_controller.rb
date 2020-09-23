class HeroinePowersController < ApplicationController
    before_action :get_hp, only: [:show, :edit, :update, :destroy]

    def index 
        byebug
        @heroine_powers = HeroinePower.all
    end

    def new 
        @heroine_power = HeroinePower.new
        @powers = Power.all
        @heroines = Heroines.all
    end

    def create 
        @heroine_power = HeroinePower.create(get_hp)
        if @heroine_power.valid?
            redirect_to @heroine 
        else
            flash[:errors] = @heroine_power.errors.full_messages
            redirect_to new_heroine_power_path
        end
    end
    
    def show 
    end

    private

    def get_hp
        @heroine_power = HeroinePower.find(params[:id])
    end

    def hp_params
        params.require(:heroine_power).permit!
    end
end
