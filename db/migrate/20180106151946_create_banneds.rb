class CreateBanneds < ActiveRecord::Migration[5.1]
  def change
    create_table :banneds do |t|
      t.string :email
      t.string :msg
      t.string :reason

      t.timestamps
    end
  end
end
