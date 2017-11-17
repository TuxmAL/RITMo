class AnagraficheController < ApplicationController
  before_action :set_anagrafica, only: [:show, :edit, :update, :destroy]

  # GET /anagrafiche
  # GET /anagrafiche.json
  def index
    @anagrafiche = Anagrafica.all
  end

  # GET /anagrafiche/1
  # GET /anagrafiche/1.json
  def show
  end

  # GET /anagrafiche/new
  def new
    @anagrafica = Anagrafica.new
  end

  # GET /anagrafiche/1/edit
  def edit
  end

  # POST /anagrafiche
  # POST /anagrafiche.json
  def create
    @anagrafica = Anagrafica.new(anagrafica_params)

    respond_to do |format|
      if @anagrafica.save
        format.html { redirect_to @anagrafica, notice: 'Anagrafica was successfully created.' }
        format.json { render :show, status: :created, location: @anagrafica }
      else
        format.html { render :new }
        format.json { render json: @anagrafica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anagrafiche/1
  # PATCH/PUT /anagrafiche/1.json
  def update
    respond_to do |format|
      if @anagrafica.update(anagrafica_params)
        format.html { redirect_to @anagrafica, notice: 'Anagrafica was successfully updated.' }
        format.json { render :show, status: :ok, location: @anagrafica }
      else
        format.html { render :edit }
        format.json { render json: @anagrafica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anagrafiche/1
  # DELETE /anagrafiche/1.json
  def destroy
    @anagrafica.destroy
    respond_to do |format|
      format.html { redirect_to anagrafiche_url, notice: 'Anagrafica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anagrafica
      @anagrafica = Anagrafica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anagrafica_params
      params.require(:anagrafica).permit(:id, :nome, :cognome, :sesso_id, :luogonascita_id, :datanascita, :parente_id, :parentela_id, :recapiti, :note, :utente_id)
    end
end
