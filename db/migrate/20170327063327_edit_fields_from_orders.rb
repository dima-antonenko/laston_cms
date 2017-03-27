class EditFieldsFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :customer_name
    remove_column :orders, :customer_email
    remove_column :orders, :customer_phone
    remove_column :orders, :customer_sity
    remove_column :orders, :total_price


    add_column :orders, :customer_name,  :string, index: true, default: "", null: false
    add_column :orders, :customer_email, :string, index: true, default: "", null: false
    add_column :orders, :customer_phone, :string, index: true, default: "", null: false
    add_column :orders, :customer_city,  :string, index: true, default: "", null: false

    add_column :orders, :total_price, :integer, index: true, default: 0, null: false

    add_column :orders, :products_data, :json, index: true, default: {}, null: false

  end
end
