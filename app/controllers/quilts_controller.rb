class QuiltsController < ApplicationController
  def welcome
    @quilts = Quilt.all
  end

  def choose_block
    @blocks = BlockTemplate.all

    if params[:quilt_id]
      redirect_to quilts_edit_project_path(quilt_id: params[:quilt_id])
    end
  end

  def edit_project
    @quilt = Quilt.new

    @starting_svg = "this should never show up"
    if params[:block_id]
      @starting_svg = Block.new( params[:block_id] ).getXML
    elsif params[:quilt_id]
      #FIXME starting_svg should be the full svg pulled from the db
      @starting_svg = Quilt.find(params[:quilt_id]).svg
    end
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
