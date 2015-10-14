class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :title
      t.text :description

      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
