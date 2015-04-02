class AddDefault < ActiveRecord::Migration
  def change
    change_column :quilts, :preview_thumb_url, :string, default: "flowerpatch_logo.png"
  end
end
