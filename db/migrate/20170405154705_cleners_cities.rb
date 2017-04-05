class ClenersCities < ActiveRecord::Migration
  def change
  	 create_table :cleners_cities, id: false do |t|
      t.belongs_to :clener, index: true
      t.belongs_to :city, index: true
    end
  end  
end
