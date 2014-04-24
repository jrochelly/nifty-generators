class <%= plural_class_name %>Controller < ApplicationController
  before_action :set_<%= singular_name %>, only: [:show, :edit, :update, :destroy]
  <%= controller_methods :actions %>
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_<%= singular_name %>
      @<%= singular_name %> = <%= class_name %>.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def <%= singular_name %>_params
      params.require(:<%= singular_name %>).permit(<%= attributes_allowed %>)
    end
end
