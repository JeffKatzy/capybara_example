class CreateGists < ActiveRecord::Migration
  def change
    create_table :gists do |t|
      t.string :content
      t.timestamps
    end
  end
end
