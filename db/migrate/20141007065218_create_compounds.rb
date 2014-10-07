class CreateCompounds < ActiveRecord::Migration
  def change
    create_table :compounds, id: :uuid do |t|
      t.string :word
      t.string :kana
      t.string :definition
      t.string :type

      t.timestamps
    end
  end
end
