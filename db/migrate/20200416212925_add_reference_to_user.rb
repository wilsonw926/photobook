class AddReferenceToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :albums, :user, index: true
  end
end
