class ChangeColumnArticleIdInArticleOnComments < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :articles_id, :article
  end
end
