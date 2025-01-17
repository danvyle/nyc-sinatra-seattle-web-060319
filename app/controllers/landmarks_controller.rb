class LandmarksController < ApplicationController
  # add controller methods
  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  post '/landmarks' do
    @landmark = Landmark.create(:name => params[:name], :year_completed => params[:year_completed])
    redirect to "/landmarks/#{@landmark.id}"
  end

  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmarks/index'
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'/landmarks/show'
  end

  get '/landmarks/:id/edit' do
    @landmark = Landmark.find(params[:id])
    erb :'/landmarks/edit'
  end

  patch '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    @landmark.update(params["landmark"])
    # @landmark.name = params[:name]
    # @landmark.year_completed = params[:year_completed]
    # @landmark.save
    redirect to "/landmarks/#{@landmark.id}"
  end
##editpagestillnotredirecting

  end
