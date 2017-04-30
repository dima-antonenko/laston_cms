product_category_description = "<p>В последние годы сезоны сменяются так стремительно, что насладиться относительным теплом - когда платье с кедами, а поверх легкая куртка - времени остается не так много. Поэтому куртку стоит выбирать заблаговременно. Несмотря на то, что бомберы в сезоне 2017 заполонили все магазины, кожаные косухи составляют им сильную конкуренцию. И для девушки, которая хочет выглядеть женственно и стильно, они - классный вариант. Кожа, вообще, в этом году в почете.<br />
Демисезонные куртки допускаются не просто короткие, а ультракороткие. А традиционные строгого классического кроя активно разбавлены менее строгими. Они идеально гармонируют с юбками и платьями, брюками и блузками. Хорошо смотрится жакет с укороченными рукавами, придающий образу женщины шика и лоска. Именно поэтому цена пиджаков и жакетов выше цены обычной куртки.<br />
Ультракороткие, не достающие до пояса кожаные курточки-спенсеры смотрятся стильно даже с вечерним платьем.<br />
Мегапопулярны в этом сезоне куртки-бомберы из кожи, да-да... Их носят преимущественно с джинсами, зауженными штанами и леггинсами, необычными юбками.<br />
Вернулись в моду также длинные плащи и кожаные тренчи. Вещи такой длины удачно сочетаются с любой одеждой. А вот куртки косухи из моды вообще не выходили. Как и прежде, в тренде черные, коричневые и красные, а еще металлик, пудра и голубой.<br />
Повседневные куртки представлены в стеганном варианте. Одежда со строчками в виде ромбов, полосок, клеток превращает любую скучную классику в элегантный наряд.</p>"

product_description = "<p>В последние годы сезоны сменяются так стремительно, что насладиться относительным теплом - когда платье с кедами, а поверх легкая куртка - времени остается не так много. Поэтому куртку стоит выбирать заблаговременно. Несмотря на то, что бомберы в сезоне 2017 заполонили все магазины, кожаные косухи составляют им сильную конкуренцию. И для девушки, которая хочет выглядеть женственно и стильно, они - классный вариант. Кожа, вообще, в этом году в почете.<br />
Демисезонные куртки допускаются не просто короткие, а ультракороткие. А традиционные строгого классического кроя активно разбавлены менее строгими. Они идеально гармонируют с юбками и платьями, брюками и блузками. Хорошо смотрится жакет с укороченными рукавами, придающий образу женщины шика и лоска. Именно поэтому цена пиджаков и жакетов выше цены обычной куртки.<br />
Ультракороткие, не достающие до пояса кожаные курточки-спенсеры смотрятся стильно даже с вечерним платьем.<br />
Мегапопулярны в этом сезоне куртки-бомберы из кожи, да-да... Их носят преимущественно с джинсами, зауженными штанами и леггинсами, необычными юбками.<br />
Вернулись в моду также длинные плащи и кожаные тренчи. Вещи такой длины удачно сочетаются с любой одеждой. А вот куртки косухи из моды вообще не выходили. Как и прежде, в тренде черные, коричневые и красные, а еще металлик, пудра и голубой.<br />
Повседневные куртки представлены в стеганном варианте. Одежда со строчками в виде ромбов, полосок, клеток превращает любую скучную классику в элегантный наряд.</p>"

product_short_description = "В последние годы сезоны сменяются так стремительно, что насладиться относительным теплом - когда платье с кедами, а поверх легкая куртка - времени остается не так много. Поэтому куртку стоит выбирать заблаговременно."

post_lead = "В последние годы сезоны сменяются так стремительно, что насладиться относительным теплом - когда платье с кедами, а поверх легкая куртка - времени остается не так много. Поэтому куртку стоит выбирать заблаговременно."

post_content = product_description

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


PostCategory.destroy_all

40.times do |i|
  PostCategory.create!(name: "Категория #{i}", description: "this is a description")
end  



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




















