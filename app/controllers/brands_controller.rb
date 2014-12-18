class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @brands = Brand.all
    respond_with(@brands)
  end

  def show
    @posts = Post.find_with_reputation(:votes, :all).where(:is_public => true, :brand_id => params[:id]).order("votes DESC")
    respond_with(@brand)
  end

  def new
    @brand = Brand.new
    respond_with(@brand)
  end

  def edit
  end

  def create
    @brand = Brand.new(brand_params)
    @brand.save
    respond_with(@brand)
  end

  def update
    @brand.update(brand_params)
    respond_with(@brand)
  end

  def destroy
    @brand.destroy
    redirect_to :back
  end

  def admin_page
    @brands = Brand.all.order(:name).paginate(:page => params[:page], :per_page => 20)
  end

  private
    def set_brand
      @brand = Brand.find_by_query(params[:id])
    end

    def brand_params
      params.require(:brand).permit(:name, :location, :description, :website, :img)
    end
end
