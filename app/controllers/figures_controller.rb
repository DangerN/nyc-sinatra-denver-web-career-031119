class FiguresController < ApplicationController
  # add controller methods
  #get figures home page
  get '/figures' do
    @figures = Figure.all
    erb :"landmarks/index"
  end
#get figure creation page
  get '/figures/new' do
    erb :"landmarks/new"
  end
#recieve figure creation and create in database
  post '/figures' do
    @figure = Figure.create(params)
    redirect "/figures"
  end
#find figure and get edit figure  page
  get '/figures/:id/edit' do
    @figure = Figure.find(params[:id])
    erb :"landmarks/edit"
  end
#get unique/dynamic show page for figure
  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    erb :"landmarks/show"
  end

#recieve update and update figure name in database
  # put "/figures/:id" do
  #   figure = Figure.find(params[:id])
  #   figure.update(name: params[:name])
  #   redirect "/figures"
  # end

  #recieve delete and delete from database
  delete "/figures/:id" do
    Figure.destroy(params[:id])
    redirect "/figures"
  end
end
