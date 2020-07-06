class CreateNavigs < ActiveRecord::Migration[5.2]
  def change
    create_table :navigs do |t|
      t.string :home

      t.timestamps
    end
  end
end
