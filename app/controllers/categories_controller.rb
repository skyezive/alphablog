class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def index
  end

  def show
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "Category was created successfully"
      redirect_to @category  # Redirect to the show action for the newly created category
    else
      render 'new', status: :unprocessable_entity
    end
  end
  

  private

  def category_params
    params.require(:category).permit(:name)
  end



end