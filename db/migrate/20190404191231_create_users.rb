class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nickname, index: true
      t.string :git_token, index: true

      t.timestamps
    end
  end
end