description_page = "<p>Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Donec sit amet eros. Lorem ipsum dolor sit amet, consecvtetuer adipiscing elit. Mauris fermentum dictum magna. Sed laoreet aliquam leo. Ut tellus dolor, dapibus eget, elementum vel.</p>

<p>Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu lacus. Vestibulum libero nisl, porta vel, scelerisque eget, malesuada at, neque. Vivamus eget nibh. Etiam cursus leo vel metus. Nulla facilisi. Aenean nec eros.</p>

<p>Integer rutrum ante eu lacus.Vestibulum libero nisl, porta vel, scelerisque eget, neque. Vivamus eget nibh. Etiam cursus leo vel metus. Nulla facilisi. Aenean nec eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse sollicitudin velit sed leo. Ut pharetra augue nec augue.</p>

<p>Nam elit agna,endrerit sit amet, tincidunt ac, viverra sed, nulla. Donec porta diam eu massa. Quisque diam lorem, interdum vitae,dapibus ac, scelerisque vitae, pede. Donec eget tellus non erat lacinia fermentum. Donec in velit vel ipsum auctor pulvinar. Vestibulum iaculis lacinia est. Proin dictum elementum velit. Fusce euismod consequat ante. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque sed dolor. Aliquam congue fermentum nisl.</p>

<p>Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu lacus. Vestibulum libero nisl, porta vel, scelerisque eget, malesuada at, neque. Vivamus eget nibh. Etiam cursus leo vel metus. Nulla facilisi. Aenean nec eros.</p>

<p>Integer rutrum ante eu lacus.Vestibulum libero nisl, porta vel, scelerisque egeteque. Vivamus eget nibh. Etiam cursus leo vel metus. Nulla facilisi. Aenean nec eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse sollicitudin velit sed leo. Ut pharetra augue nec augue.</p>"

Page.destroy_all

Page.create(name: "Главная", descriptor: "home", description: description_page)
Page.create(name: "Контакты", descriptor: "contacts", description: description_page)
Page.create(name: "Информаци о доставке", descriptor: "delivery_info", description: description_page)
Page.create(name: "Информаци о оплате", descriptor: "payment_info", description: description_page)
Page.create(name: "Условия обслуживания", descriptor: "terms_of_service", description: description_page)


Menu.destroy_all
MenuItem.destroy_all
Menu.create(name: "Главное меню", descriptor: "main_menu")
Menu.create(name: "Меню в футоре", descriptor: "footer_menu")


MenuItem.create(title: "Главная", menu_id: Menu.first.id, url: '/', position: 1)
MenuItem.create(title: "Контакты", menu_id: Menu.first.id, url: '/contacts', position: 2)
MenuItem.create(title: "О Компании", menu_id: Menu.first.id, url: '/about', position: 3)
MenuItem.create(title: "Тестовая страница", menu_id: Menu.first.id, url: '/', position: 4)
MenuItem.create(title: "Тестовая страница2", menu_id: Menu.first.id, menu_item_id: MenuItem.last.id, url: '/', position: 1)


last_menu_id = Menu.last.id
MenuItem.create(title: "Главная", menu_id: last_menu_id, url: '/', position: 1)
MenuItem.create(title: "Контакты", menu_id: last_menu_id, url: '/contacts', position: 2)
MenuItem.create(title: "Доставка", menu_id: last_menu_id, url: '/delivery_info', position: 3)
MenuItem.create(title: "Оплата", menu_id: last_menu_id, url: '/payment_info', position: 3)
MenuItem.create(title: "Условия обслуживания", menu_id: last_menu_id, url: '/terms_of_service', position: 4)


Banner.destroy_all
banner = Banner.new(title: "Первый баннер", descriptor: "first_banner", link: "/")
File.open("public/demo/banners/banner1.jpg") do |f|
  banner.image = f
end
banner.save




Slider.destroy_all
Slide.destroy_all

Slider.create(name: "Главный", descriptor: "main")
slider_id = Slider.first.id

