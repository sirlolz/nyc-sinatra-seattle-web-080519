require 'pry'
class LandmarksController < ApplicationController
  # add controller methods
  get '/landmarks' do
    landmark = Landmark.new()
    @landmarks = Landmark.all

    erb :'/landmarks/index'
  end

  get '/landmarks/new' do
    erb :'landmarks/new'
  end
  
  get '/landmarks/:id' do
    @landmark = Landmark.find_by_id(params[:id])
    erb :'landmarks/show'
  end


  post '/landmarks' do
    landmark = Landmark.new()
    @name = params['landmark']['name'].to_s
    @year_completed = params['landmark']['year_completed'].to_s
    landmark.name = @name
    landmark.year_completed = @year_completed
    landmark.save

    @landmarks = Landmark.all
    
    erb :'/landmarks/index'
  end

  get '/landmarks/:id/edit' do
    #edit action
    #displays edit form based on ID in the url
    @landmark = Landmark.find_by_id(params[:id])
    erb :'/landmarks/edit'
  end

  patch '/landmarks/:id' do
    # binding.pry
    #update action
    #modifies an existing article based on ID in the url
    @landmark = Landmark.find_by_id(params[:id])
    @landmark.name = params[:landmark]['name'].to_s
    @landmark.year_completed = params[:landmark]['year_completed'].to_i
    @landmark.save
    redirect "/landmarks/:id"
  end




  
end
