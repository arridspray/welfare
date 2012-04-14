class CreateWicForms < ActiveRecord::Migration
  def change
    create_table :wic_forms do |t|
      t.integer :state_id
      t.string :department_name
      t.string :street_address_one
      t.string :street_address_two
      t.string :city
      t.string :zip_code
      t.string :phone_number
      t.string :fax_number
      t.text :program_benefits
      t.text :general_eligibility
      t.text :application_info
      t.text :citizenship_info
      t.string :form_url_two
      t.string :form_url_three
      t.string :link_one

      t.timestamps
    end
  end
end
