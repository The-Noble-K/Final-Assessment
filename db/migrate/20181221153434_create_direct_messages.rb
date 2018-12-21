class CreateDirectMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :direct_messages do |t|
      t.string :title
      t.text :message

      t.timestamps
    end
  end
end
