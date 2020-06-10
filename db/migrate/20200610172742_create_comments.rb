class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.column(:author, :string)
      t.column(:comment, :string)
      t.column(:rating, :integer)
      t.timestamps()
    end
  end
end
