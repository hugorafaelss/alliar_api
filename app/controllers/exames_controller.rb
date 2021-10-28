
ActionController::Parameters.action_on_unpermitted_parameters = :raise
class ExamesController < ApplicationController
  before_action :set_exame, only: [:show, :update, :destroy]

  # GET /exames
  def index
    @exames = Exame.all

    render json: @exames
  end

  # GET /exames/1
  def show
    render json: @exame
  end

  # POST /exames
  def create
    @exame = Exame.new(exame_create_params)

    if @exame.save
        render json: @exame, status: :created, location: @exame
    else
        render json: @exame.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /exames/1
  def update
    if @exame.update(exame_update_params)
      render json: @exame
    else
      render json: @exame.errors, status: :unprocessable_entity
    end
  end

  # DELETE /exames/1
  def destroy
    @exame.destroy
  end

  # POST /associar
  def associar
    _exame = Exame.find(params[:id_exame])
    _laboratorio = Laboratorio.find(params[:id_laboratorio])
    unless _laboratorio.ativo?
        render json: {error: "O laboratorio está inativo"}, status: :unprocessable_entity
        return
    end
    unless _exame.ativo?
        render json: {error: "O exame está inativo"}, status: :unprocessable_entity
        return
    end
    _exame.laboratorios << _laboratorio
    _exame.save
    render status: :no_content
    
   
  end

  # POST /desassociar
  def desassociar
    _exame = Exame.find(params[:id_exame])
    _laboratorio = Laboratorio.find(params[:id_laboratorio])
    unless _laboratorio.ativo?
        render json: {error: "O laboratorio está inativo"}, status: :unprocessable_entity
        return
    end
    unless _exame.ativo?
        render json: {error: "O exame está inativo"}, status: :unprocessable_entity
        return
    end
    _exame.laboratorios.delete(_laboratorio)
    _exame.save
    # _laboratorio.exames.delete(_exame) # Mesma coisa
    # _laboratorio.save
    render status: :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exame
      @exame = Exame.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def exame_create_params
        params.require(:exame).permit(:nome, :tipo)
    end

    def exame_update_params
        params.require(:exame).permit(:nome, :tipo, :status)
    end
end
