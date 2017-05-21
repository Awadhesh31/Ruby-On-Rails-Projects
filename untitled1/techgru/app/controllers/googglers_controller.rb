class GoogglersController < ApplicationController

  before_action :google_find, only: [:show, :edit, :update, :destroy]

  def index
    if params[:category].blank?
      @googles = Googgler.all.order('created_at DESC')
    else
      @cat_id = Category.find_by(name: params[:category]).id
      @googles = Googgler.where(:category_id => @cat_id).order('created_at DESC')
    end
  end

  def new
    @google = current_user.googglers.build
    @categories = Category.all.map{|c| [c.name, c.id]}

  end

  def create
    @google = current_user.googglers.build(google_params)
    @google.category_id = params[:category_id]

    if @google.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
  end
  
  def edit
    @categories = Category.all.map{ |c| [c.name, c.id]}
  end

  def update

    @google.category_id = params[:category_id]

    if @google.update(google_params)
      redirect_to root_path(@goolge)
    else
      render 'edit'
    end
  end

  def destroy
    @google.destroy
    redirect_to root_path
  end


  private

    def google_params
      params.require(:googgler).permit(:title, :about, :postby, :category_id, :googgler_img)
    end

    def google_find
      @google = Googgler.find(params[:id])
    end

end
