class CreateContactPages < ActiveRecord::Migration
  def change
    create_table :contact_pages do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.text :message

      t.timestamps
    end
  end
end
