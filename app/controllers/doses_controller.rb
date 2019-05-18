# frozen_string_literal: true

class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(params_doses)
    @dose.cocktail = @cocktail
    if params[:dose][:ingredient_id]
      @ingredient = Ingredient.find(params[:dose][:ingredient_id])
      @dose.ingredient = @ingredient
  end
    @dose.save
    if @dose.valid?
      redirect_to cocktail_path(@cocktail)
    else
      render "cocktails/show"
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktails_path
  end
end

private

def params_doses
  params.require(:dose).permit(:description)
end
