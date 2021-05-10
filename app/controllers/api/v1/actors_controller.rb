class Api::V1::ActorsController < ApplicationController

    def index
        actor = Actor.all
        render json: actor
    end

    private

        def actor_params
            params.require(:actor).permit(:name, :movie_id)
        end
end
