class Api::SubsController < ApplicationController
  # traffic directors
  # base off of the route, we are going to do one of the methods

  # methods - actions, main features we can do in our app, crud
# index GET, grab all of our records of the table, 
# show GET, Id, grab one of the records base off of the id 
# create POST, attr, obj , go through vaidates, params, 
  # if else, create the obj and store within our table 
# update PUT, id, obj, go through vaidates, params, 
  # if else, update the obj base off of id and store within our table 
# destroy DELETE, id delete from the table
  
  # follow pattern to fill out the controller

  # new edit - forms which is handle on the react side not here

  # Controller for all actions they to return 
  # html json, xml, redirect to a action that does

  # skinny controller fat model
  # callback, trigger logic on a actions 
  # before_action only, except
  # after_action
  # skip_before_action
  # skip_after_action

  # class ApplicationController < ActionController::Base
  #   before_action :verify_paid, only: [:index, :create]
  
  #   def verify_paid
  #     @paid = true
  #   end
  # end

  # Pattern
  # Model, -> Sub
  # Singular, Capital 
  # def index 
  #   render json: Model_name.all 
  # end

  # def show
  #   @model_name = Model_name.find(params[:id])
  #   render json: @model_name
  # end