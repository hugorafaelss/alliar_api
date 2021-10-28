ActionController::Parameters.action_on_unpermitted_parameters = :raise
class LaboratoriosController < ApplicationController
  before_action :set_laboratorio, only: [:show, :update, :destroy]

  # GET /laboratorios
  def index
    if params[:exame]
        @laboratorios = Laboratorio.includes(:exames).where({
            exames: {
                nome: params[:exame]
            }
        })
    else
        @laboratorios = Laboratorio.all
    end
    render json: @laboratorios
  end

  # GET /laboratorios/1
  def show
    render json: @laboratorio
  end

  # POST /laboratorios
  def create
    @laboratorio = Laboratorio.new(laboratorio_create_params)

    if @laboratorio.save
      render json: @laboratorio, status: :created, location: @laboratorio
    else
      render json: @laboratorio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /laboratorios/1
  def update
    if @laboratorio.update(laboratorio_update_params)
      render json: @laboratorio
    else
      render json: @laboratorio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /laboratorios/1
  def destroy
    @laboratorio.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laboratorio
      @laboratorio = Laboratorio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def laboratorio_create_params
      params.require(:laboratorio).permit(:nome, :endereco)
    end

    def laboratorio_update_params
        params.require(:laboratorio).permit(:nome, :endereco, :status)
      end
end
