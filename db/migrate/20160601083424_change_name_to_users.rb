class ChangeNameToUsers < ActiveRecord::Migration
  def change

#変更後の型
 def up
 change_column :users, :name, :string, null: false, default: "名無し"
 end

#変更前の型
 def down
 change_column :users, :name, :string, null: false, default: ""
 end


  end
end
