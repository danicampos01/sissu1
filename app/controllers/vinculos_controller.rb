class VinculosController < ApplicationController
  before_action :set_vinculo, only: [:show, :edit, :update, :destroy]

  # GET /vinculos
  # GET /vinculos.json
  def index
   
    if params[:search]
    @vinculos = Vinculo.joins(:especialidade).where("especialidades.nome like ?", "%#{params[:search]}%")
    
  elsif
   params[:search2]
    @vinculos = Vinculo.joins(:unidade).where("unidades.bairro like ?", "%#{params[:search2]}%")
  
   else
    @vinculos = Vinculo.all

   
  end
    
  end

  # GET /vinculos/1
  # GET /vinculos/1.json
  def show
  end

  # GET /vinculos/new
  def new
    @vinculo = Vinculo.new
  end

  # GET /vinculos/1/edit
  def edit
  end

  # POST /vinculos
  # POST /vinculos.json
  def create
    @vinculo = Vinculo.new(vinculo_params)

    respond_to do |format|
      if @vinculo.save
        format.html { redirect_to @vinculo, notice: 'Vinculo was successfully created.' }
        format.json { render :show, status: :created, location: @vinculo }
      else
        format.html { render :new }
        format.json { render json: @vinculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vinculos/1
  # PATCH/PUT /vinculos/1.json
  def update
    respond_to do |format|
      if @vinculo.update(vinculo_params)
        format.html { redirect_to @vinculo, notice: 'Vinculo was successfully updated.' }
        format.json { render :show, status: :ok, location: @vinculo }
      else
        format.html { render :edit }
        format.json { render json: @vinculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vinculos/1
  # DELETE /vinculos/1.json
  def destroy
    @vinculo.destroy
    respond_to do |format|
      format.html { redirect_to vinculos_url, notice: 'Vinculo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vinculo
      @vinculo = Vinculo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vinculo_params
      params.require(:vinculo).permit(:comochegar, :atende, :unidade_id, :profissional_id, :especialidade_id)
    end
end
