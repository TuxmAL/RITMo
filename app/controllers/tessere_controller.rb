class TessereController < ApplicationController
  before_action :set_tessera, only: [:show, :edit, :update, :destroy]

  # GET /tessere
  # GET /tessere.json
  def index
    @tessere = Tessera.all
  end

  # GET /tessere/1
  # GET /tessere/1.json
  def show
  end

  # GET /tessere/new
  def new
    @tessera = Tessera.new
  end

  # GET /tessere/1/edit
  def edit
  end

  # POST /tessere
  # POST /tessere.json
  def create
    @tessera = Tessera.new(tessera_params)

    respond_to do |format|
      if @tessera.save
        format.html { redirect_to @tessera, notice: 'Tessera was successfully created.' }
        format.json { render :show, status: :created, location: @tessera }
      else
        format.html { render :new }
        format.json { render json: @tessera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tessere/1
  # PATCH/PUT /tessere/1.json
  def update
    respond_to do |format|
      if @tessera.update(tessera_params)
        format.html { redirect_to @tessera, notice: 'Tessera was successfully updated.' }
        format.json { render :show, status: :ok, location: @tessera }
      else
        format.html { render :edit }
        format.json { render json: @tessera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tessere/1
  # DELETE /tessere/1.json
  def destroy
    @tessera.destroy
    respond_to do |format|
      format.html { redirect_to tessere_url, notice: 'Tessera was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tessera
      @tessera = Tessera.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tessera_params
      params.require(:tessera).permit(:id, :tiporichiesta_id, :anagrafico_id, :tipo_tessera_id, :intestatario_id, :qualifica_id, :statura, :string, :capelli, :occhi, :segni_particolari, :residenza_id, :indirizzo, :statocivile_id, :numero_tessera, :integer, :data_rilascio, :data_convalida, :variazioni_uno, :variazioni_due, :variazioni_tre, :note, :annullata, :stampata, :utente_id)
    end
end
