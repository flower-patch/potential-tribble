class QuiltsController < ApplicationController
  def welcome
    @quilts = Quilt.all
  end

  def choose_block
  end

  def edit_project
    @quilt = Quilt.new
  end

  def create
    @quilt = Quilt.new(quilt_params)
    if @quilt.save
      redirect_to quilts_preview_project_path, notice: 'Quilt was successfully created.'
    else
      render :edit_project
    end
  end

  def preview_project
  end

  def next_steps
  end

  private

  def quilt_params
    params.require(:quilt).permit(:name, :public, :preview_thumb_url, :seam_allowance, :project_template_id, :yardage, :svg)
  end

  
end
