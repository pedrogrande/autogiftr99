class CreateGiftOccasions < ActiveRecord::Migration
  def change
    create_table :gift_occasions do |t|
      t.references :gift, index: true, foreign_key: true
      t.references :occasion, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
