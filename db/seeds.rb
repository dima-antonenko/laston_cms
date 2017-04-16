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





ProductQuestion.destroy_all

10.times do |i|
  ProductQuestion.create(name: "Олег", phone: "8-800-555-35-35", product_id: Product.first.id, text: "Здесь текст вопроса")
end  






lead_text = "Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Donec sit amet eros. Lorem ipsum dolor sit amet, consecvtetuer adipiscing elit. Mauris fermentum dictum magna. Sed laoreet aliquam leo. Ut tellus dolor, dapibus eget, elementum vel."
content_text = "Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Donec sit amet eros. Lorem ipsum dolor sit amet, consecvtetuer adipiscing elit. Mauris fermentum dictum magna. Sed laoreet aliquam leo. Ut tellus dolor, dapibus eget, elementum vel.
Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu lacus. Vestibulum libero nisl, porta vel, scelerisque eget, malesuada at, neque. Vivamus eget nibh. Etiam cursus leo vel metus. Nulla facilisi. Aenean nec eros.
Integer rutrum ante eu lacus.Vestibulum libero nisl, porta vel, scelerisque eget, malesuada at, neque. Vivamus eget nibh. Etiam cursus leo vel metus. Nulla facilisi. Aenean nec eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse sollicitudin velit sed leo. Ut pharetra augue nec augue.
Nam elit agna,endrerit sit amet, tincidunt ac, viverra sed, nulla. Donec porta diam eu massa. Quisque diam lorem, interdum vitae,dapibus ac, scelerisque vitae, pede. Donec eget tellus non erat lacinia fermentum. Donec in velit vel ipsum auctor pulvinar. Vestibulum iaculis lacinia est. Proin dictum elementum velit. Fusce euismod consequat ante. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque sed dolor. Aliquam congue fermentum nisl.
Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu lacus. Vestibulum libero nisl, porta vel, scelerisque eget, malesuada at, neque. Vivamus eget nibh. Etiam cursus leo vel metus. Nulla facilisi. Aenean nec eros.
Integer rutrum ante eu lacus.Vestibulum libero nisl, porta vel, scelerisque eget, malesuada at, neque. Vivamus eget nibh. Etiam cursus leo vel metus. Nulla facilisi. Aenean nec eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse sollicitudin velit sed leo. Ut pharetra augue nec augue."


Post.destroy_all
last_category_id = PostCategory.last.id
15.times do |i|
  post = Post.new(name: "Запись #{i}", post_category_id: last_category_id, lead: lead_text, content: content_text, slug: "post#{i}")
  File.open("public/demo/posts/1.jpg") do |f|
    post.avatar = f
  end
  post.save
end







ProductCategory.destroy_all

10.times do |i|
  category =  ProductCategory.new(name: "Категория #{i}", description: "this is description", slug:"slug-category-#{i}")

  File.open("public/demo/product_categories/avatar#{rand(1..5)}.jpg") do |f|
    category.avatar = f
  end
  category.save
end


ProductCategory.all.each do |product_category|
  5.times do |i|
    category = ProductCategory.new(product_category_id: product_category.id, name: "Категория #{i}",
                                   description: "this is description", slug: "category-#{i}")

    File.open("public/demo/product_categories/avatar#{rand(1..5)}.jpg") do |f|
      category.avatar = f
    end
    category.save
  end
end



=end

Product.destroy_all

#first_category_id = ProductCategory.first.id
categories = ProductCategory.all

categories.each do |product_category|
  4.times do |t|
    product = Product.new(product_category_id: product_category.id, name: "Товар #{t}", description: "описание", price: t * 100,
                          slug: "product#{t}", short_description: "zzz")
    File.open("public/demo/products/avatar#{rand(1..8)}.jpg") do |f|
      product.avatar = f
    end
    product.save
  end

end
