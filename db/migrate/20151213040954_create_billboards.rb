class CreateBillboards < ActiveRecord::Migration
  def change
    create_table :billboards do |t|
      t.string :name, null: false
      t.string :title, null: false
      t.string :subtext01, null: false
      t.string :subtext02, null: false
      t.string :color_scheme, null: false
      t.string :anim_option, null: false
      # t.references :user
      t.timestamps null: false
    end
  end
end
