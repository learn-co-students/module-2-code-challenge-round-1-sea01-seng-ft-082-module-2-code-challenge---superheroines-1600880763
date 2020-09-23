class HeroinePowersController < ApplicationController

    def new
        @heroine_power = HeroinePower.new
    end

    def create
        @heroine_power = HeroinePower.create(heroine_params)

        if @heroine_power.valid?
            redirect_to @heroine_power.heroine
        else
            flash[:errors]= @heroine_power.errors.full_messages
            redirect_to new_heroine_power_path
        end
    end

    private

    def heroine_params
        params.require(:heroine_power).permit(:heroine_id, :power_id, :strength)
    end

end
