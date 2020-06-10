class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.string :name
      t.string :text
      t.string :image
      t.timestamps
    end
  end
end
