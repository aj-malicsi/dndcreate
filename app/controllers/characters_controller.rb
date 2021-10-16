class CharactersController < ApplicationController
    before_action :set_character, only: [:show, :edit, :update, :destroy]

    def index
        @characters = Character.all
    end

    def new
        @character = Character.new
    end

    def create
        @character = Character.new(character_params)

        if @character.save
            flash[:notice] = "message"
            # redirect_to @character, notice: 'Character was successfully created'
            redirect_to characters_path
        else
            render :new
        end

    end

    def show
    end

    def edit
    end

    def update
        if @character.update(character_params)
            redirect_to @character
        else
            render :edit
        end
    end

    def destroy
        if @character.destroy
            redirect_to characters_path
        end
    end

    private
        def set_character
            @character = Character.find(params[:id])
        end

        def character_params
            params.require(:character).permit(:name, :race, :role, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma)
        end
end
