class CreateTowits < ActiveRecord::Migration[6.0]
  def change
    create_table :towits do |t|
      t.text :content

      t.timestamps
    end
  end
end
