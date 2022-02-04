class CreateIndustries < ActiveRecord::Migration[6.1]
  def change
    create_table :industries do |t|
      t.string :name
      t.string :description
      t.string :image
      t.timestamps
      t.references :user, foreign_key: true
    end
  end
end
