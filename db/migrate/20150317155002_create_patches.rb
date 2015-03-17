class CreatePatches < ActiveRecord::Migration
  def change
    create_table :patches do |t|
      t.integer :patch_template_id
      t.integer :quilt_id
      t.string :pattern_url

      t.timestamps null: false
    end
  end
end
