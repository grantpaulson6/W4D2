class CatsController < ApplicationController
  
  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find_by(id: params[:id])
    
    if @cat
      render :show
    else
      redirect_to :index
    end
  end

  def new
    @cat = Cat.new
    render :new 
  end

  def create
    if cat = Cat.create(cat_params)
      redirect_to cat_url(cat)
    else
      render :edit
    end
  end

  def edit
    @cat = Cat.find_by(id: params[:id])
    render :edit
  end

  def update
    @cat = Cat.find_by(id: params[:id])
    
    if @cat.update(cat_params)
      redirect_to cat_url(@cat)
    else
      render :edit
    end
  end

  def destroy
    
    if Cat.destroy(params[:id])
      redirect_to cats_url
    else
      render :index 
    end
  end

  private
  def cat_params
    params.require(:cat).permit(:name, :sex, :description, :color, :birth_date)
  end
end
