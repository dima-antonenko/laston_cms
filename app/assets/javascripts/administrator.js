// require jquery
//= require jquery_ujs
//= require ckeditor/init

CKEDITOR.editorConfig = function (config) {
  // ... other configuration ...

  config.toolbar_mini = [
    ["Bold",  "Italic",  "Underline",  "Strike",  "-",  "Subscript",  "Superscript"],
  ];
  config.toolbar = "simple";

  // ... rest of the original config.js  ...
}


crud_ui = {
  succes_update: function() {
  	console.log("succes_update");
    UIkit.notify({
      message: 'Запись обновлена',
      status: 'success',
      timeout: 2000,
      pos: 'top-right'
    });
  },

  failed_update: function() {
    UIkit.notify({
      message: 'Произошла ошибка',
      status: 'danger',
      timeout: 2000,
      pos: 'top-right'
    });
  },

  destroy_list_item: function(item_id) {
    element = ".item" + item_id;
    $(element).remove();
  } 

};