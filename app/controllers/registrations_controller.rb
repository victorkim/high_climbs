class RegistrationsController < ApplicationController

    def new
        @climber = Climber.new
    end
end