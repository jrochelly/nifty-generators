  def destroy
    @<%= instance_name %>.destroy
    respond_to do |format|
      format.html { redirect_to <%= items_url %> }
      format.json { head :no_content }
    end
  end