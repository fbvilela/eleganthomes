class PackagesController < ApplicationController
  # GET /packages
  # GET /packages.xml
  
  before_filter :authentication_check, :only => [:new, :edit]

  def search

    conditions_params = []
    conditions_string = []
    
    conditions_string << "price >= #{params[:price_from]} " unless params[:price_from].blank?
    #conditions_params << params[:price_from] unless params[:price_from].blank?

    conditions_string << "price <= #{params[:price_to]} " unless params[:price_to].blank?
    #conditions_params << params[:price_to] unless params[:price_to].blank?

    conditions_string << "land_size >= #{params[:land_size_from]} " unless params[:land_size_from].blank?
    #conditions_params << params[:land_size_from] unless params[:land_size_from].blank?

    conditions_string << "land_size <= #{params[:land_size_to]} " unless params[:land_size_to].blank?
    #conditions_params << params[:land_size_to] unless params[:land_size_to].blank?

    conditions_string << "bedrooms = #{params[:bedrooms]} " unless params[:bedrooms].blank?
    #conditions_params << params[:bedrooms] unless params[:bedrooms].blank?

    conditions_string << "storeys = #{params[:storeys]} " unless params[:storeys].blank?
    #conditions_params << params[:storeys] unless params[:storeys].blank?

    conditions_string << "lower(suburb) = lower('#{params[:suburb]}')" unless params[:suburb].blank?
    #conditions_params << params[:suburb].downcase unless params[:suburb].blank?

    @packages = Package.where(conditions_string.join(" and ")).order(:land_size).page(params[:page]).per(8)
    render "index"
  end
  
  def index
    @packages = Package.order(:land_size).page(params[:page]).per(8)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @packages }
    end
  end

  # GET /packages/1
  # GET /packages/1.xml
  def show
    @package = Package.find(params[:id]) 

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @package }
    end
  end

  # GET /packages/new
  # GET /packages/new.xml
  def new
    @package = Package.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @package }
    end
  end

  # GET /packages/1/edit
  def edit
    @package = Package.find(params[:id])
  end

  def details
    @package = Package.find(params[:id])
    render :layout => "detail"
  end

  # POST /packages
  # POST /packages.xml
  def create
    @package = Package.new(params[:package])

    respond_to do |format|
      if @package.save
        format.html { redirect_to page_path("admin"), :notice => 'Package was successfully created.' }
        format.xml  { render :xml => @package, :status => :created, :location => @package }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @package.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /packages/1
  # PUT /packages/1.xml
  def update
    @package = Package.find(params[:id])

    respond_to do |format|
      if @package.update_attributes(params[:package])
        format.html { redirect_to page_path("admin"), :notice => 'Package was successfully updated.' }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @package.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /packages/1
  # DELETE /packages/1.xml
  def destroy
    @package = Package.find(params[:id])
    @package.destroy

    respond_to do |format|
      format.html { redirect_to(page_path("admin"), :notice => 'Package was successfully removed.') }
      format.xml  { head :ok }
    end
  end
end
