class AddCorrectIdCol < ActiveRecord::Migration
  def change
    add_column :quilts, :project_template_id, :integer
  end
end
