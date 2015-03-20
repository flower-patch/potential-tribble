class AddBlockTemplate < ActiveRecord::Migration
  def change
    create_table :block_templates do |t|
      t.string :name
      t.string :block_svg_url

      t.timestamps null: false
    end
  end
end
