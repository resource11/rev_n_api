#
class BillboardsController < OpenReadController
   before_action :set_billboard, only: [:update, :destroy]

  # GET /billboards
  def index
    if current_user
      @billboards = current_user.billboards
    else
      @billboards = Billboard.all
    end
    # @billboards = Billboard.all

    render json: @billboards
  end

  # GET /billboards/1
  def show
    @billboard = Billboard.find(params[:id])

    render json: @billboard
  end

  # POST /billboards
  def create
    # @billboard = current_user.billboards.new(billboard_params)
    @billboard = billboards.new(billboard_params)

    if @billboard.save
      render json: @billboard, status: :created, location: @billboard
    else
      render json: @billboard.errors, status: :unprocessable_entity
    end
  end

  # PATCH /billboards/1
  def update
    if @billboard.update(billboard_params)
      head :no_content
    else
      render json: @billboard.errors, status: :unprocessable_entity
    end
  end

  # DELETE /billboards/1
  def destroy
    @billboard.destroy

    head :no_content
  end

  def set_billboard
    # @billboard = current_user.billboards.find(params[:id])
    @billboard = billboards.find(params[:id])
  end

  def billboard_params
    params.require(:billboard).permit(:title, :isbn)
  end

  private :set_billboard, :billboard_params
end
