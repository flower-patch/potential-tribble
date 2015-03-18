class SimplifyDatabase < ActiveRecord::Migration
  def change
    add_column :quilts, :svg, :text
    remove_column :quilts, :project_template_id
    remove_column :quilts, :integer
    drop_table :patches
    drop_table :patch_templates
    drop_table :block_templates
  end
end
