  def create
    @<%= instance_name %> = <%= class_name %>.new(<%= instance_name %>_params)

    respond_to do |format|
      if @<%= instance_name %>.save
        format.html { redirect_to @<%= instance_name %>, notice: '<%= class_name %> was successfully created.' }
        format.json { render action: 'show', status: :created, location: @<%= instance_name %> }
      else
        format.html { render action: 'new' }
        format.json { render json: @<%= instance_name %>.errors, status: :unprocessable_entity }
      end
    end
  end