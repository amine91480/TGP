class AddPassewordDigestToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :passeword_digest, :string
  end
end
