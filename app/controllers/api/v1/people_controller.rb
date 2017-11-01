module Api
  module V1
    class PeopleController < ApplicationController
      respond_to :json

      def index
        @person = Person.all
        respond_with  @person

      end

      def show
        respond_with Person.find(params[:id])
      end

      def create
        respond_with Person.create(params[:Person])
      end

      def update
        respond_with Person.update(params[:id], params[:Persons])
      end

      def destroy
        respond_with Person.destroy(params[:id])
      end


        private
          # Use callbacks to share common setup or constraints between actions.
          def set_person
            @person = Person.find(params[:id])
          end

          # Never trust parameters from the scary internet, only allow the white list through.
          def person_params
            params.require(:person).permit(:first_name, :last_name, :email, :notes)
          end
    end
  end
end
