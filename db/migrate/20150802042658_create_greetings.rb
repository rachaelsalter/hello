class CreateGreetings < ActiveRecord::Migration
  def change
    create_table :greetings do |t|

      t.string :usergreeting
      t.string :initials

      t.timestamps
    end
  end
end
