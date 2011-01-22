class CreateDaywisemenus < ActiveRecord::Migration
  def self.up
    create_table :daywisemenus do |t|
	t.integer :day_id    
	t.string :menuitem
      #t.timestamps
    end
  end

  def self.down
    drop_table :daywisemenus
  end
end
