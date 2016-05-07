class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.references :user, null: false
      t.string :bucket, null: false
      t.string :domain, null: false
      t.string :file_name, null: false
      t.string :original_file_name

      t.timestamps null: false
    end
  end
end
