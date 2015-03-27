class AddFeaturedQuiltFixIdString < ActiveRecord::Migration
  def change
    add_column :quilts, :featured_priority, :integer 
  end

  def up
    change_column :quilts, :project_template_id, :integer
  end

  def down
    change_column :quilts, :project_template_id, :string
  end
end
