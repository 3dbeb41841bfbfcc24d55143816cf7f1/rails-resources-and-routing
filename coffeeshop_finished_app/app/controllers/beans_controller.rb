class BeansController < ApplicationController

  def index
    @beans = Bean.all
  end

  def show
    @bean = Bean.find(params[:id])
  end

  def new
    @bean = Bean.new
  end

  def create
    @bean = Bean.new(params.require(:bean).permit(:name, :roast, :origin, :quantity))
    if @bean.save
        redirect_to @bean, notice: 'Bean was successfully created.'
    else
        render 'new'
    end
  end

  def edit
    @bean = Bean.find(params[:id])
  end

  def update
    @bean = Bean.find(params[:id])
    if @bean.update_attributes(params.require(:bean).permit(:name, :roast, :origin, :quantity))
        redirect_to beans_path
    else
        render 'edit'
    end
  end

  def destroy
    @bean = Bean.find(params[:id])
    @bean.destroy
    redirect_to beans_path
  end

end
