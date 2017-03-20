#ProductCategory.destroy_all
#Product.destroy_all

10.times do |i|
  ProductCategory.create(name: "Категория #{i}", description: "this is description")
end	

ProductCategory.all.each do |product_category|
 5.times do |i|
 	ProductCategory.create(product_category_id: product_category.id, name: "Категория #{product_category.id}-#{i}",
 	 description: "this is description")
 end	
end




#Product.create(id: 1, product_category_id: 1, name: "Тестовый товар", description: "описание", sku: "228")


#10.times do |t|
#	Product.create(product_category_id: 1, name: "для удаления", description: "описание", sku: t)
#end

=begin
	

	
Menu.destroy_all
MenuItem.destroy_all

Menu.create(name: "главное меню", descriptor: "main")
MenuItem.create(title: "Главная", menu_id: Menu.first.id, url: '/', position: 1)
MenuItem.create(title: "Контакты", menu_id: Menu.first.id, url: '/contacts', position: 2)
MenuItem.create(title: "О Компании", menu_id: Menu.first.id, url: '/about', position: 3)
MenuItem.create(title: "Тестовая страница", menu_id: Menu.first.id, url: '/', position: 4)



=end
