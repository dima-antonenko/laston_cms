=begin

ProductCategory.destroy_all
Product.destroy_all

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


Menu.destroy_all
MenuItem.destroy_all
Menu.create(name: "Главное меню", descriptor: "main_menu")
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



PostCategory.destroy_all

40.times do |i|
  PostCategory.create!(name: "Категория #{i}", description: "this is a description")
end  



Post.destroy_all

20.times do |i|
  Post.create(name: "Запись #{i}", post_category_id: PostCategory.last.id,
   content: "this is content of post #{i}", lead: "this is lead of post #{i}")
end 



Page.destroy_all(

Page.create(name: "Главная", descriptor: "main")
Page.create(name: "Контакты", descriptor: "contacts")
Page.create(name: "Доставка и оплата", descriptor: "delive-and-chip")




Slider.destroy_all
Slide.destroy_all

Slider.create(name: "Главный", descriptor: "main")




Banner.destroy_all
Banner.create(title: "Первый баннер", descriptor: "first_banner", link: "/")



SiteVariable.destroy_all
SiteVariable.create(title: "Телефон в шапке", descriptor: "phone_in_head", content: "8-800-555-35-35")




BackCall.destroy_all

30.times do |i|
  BackCall.create(product_id: Product.last.id, phone: "8-800-555-35-35-#{i}")
end




Order.destroy_all

30.times do |i|
  Order.create(customer_name: "Олег", customer_email: "1@mail.ru", customer_phone: "+7 123-456-00-#{i}", customer_city: "Москва",
   total_price: 1000, customer_address: "ул. Солнечная, дом 11, кв. 5")
end


FormRequest.destroy_all

30.times do |i|
  FormRequest.create(name: "Олег", phone: "+7 123-456-00-#{i}", text: "Здесь текст заявки")
end

=end



ProductQuestion.destroy_all

10.times do |i|
  ProductQuestion.create(name: "Олег", phone: "8-800-555-35-35", product_id: Product.first.id, text: "Здесь текст вопроса")
end  