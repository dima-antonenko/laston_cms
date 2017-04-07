# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170406143229) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrators", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "administrators", ["email"], name: "index_administrators_on_email", unique: true, using: :btree
  add_index "administrators", ["reset_password_token"], name: "index_administrators_on_reset_password_token", unique: true, using: :btree

  create_table "back_calls", force: :cascade do |t|
    t.string   "phone"
    t.string   "product_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.json     "product_data", default: {}, null: false
  end

  add_index "back_calls", ["phone"], name: "index_back_calls_on_phone", using: :btree
  add_index "back_calls", ["product_id"], name: "index_back_calls_on_product_id", using: :btree

  create_table "banners", force: :cascade do |t|
    t.string "title"
    t.string "descriptor"
    t.string "image"
    t.string "link"
  end

  add_index "banners", ["descriptor"], name: "index_banners_on_descriptor", using: :btree
  add_index "banners", ["image"], name: "index_banners_on_image", using: :btree
  add_index "banners", ["link"], name: "index_banners_on_link", using: :btree
  add_index "banners", ["title"], name: "index_banners_on_title", using: :btree

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "ckeditor_assets", ["type"], name: "index_ckeditor_assets_on_type", using: :btree

  create_table "form_requests", force: :cascade do |t|
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "name",       default: "", null: false
    t.string   "email",      default: "", null: false
    t.string   "phone",      default: "", null: false
    t.text     "text",       default: "", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer "product_id"
    t.integer "cart_id"
    t.integer "quantity",      default: 1
    t.integer "order_id"
    t.string  "product_name"
    t.string  "product_price"
    t.integer "total_price",   default: 0, null: false
  end

  add_index "line_items", ["cart_id"], name: "index_line_items_on_cart_id", using: :btree
  add_index "line_items", ["order_id"], name: "index_line_items_on_order_id", using: :btree
  add_index "line_items", ["product_id"], name: "index_line_items_on_product_id", using: :btree
  add_index "line_items", ["quantity"], name: "index_line_items_on_quantity", using: :btree

  create_table "menu_items", force: :cascade do |t|
    t.string  "title"
    t.string  "url"
    t.integer "menu_id",      default: 0
    t.integer "position",     default: 1
    t.integer "menu_item_id", default: 0, null: false
  end

  add_index "menu_items", ["menu_id"], name: "index_menu_items_on_menu_id", using: :btree
  add_index "menu_items", ["position"], name: "index_menu_items_on_position", using: :btree
  add_index "menu_items", ["title"], name: "index_menu_items_on_title", using: :btree
  add_index "menu_items", ["url"], name: "index_menu_items_on_url", using: :btree

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.string "descriptor"
  end

  add_index "menus", ["descriptor"], name: "index_menus_on_descriptor", using: :btree
  add_index "menus", ["name"], name: "index_menus_on_name", using: :btree

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "customer_name",    default: "", null: false
    t.string   "customer_email",   default: "", null: false
    t.string   "customer_phone",   default: "", null: false
    t.string   "customer_city",    default: "", null: false
    t.integer  "total_price",      default: 0,  null: false
    t.string   "customer_address", default: "", null: false
    t.integer  "size_type",        default: 0,  null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string "name"
    t.string "descriptor"
    t.text   "description"
    t.string "meta_title",       default: "", null: false
    t.text   "meta_description", default: "", null: false
    t.text   "meta_keywords",    default: "", null: false
  end

  add_index "pages", ["descriptor"], name: "index_pages_on_descriptor", using: :btree
  add_index "pages", ["name"], name: "index_pages_on_name", using: :btree

  create_table "post_categories", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.text     "description"
    t.string   "avatar"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "post_category_id", default: 0,  null: false
    t.string   "meta_title",       default: "", null: false
    t.text     "meta_description", default: "", null: false
    t.text     "meta_keywords",    default: "", null: false
  end

  add_index "post_categories", ["avatar"], name: "index_post_categories_on_avatar", using: :btree
  add_index "post_categories", ["description"], name: "index_post_categories_on_description", using: :btree
  add_index "post_categories", ["name"], name: "index_post_categories_on_name", using: :btree
  add_index "post_categories", ["slug"], name: "index_post_categories_on_slug", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "name"
    t.integer  "post_category_id"
    t.string   "slug"
    t.text     "content"
    t.string   "avatar"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "lead"
    t.string   "meta_title",       default: "", null: false
    t.text     "meta_description", default: "", null: false
    t.text     "meta_keywords",    default: "", null: false
  end

  add_index "posts", ["avatar"], name: "index_posts_on_avatar", using: :btree
  add_index "posts", ["content"], name: "index_posts_on_content", using: :btree
  add_index "posts", ["name"], name: "index_posts_on_name", using: :btree
  add_index "posts", ["post_category_id"], name: "index_posts_on_post_category_id", using: :btree
  add_index "posts", ["slug"], name: "index_posts_on_slug", using: :btree

  create_table "product_attachments", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "product_attachments", ["image"], name: "index_product_attachments_on_image", using: :btree
  add_index "product_attachments", ["product_id"], name: "index_product_attachments_on_product_id", using: :btree

  create_table "product_categories", force: :cascade do |t|
    t.string  "name"
    t.string  "slug"
    t.string  "avatar"
    t.text    "description"
    t.string  "banner"
    t.integer "product_category_id", default: 0
    t.string  "meta_title",          default: ""
    t.text    "meta_description",    default: ""
    t.text    "meta_keywords",       default: ""
  end

  add_index "product_categories", ["avatar"], name: "index_product_categories_on_avatar", using: :btree
  add_index "product_categories", ["description"], name: "index_product_categories_on_description", using: :btree
  add_index "product_categories", ["name"], name: "index_product_categories_on_name", using: :btree
  add_index "product_categories", ["slug"], name: "index_product_categories_on_slug", using: :btree

  create_table "product_questions", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.text     "text"
    t.string   "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "product_questions", ["name"], name: "index_product_questions_on_name", using: :btree
  add_index "product_questions", ["phone"], name: "index_product_questions_on_phone", using: :btree
  add_index "product_questions", ["product_id"], name: "index_product_questions_on_product_id", using: :btree
  add_index "product_questions", ["text"], name: "index_product_questions_on_text", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.string   "slug"
    t.string   "avatar"
    t.text     "description"
    t.string   "seo_title"
    t.string   "seo_description"
    t.string   "seo_keywords"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.boolean  "active",              default: true
    t.integer  "product_category_id", default: 0
    t.string   "meta_title"
    t.text     "meta_description"
    t.text     "meta_keywords"
    t.string   "gallery",             default: [],                array: true
    t.integer  "qty",                 default: 1,    null: false
    t.boolean  "stock",               default: true, null: false
    t.text     "short_description",   default: "",   null: false
  end

  add_index "products", ["avatar"], name: "index_products_on_avatar", using: :btree
  add_index "products", ["description"], name: "index_products_on_description", using: :btree
  add_index "products", ["name"], name: "index_products_on_name", using: :btree
  add_index "products", ["price"], name: "index_products_on_price", using: :btree
  add_index "products", ["seo_description"], name: "index_products_on_seo_description", using: :btree
  add_index "products", ["seo_keywords"], name: "index_products_on_seo_keywords", using: :btree
  add_index "products", ["seo_title"], name: "index_products_on_seo_title", using: :btree
  add_index "products", ["slug"], name: "index_products_on_slug", using: :btree

  create_table "site_variables", force: :cascade do |t|
    t.string "title"
    t.string "descriptor"
    t.string "content"
  end

  add_index "site_variables", ["content"], name: "index_site_variables_on_content", using: :btree
  add_index "site_variables", ["descriptor"], name: "index_site_variables_on_descriptor", using: :btree
  add_index "site_variables", ["title"], name: "index_site_variables_on_title", using: :btree

  create_table "sliders", force: :cascade do |t|
    t.string "name"
    t.string "descriptor"
  end

  add_index "sliders", ["descriptor"], name: "index_sliders_on_descriptor", using: :btree
  add_index "sliders", ["name"], name: "index_sliders_on_name", using: :btree

  create_table "slides", force: :cascade do |t|
    t.string  "name"
    t.string  "image"
    t.integer "slider_id"
    t.text    "description"
  end

  add_index "slides", ["description"], name: "index_slides_on_description", using: :btree
  add_index "slides", ["image"], name: "index_slides_on_image", using: :btree
  add_index "slides", ["name"], name: "index_slides_on_name", using: :btree
  add_index "slides", ["slider_id"], name: "index_slides_on_slider_id", using: :btree

end
