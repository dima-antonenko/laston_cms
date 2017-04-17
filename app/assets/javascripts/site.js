// require jquery
//= require jquery_ujs
//= require site/notify.js 



crud_ui = {
  success: function() {
    $.notify("Запрос отправлен", "success");
  },

  failed: function() {
    $.notify("Произошла ошибка", "error");
  }
};

product_ui = {
  success_create_back_call: function() {
  	$.notify("Запрос отправлен", "success");
    $('#back_call_phone').val('');
  },

  success_create_product_question: function() {
  	$.notify("Вопрос отправлен", "success");
    $('#product_question_name').val('');
    $('#product_question_phone').val('');
    $('#product_question_text').val('');
  },
  success_create_form_request: function() {
  	$.notify("Заявка отправлена", "success");
    $('#form_request_name').val('');
    $('#form_request_email').val('');
    $('#form_request_phone').val('');
    $('#form_request_text').val('');

  }
};

