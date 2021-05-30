class ErgsController < ApplicationController
  before_action :set_erg, only: %i[ show edit join leave members update destroy ]

  # GET /ergs or /ergs.json
  def index
    @ergs = Erg.all
  end

  # GET /ergs/1 or /ergs/1.json
  def show
    @user = User.find(session[:user_id])
    if @erg.memberships.where(user_id: @user.id).exists?
      @is_erg_member = true
    else
      @is_erg_member = false
    end
  end

  # GET /ergs/new
  def new
    @erg = Erg.new
  end

  # GET /ergs/1/edit
  def edit
  end

  # GET /ergs/1/join
  def join
    if session[:user_id] && !is_erg_member?
      @erg.users << User.find(session[:user_id])
    end
    redirect_to @erg, notice: "Joined ERG"
  end

  # GET /ergs/1/leave
  def leave
    if session[:user_id] && is_erg_member?
      @erg.users.delete(session[:user_id])
    end
    redirect_to @erg, notice: "Left ERG"
  end

  # GET /ergs/1/members
  def members
    @users = @erg.users.order(:display_name).page params[:page]
  end

  # POST /ergs or /ergs.json
  def create
    @erg = Erg.new(erg_params)

    respond_to do |format|
      if @erg.save
        format.html { redirect_to @erg, notice: "Erg was successfully created." }
        format.json { render :show, status: :created, location: @erg }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @erg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ergs/1 or /ergs/1.json
  def update
    respond_to do |format|
      if @erg.update(erg_params)
        format.html { redirect_to @erg, notice: "Erg was successfully updated." }
        format.json { render :show, status: :ok, location: @erg }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @erg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ergs/1 or /ergs/1.json
  def destroy
    @erg.destroy
    respond_to do |format|
      format.html { redirect_to ergs_url, notice: "Erg was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_erg
      @erg = Erg.find(params[:id])
    end

    def is_erg_member?
      @user = User.find(session[:user_id])
      if @erg.memberships.where(user_id: @user.id).exists?
        @is_erg_member = true
      else
        @is_erg_member = false
      end
    end

    # Only allow a list of trusted parameters through.
    def erg_params
      params.require(:erg).permit(:name, :active, :homepage, :description)
    end
end
