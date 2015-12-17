class CreateBillboards < ActiveRecord::Migration
  def change
    create_table :billboards do |t|
      t.string :name, null: false
      t.string :title
      t.string :subtext01
      t.string :subtext02
      t.string :color_scheme
      t.string :anim_option
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
