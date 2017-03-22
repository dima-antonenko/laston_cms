ProductCategory.destroy_all
Product.destroy_all
Menu.destroy_all
MenuItem.destroy_all

10.times do |i|
  ProductCategory.create(name: "Категория #{i}", description: "this is description")
end

ProductCategory.all.each do |product_category|
  5.times do |i|
    ProductCategory.create!(product_category_id: product_category.id, name: "Категория #{product_category.id}-#{i}",
                           description: "this is description")
  end
end

first_category_id = ProductCategory.first.id

50.times do |t|
  Product.create!(product_category_id: first_category_id, name: "Товар #{t}", description: "описание", price: t * 100)
end


Menu.create(name: "главное меню", descriptor: "main_menu")
Menu.create(name: "Меню в футоре", descriptor: "footer_menu")

MenuItem.create(title: "Главная", menu_id: Menu.first.id, url: '/', position: 1)
MenuItem.create(title: "Контакты", menu_id: Menu.first.id, url: '/contacts', position: 2)
MenuItem.create(title: "О Компании", menu_id: Menu.first.id, url: '/about', position: 3)
MenuItem.create(title: "Тестовая страница", menu_id: Menu.first.id, url: '/', position: 4)
MenuItem.create(title: "Тестовая страница2", menu_id: Menu.first.id, menu_item_id: MenuItem.last.id, url: '/', position: 1)

MenuItem.create(title: "Главная", menu_id: Menu.last.id, url: '/', position: 1)
MenuItem.create(title: "Контакты", menu_id: Menu.last.id, url: '/contacts', position: 2)
MenuItem.create(title: "О Компании", menu_id: Menu.last.id, url: '/about', position: 3)
MenuItem.create(title: "Тестовая страница", menu_id: Menu.last.id, url: '/', position: 4)
MenuItem.create(title: "Тестовая страница2", menu_id: Menu.last.id, menu_item_id: MenuItem.last.id, url: '/', position: 1)