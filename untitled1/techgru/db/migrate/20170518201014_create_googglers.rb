class CreateGoogglers < ActiveRecord::Migration[5.0]
  def change
    create_table :googglers do |t|
      t.string :title
      t.text :about
      t.string :postby

      t.timestamps
    end
  end
end
