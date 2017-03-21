class RemoveOldFieldsTwo < ActiveRecord::Migration
  def change
    add_column :products, :gallery, :string, array: true, index: true, default: []
  end
end
