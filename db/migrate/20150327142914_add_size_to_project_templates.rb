class AddSizeToProjectTemplates < ActiveRecord::Migration
  def change
    add_column :project_templates, :project_layout_svg, :string
    add_column :project_templates, :blocks_across, :integer
    add_column :project_templates, :blocks_down, :integer
  end
end
