class EditFieldsFromFormRequest < ActiveRecord::Migration
  def change
    remove_column :form_requests, :name
    remove_column :form_requests, :email
    remove_column :form_requests, :phone
    remove_column :form_requests, :text

    add_column :form_requests, :name,  :string, index: true, default: "", null: false
    add_column :form_requests, :email, :string, index: true, default: "", null: false
    add_column :form_requests, :phone, :string, index: true, default: "", null: false
    add_column :form_requests, :text,  :text,   index: true, default: "", null: false



  end
end
