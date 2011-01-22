class CreateDays < ActiveRecord::Migration
  def self.up
    create_table :days do |t|
	t.string :dayname
      #t.timestamps
    end
    
       Day.create :dayname => "Mon"
       Day.create :dayname => "Tue"
       Day.create :dayname => "Wed"
       Day.create :dayname => "Thr"
       Day.create :dayname => "Fri"
       Day.create :dayname => "Sat"
       Day.create :dayname => "Sun"
    
  end

  def self.down
    drop_table :days
  end
end
