class NomsController < ApplicationController
  # GET /noms
  # GET /noms.xml
  def index
    @noms = Nom.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @noms }
    end
  end

  # GET /noms/1
  # GET /noms/1.xml
  def show
    @nom = Nom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @nom }
    end
  end

  # GET /noms/new
  # GET /noms/new.xml
  def new
    @nom = Nom.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @nom }
    end
  end

  # GET /noms/1/edit
  def edit
    @nom = Nom.find(params[:id])
  end

  # POST /noms
  # POST /noms.xml
  def create
    @nom = Nom.new(params[:nom])

    respond_to do |format|
      if @nom.save
        format.html { redirect_to(@nom, :notice => 'Nom was successfully created.') }
        format.xml  { render :xml => @nom, :status => :created, :location => @nom }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @nom.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /noms/1
  # PUT /noms/1.xml
  def update
    @nom = Nom.find(params[:id])

    respond_to do |format|
      if @nom.update_attributes(params[:nom])
        format.html { redirect_to(@nom, :notice => 'Nom was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @nom.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /noms/1
  # DELETE /noms/1.xml
  def destroy
    @nom = Nom.find(params[:id])
    @nom.destroy

    respond_to do |format|
      format.html { redirect_to(noms_url) }
      format.xml  { head :ok }
    end
  end
end
