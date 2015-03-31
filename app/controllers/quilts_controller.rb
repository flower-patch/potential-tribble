class QuiltsController < ApplicationController
  include PngGenerator

  def welcome
    @quilts = Quilt.all
  end

  def choose_block
    if params[:project_id]
      @blocks = BlockTemplate.all
    else
      redirect_to project_templates_choose_project_path
    end

    if params[:quilt_id]
      redirect_to quilts_edit_project_path(quilt_id: params[:quilt_id], project_id: params[:project_id])
    end
  end

  def edit_project
    @quilt = Quilt.new

    @starting_svg = "this should never show up"
    if params[:block_id]
      @starting_svg = Block.new( params[:block_id] ).getXML
    elsif params[:quilt_id]
      @starting_svg = Quilt.find(params[:quilt_id]).svg
    else
      redirect_to root_path
    end
  end

  def create
    @quilt = Quilt.new(quilt_params)
    @quilt.in_progress = true
    if @quilt.save

      redirect_to quilts_preview_project_path(project_id: @quilt.project_template_id, quilt_id: @quilt.id), notice: 'Quilt was successfully created.'
    else
      render :edit_project
    end
  end

  def preview_project

    if params[:quilt_id]
      @quilt = Quilt.find(params[:quilt_id])
      #create png for @quilt.svg
      # new_svg = svg_replace_image_fill( @quilt.svg )
      # @png = svg_to_png(new_svg,810,810)
      # store_png( @png, params[:quilt_id] )
      # Quilt.update( params[:quilt_id], svg: new_svg)

      @project = ProjectTemplate.find(@quilt.project_template_id)
    else
      redirect_to root_path
    end
  end

  def next_steps
    if params[:quilt_id]
      @quilt = Quilt.find(params[:quilt_id])
      @quilt.in_progress = false
      if @quilt.update(quilt_params)
        flash.now[:notice] = 'Quilt was successfully created.'
      else
        render :preview_project
      end
    else
      redirect_to root_path
    end
  end

  def download_quilt
    @quilt = Quilt.find(params[:quilt_id])
    send_data(@quilt.svg , :filename => 'test.svg', :type=>'image/svg+xml')
  end


  private

  def quilt_params
    params.require(:quilt).permit(:name, :public, :preview_thumb_url, :seam_allowance, :project_template_id, :yardage, :svg)
  end


end
