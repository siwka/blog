class CreateArticlesCategories < ActiveRecord::Migration
  def self.up
  	create_table :articles_categories, :id => false do |t|
  		t.references :article 		# t.integer :article_id
  		t.references :category 		# t.integer :category_id
  	end
  end

  def self.down
  	drop_table :articles_categories
  end
end
