class QuiltsController < ApplicationController
  def welcome
  end

  def choose_block
  end

  def edit_project
    @quilt = Quilt.new
  end

  def preview_project
  end

  def next_steps
  end
end
