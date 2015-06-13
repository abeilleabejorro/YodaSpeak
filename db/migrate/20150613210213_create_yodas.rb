class CreateYodas < ActiveRecord::Migration
  def change
    create_table :yodas do |t|

      t.timestamps null: false
    end
  end
end
