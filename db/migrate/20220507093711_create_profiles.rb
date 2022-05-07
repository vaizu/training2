class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|

      t.text :profile
      t.timestamps
    end
  end
end
