class CreateGuestposts < ActiveRecord::Migration
  def change
    create_table :guestposts do |t|
      t.string :name
      t.text :message
      t.string :email

      t.timestamps
    end
  end
end
