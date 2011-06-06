class CargosController < ApplicationController
  filter_resource_access
  
  # GET /cargos
  # GET /cargos.xml
  def index
    @cargos = Cargo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cargos }
    end
  end

  # GET /cargos/1
  # GET /cargos/1.xml
  def show
    @cargo = Cargo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cargo }
    end
  end

  # GET /cargos/new
  # GET /cargos/new.xml
  def new
    if current_user.userble.class.to_s == 'Empresa'      
      @cargo = Cargo.new      
      
      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @cargo }
      end
    else
      permission_denied
    end
  end

  # GET /cargos/1/edit
  def edit
    @cargo = Cargo.find(params[:id])
  end

  # POST /cargos
  # POST /cargos.xml
  def create
    @cargo = Cargo.new(params[:cargo])
    @cargo.empresa = @current_user.userble
    
    respond_to do |format|
      if @cargo.save
        format.html { redirect_to(current_user.userble, :notice => 'Cargo criado com sucesso.') }
        format.xml  { render :xml => @cargo, :status => :created, :location => @cargo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cargo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cargos/1
  # PUT /cargos/1.xml
  def update
    @cargo = Cargo.find(params[:id])

    respond_to do |format|
      if @cargo.update_attributes(params[:cargo])
        format.html { redirect_to(current_user.userble, :notice => 'Cargo atualizado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cargo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cargos/1
  # DELETE /cargos/1.xml
  def destroy
    @cargo = Cargo.find(params[:id])
    @cargo.destroy

    respond_to do |format|
      format.html { redirect_to(current_user.userble, :notice => 'Cargo removido com sucesso.') }
      format.xml  { head :ok }
    end
  end
end
