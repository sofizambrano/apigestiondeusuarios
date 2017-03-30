class RemoveTimestampsFromUsuarios < ActiveRecord::Migration[5.0]
  def change
    remove_column :usuarios, :created_at, :string
    remove_column :usuarios, :updated_at, :string
  end
end
