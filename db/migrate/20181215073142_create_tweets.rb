class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.text  :title
      t.text  :text
      t.text  :image
      t.string :user_id
      t.timestamps  null:true
    end
  end
end
