class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.interger :user_id
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end