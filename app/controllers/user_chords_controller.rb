class UserChordsController < ApplicationController
  before_action :authenticate_user

  def index
    user_chords = UserChord.where(user_id: current_user.id)
    render json: user_chords
  end

  def show
    # user_chord = UserChord.where(user_id: current_user.id, id: params[:id])
    user_chord = UserChord.find_by(id: params[:id])
    render json: user_chord
  end

  def create
    user_chord = UserChord.new(
      user_id: current_user.id,
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
  #   user_chord = UserChord.find(params[:id])
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
    user_chord = UserChord.find(params[:id])
    user_chord.destroy
    render json: { message: "User chord deleted!" }
  end
end
