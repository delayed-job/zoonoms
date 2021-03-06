class NomsController < ApplicationController
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

  # POST /noms
  # POST /noms.xml
  def create
    @nom = Nom.new(params[:nom])
    @nom.user_id = current_user.id
    @nom.animal_id = params[:nom][:animal_id]

    respond_to do |format|
      if @nom.save
        format.html { redirect_to(root_path) }
        format.xml  { render :xml => @nom, :status => :created, :location => @nom }
      else
        format.html { render :controller => 'home', :action => "index" }
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
