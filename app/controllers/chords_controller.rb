class ChordsController < ApplicationController
  # before_action :authenticate_user, except: [:index, :show]

  def index
    chords = Chord.all
    render json: chords
  end

  def show
    chord = Chord.find(params[:id])
    render json: chord
  end

  # def create
  #   chord = Chord.new(
  #     name: params[:name],
  #     image: params[:image],
  #     root: params[:root],
  #     alteration: params[:alteration],
  #     quality: params[:quality],
  #     option: params[:option],
  #   )
  #   if chord.save
  #     render json: chord
  #   else
  #     render json: { errors: chord.errors.full_messages }, status: :unprocessable_entity
  #   end
  # end

  # def update
  #   chord = Chord.find(params[:id])
  #   chord.name = params[:name] || chord.name
  #   chord.image = params[:image] || chord.image
  #   chord.root = params[:root] || chord.root
  #   chord.alteration = params[:alteration] || chord.alteration
  #   chord.quality = params[:quality] || chord.quality
  #   chord.option = params[:option] || chord.option
  #   if chord.save
  #     render json: chord
  #   else
  #     render json: { errors: chord.errors.full_messages }, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   chord = Chord.find(params[:id])
  #   chord.destroy
  #   render json: { message: "Chord deleted!" }
  # end
end
