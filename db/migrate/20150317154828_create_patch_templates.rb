class CreatePatchTemplates < ActiveRecord::Migration
  def change
    create_table :patch_templates do |t|
      t.string :svg_pathid
      t.integer :block_template_id

      t.timestamps null: false
    end
  end
end
