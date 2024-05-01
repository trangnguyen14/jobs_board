class CreateApplicationRecords < ActiveRecord::Migration[7.1]
  def self.up
    create_table :application_records do |t|
      t.integer :user_id, :null => false
      t.integer :job_post_id, :null => false
      t.string :email, :limit => 100, :null => false
      t.text :response
      t.text :resume

      t.timestamps
    end
  end

  def self.down
    drop_table :application_records
  end
end
