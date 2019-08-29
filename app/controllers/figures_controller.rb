class FiguresController < ApplicationController
  Title.create(:name => "title1")
  Title.create(:name => "title2")
  # add controller methods
  get '/figures' do
    @figures = Figure.all
    erb :'figures/index'
  end

  get '/figure/:id' do
    @figure = Figure.find(params[:id])
    erb :'figures/show'
  end

  get '/figures/new' do
    # @titles = Title.all
    erb :'figures/new'
  end

  post '/figures' do
    @figure = Figure.create(params[:figure])
    erb :'figures/index'
  end
end
