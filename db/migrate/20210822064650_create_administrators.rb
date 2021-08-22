class CreateAdministrators < ActiveRecord::Migration[6.0]
  def change
    create_table :administrators do |t|
      t.string :email, null: false                     # メール
      t.string :hashed_password                        # パスワード
      t.boolean :supended, null: false, default: false # 無効フラグ

      t.timestamps
    end

    add_index :administrators, "LOWER(email)", unique: true
  end
end
