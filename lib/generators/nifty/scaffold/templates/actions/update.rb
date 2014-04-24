  def update
    respond_to do |format|
      if @<%= instance_name %>.update(<%= instance_name %>_params)
        format.html { redirect_to @<%= instance_name %>, notice: '<%= class_name %> was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @<%= instance_name %>.errors, status: :unprocessable_entity }
      end
    end
  end