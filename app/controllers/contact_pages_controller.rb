class ContactPagesController < ApplicationController
  before_action :set_contact_page, only: [:show, :edit, :update, :destroy]

  # GET /contact_pages
  # GET /contact_pages.json
  def index
    @contact_pages = ContactPage.all
  end

  # GET /contact_pages/1
  # GET /contact_pages/1.json
  def show
  end

  # GET /contact_pages/new
  def new
    @contact_page = ContactPage.new
  end

  # GET /contact_pages/1/edit
  def edit
  end

  # POST /contact_pages
  # POST /contact_pages.json
  def create
    @contact_page = ContactPage.new(contact_page_params)

    respond_to do |format|
      if @contact_page.save
        format.html { 
          flash.now[:notice] = 'Contact page was successfully created.'
          render "/page/thanks"
          # redirect_to thanks_path(id: @contact_page.id), notice: "Contact page was successfully created."
        }
        format.json { render :show, status: :created, location: @contact_page }
      else
        format.html { render :new }
        format.json { render json: @contact_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_pages/1
  # PATCH/PUT /contact_pages/1.json
  def update
    respond_to do |format|
      if @contact_page.update(contact_page_params)
        format.html { redirect_to @contact_page, notice: 'Contact page was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact_page }
      else
        format.html { render :edit }
        format.json { render json: @contact_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_pages/1
  # DELETE /contact_pages/1.json
  def destroy
    @contact_page.destroy
    respond_to do |format|
      format.html { redirect_to contact_pages_url, notice: 'Contact page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_page
      @contact_page = ContactPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_page_params
      params.require(:contact_page).permit(:first_name, :last_name, :email_address, :message)
    end
end
