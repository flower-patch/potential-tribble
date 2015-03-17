class CreateQuilts < ActiveRecord::Migration
  def change
    create_table :quilts do |t|
      t.string :name
      t.decimal :seam_allowance, :precision => 3, :scale => 2
      t.boolean :public
      t.string :preview_thumb_url
      t.string :block_template_id
      t.string :integer
      t.string :project_template_id
      t.string :integer
      t.string :yardage

      t.timestamps null: false
    end
  end
end
