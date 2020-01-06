$(function(){
  function buildHTML(message){
    if (message.image) {
      var html = 
      `<div class="message">
        <div class="message_info">
          <p class="message_info__talker">
            ${message.user}
          </p>
          <p class="message_info__date">
            ${message.created_at}
          </p>
        </div>
        <p class="message_info__date">
          ${message.content}
        </p>
        <img class="lower-message__image" src="${message.image}">
      </div>`
    } else {
      var html =
      `<div class="message">
        <div class="message_info">
          <p class="message_info__talker">
            ${message.user}
          </p>
          <p class="message_info__date">
            ${message.created_at}
          </p>
        </div>
        <p class="message_info__date">
          ${message.content}
        </p>
      </div>`
    }
    return html
  }
  $('#new_message').on('submit', function(e){
    e.preventDefault()
    var formData = new FormData(this);
    var url = $(this).attr('action');
    $.ajax({
      url: url,
      type: 'POST',
      data: formData,  
      dataType: 'json',
      processData: false,
      contentType: false
    }).done(function(data) {
      var html = buildHTML(data);
      $('.messages').append(html);  
      $('.messages').animate({ scrollTop: $('.messages')[0].scrollHeight});    
      $('form')[0].reset();
      $(".submit-btn").prop("disabled", false);
      console.log(html);
    }).fail(function() {
      alert("メッセージ送信に失敗しました");
      $('form')[0].reset();
      $(".submit-btn").prop("disabled", false);
    });
  })
});