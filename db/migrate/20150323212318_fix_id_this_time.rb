class FixIdThisTime < ActiveRecord::Migration
  def change
    remove_column :quilts, :project_template_id
  end
end
