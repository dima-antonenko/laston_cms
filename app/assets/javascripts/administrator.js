// require jquery
//= require jquery_ujs

crud_ui = {
  succes_update: function() {
  	console.log("succes_update");
    UIkit.notify({
      message: 'Товар обновлен',
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