class UserChordsController < ApplicationController
  # before_action :authenticate_user, except: [:index, :show]

  def index
    user_chords = User_chord.all
    render json: user_chords
  end

  def show
    user_chord = User_chord.find(params[:id])
    render json: user_chord
  end

  def create
    user_chord = User_chord.new(
      user_id: params[:user_id],
      chord_id: params[:chord_id],
      catalog: params[:catalog],
    )
    if user_chord.save
      render json: user_chord
    else
      render json: { errors: user_chord.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # def update
  #   user_chord = User_chord.find(params[:id])
  #   user_chord.user_id = params[:user_id] || user_chord.user_id
  #   user_chord.chord_id = params[:chord_id] || user_chord.chord_id
  #   user_chord.catalog = params[:catalog] || user_chord.catalog
  #   if user_chord.save
  #     render json: user_chord
  #   else
  #     render json: { errors: user_chord.errors.full_messages }, status: :unprocessable_entity
  #   end
  # end

  def destroy
    user_chord = User_chord.find(params[:id])
    user_chord.destroy
    render json: { message: "User chord deleted!" }
  end
end
