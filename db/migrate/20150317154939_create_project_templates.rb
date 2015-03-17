class CreateProjectTemplates < ActiveRecord::Migration
  def change
    create_table :project_templates do |t|
      t.string :name
      t.string :example_thumb_url
      t.text :description
      t.string :directions_pdf_url

      t.timestamps null: false
    end
  end
end
