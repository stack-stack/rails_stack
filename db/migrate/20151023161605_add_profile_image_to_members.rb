class AddProfileImageToMembers < ActiveRecord::Migration
  def change
    add_column :members, :profile_image, :string
  end
end
