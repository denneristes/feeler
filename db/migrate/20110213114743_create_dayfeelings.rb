class CreateDayfeelings < ActiveRecord::Migration
  def self.up
    create_table :dayfeelings do |t|
      t.date :day
      t.string :generalfeeling
      t.string :feelinglevel
      t.string :drugconsumption
      t.string :stresslevel
      t.string :sleep
      t.string :sport

      t.timestamps
    end
  end

  def self.down
    drop_table :dayfeelings
  end
end