3.times do |t|
  slide = Slide.new(slider_id: slider_id, name: "слайд#{t}")
  File.open("public/demo/slides/slide1.jpg") do |f|
    slide.image = f
  end
  slide.save
end




=end


####################
# Меню
####################
=begin
  
MenuItem.destroy_all

parent_item1 = MenuItem.create(title: 'Главный 1', url: '/', position: 1, menu_id: 3)
parent_item2 = MenuItem.create(title: 'Главный 2', url: '/', position: 2, menu_id: 3)
parent_item3 = MenuItem.create(title: 'Главный 3', url: '/', position: 3, menu_id: 3)



MenuItem.create(title: 'Подпункт 1', url: '/', position: 1, menu_id: 3, parent:  parent_item1)
MenuItem.create(title: 'Подпункт 2', url: '/', position: 2, menu_id: 3, parent:  parent_item1)

MenuItem.create(title: 'Подпункт 1', url: '/', position: 1, menu_id: 3, parent:  parent_item2)
MenuItem.create(title: 'Подпункт 2', url: '/', position: 2, menu_id: 3, parent:  parent_item2)

MenuItem.create(title: 'Подпункт 1', url: '/', position: 1, menu_id: 3, parent:  parent_item3)
MenuItem.create(title: 'Подпункт 2', url: '/', position: 2, menu_id: 3, parent:  parent_item3)
=end




####################
# Категории товаров
####################
=begin
ProductCategory.destroy_all

10.times do |i|
  category =  ProductCategory.new(name: "Категория #{i}", description: product_category_description, slug:"slug-category-#{i}")

  File.open("public/demo/product_categories/avatar#{rand(1..9)}.jpg") do |f|
    category.avatar = f
  end

  File.open("public/demo/product_categories/big_avatars/avatar#{rand(1..6)}.jpg") do |f|
    category.large_avatar = f
  end

  category.save
 
end

ProductCategory.all.each do |product_category|
  5.times do |i|
    category = ProductCategory.new(product_category_id: product_category.id, description: product_category_description)
    category.name = "Категория #{product_category.id}-#{i}"
    category.slug = "category-#{product_category.id}-#{i}"

    File.open("public/demo/product_categories/avatar#{rand(1..9)}.jpg") do |f|
      category.avatar = f
    end

    File.open("public/demo/product_categories/big_avatars/avatar#{rand(1..6)}.jpg") do |f|
      category.large_avatar = f
    end
    category.save
  end
end
=end 
####################
####################





####################
# Товары
####################
=begin
Product.destroy_all
ProductCategory.all.each do |product_category|
  rand(4..10).times do |t|
    product = Product.new(product_category_id: product_category.id, description: product_description, price: t * 100,
                          slug: "product#{t}", short_description: product_short_description)
    product.name = "Товар #{t}"

    File.open("public/demo/products/avatar#{rand(1..18)}.jpg") do |f|
      product.avatar = f
    end
    product.save
  end
end

Product.all.each do |product|
  5.times do |i|
    attacment = ProductAttachment.new(product_id: product.id)
    File.open("public/demo/products/avatar#{rand(1..18)}.jpg") do |f|
      attacment.image = f
    end
    attacment.save
  end
end
=end
####################
####################




####################
# Посты
####################

Post.destroy_all
last_category_id = PostCategory.last.id

10.times do |i|
  post = Post.new(name: "Запись #{i}", post_category_id: last_category_id, lead: post_lead, content: post_content, slug: "post#{i}")
  File.open("public/demo/posts/avatar#{rand(1..9)}.jpg") do |f|
    post.avatar = f
  end
  post.save
end

PostCategory.all.each do |category|
  4.times do |i|
    post = Post.new(name: "Запись #{i}", post_category_id: category.id, lead: post_lead, content: post_content, slug: "post#{i}")
    File.open("public/demo/posts/avatar#{rand(1..9)}.jpg") do |f|
      post.avatar = f
    end
    post.save
  end
end

####################
####################
