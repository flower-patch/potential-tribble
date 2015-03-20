class AddCompleteStatus < ActiveRecord::Migration
  def change
    add_column :quilts, :in_progress, :boolean
  end
end
