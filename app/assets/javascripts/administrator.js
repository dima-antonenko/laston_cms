// require jquery
//= require jquery_ujs

crud_ui = {
  succes_update: function() {
    UIkit.notify({
      message: 'Товар обновлен',
      status: 'success',
      timeout: 1000,
      pos: 'top-right'
    });
  },

  failed_update: function() {
    UIkit.notify({
      message: 'Произошла ошибка',
      status: 'danger',
      timeout: 1000,
      pos: 'top-right'
    });
  },

  destroy_list_item: function(item_id) {
    element = ".item" + item_id;
    $(element).remove();
    console.log(item_id);
  } 

};