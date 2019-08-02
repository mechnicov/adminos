class Admin::ImagesController < Admin::BaseController
  def sort
    params[:image].each.with_index(1) do |id, index|
      Image.where(id: id).update_all(position: index)
    end

    respond_to do |format|
      format.js
    end
  end
end
