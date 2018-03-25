class CreateMedicines < ActiveRecord::Migration[5.1]
  mount_uploader :image, ImagesUploader
  def change
    create_table :medicines do |t|
      t.string :name
      t.string :efficacy
      t.text :memo
      t.integer :stock
      t.string :image1
      t.string :image2
      t.integer :hospital_id
      t.integer :user_id


      t.timestamps
    end
  end
end
