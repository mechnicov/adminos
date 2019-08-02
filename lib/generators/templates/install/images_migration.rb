class CreateImages < ActiveRecord::Migration<%= migration_version %>
  def change
    create_table :images do |t|
      t.integer :position
      t.references :imageable, polymorphic: true
      t.timestamps
    end
  end
end
