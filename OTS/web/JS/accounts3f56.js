window.fbAsyncInit = function() {
  FB.init({
    appId: '916039908479817',
    cookie: true, // enable cookies to allow the server to access 
    // the session
    xfbml: true, // parse social plugins on this page
    version: 'v2.2' // use version 2.2
  });
};

// Load the SDK asynchronously
/*
(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s);
  js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

// This is called with the results from from FB.getLoginStatus().
function fb_statusChangeCallback(response) {
    if (response.status === 'connected') {
        fb_sendTokenToServer(response.authResponse.accessToken);
    } 
    else if (response.status === 'not_authorized') {
        console.log('Please log into this app.');
    } else {
        console.log('Please log into Facebook.');
    }
}

function fb_checkLoginState() {
    FB.getLoginStatus(function(response) {
        fb_statusChangeCallback(response);
    });
}
var current_social_login_form ;
function sendTokenToServer(website,auth_token) {
    console.log('Welcome!  Fetching your information.... ');
    var dataString = $('#csrf_form').serialize();
    if ( current_social_login_form.hasClass('social_register') ) {
        dataString += "&"+current_social_login_form.serialize();
    }
    if(website=="facebook"){
        url = '/accounts/lg-social-auth-facebook/' ;
        dataString += "&auth_token="+auth_token;
    }
    console.log(dataString);
    $.ajax({
        type: 'post',
        url: url,
        data: dataString,
        beforeSend: function(){
            $('.page_form_loader').removeClass('hidden');
        },
        success: function(result) {
            var resp_obj = $.parseJSON(result);
            console.log(resp_obj);
             if (resp_obj.hasOwnProperty("errors")){
                // $.each( resp_obj.errors, function( key, value ) {
                //     if (key=="__all__"){
                //         console.log("form_level error");
                //         current_social_login_form.parent("div").find(".form_error_box").removeClass("hidden");
                //         current_social_login_form.parent("div").find(".  > .alert").text(value);
                //     }
                // });
                alert(resp_obj['errors']);
            }
            if (resp_obj.hasOwnProperty("redirect_url")){
                window.location = resp_obj['redirect_url'] ;
            }
        },
    }); 
}

function fb_sendTokenToServer(auth_token) {
    sendTokenToServer('facebook',auth_token);
}


$('.fbLoginBtn').click(function() {
  current_social_login_form = $(this).closest('div').find('form');
  try {
    FB.login(function(response) {
      // handle the response
      fb_statusChangeCallback(response);
    }, {
      scope: 'public_profile,email,user_friends'
    });
  } catch (err) {
    alert("Some Error Occured !");
  }
});
*/
var parse_ajax_response = function(current_form,resp){
    // console.log(resp);
    var resp_obj = $.parseJSON(resp);
    console.log(resp_obj);
    if (resp_obj.hasOwnProperty("errors")){
        $.each( resp_obj.errors, function( key, value ) {
            if (key=="__all__"){
                console.log("form_level error");
                current_form.closest("div").find(".form_error_box").removeClass("hidden");
                current_form.closest("div").find(".form_error_box > .alert").text(value);
            }
            // console.log( key + ": " + value );
            var cur_input = current_form.find("input[name*='"+key+"']");
            cur_input.siblings('.help-text').text(value);
            cur_input.closest('.form-group').addClass("has-error");     

        });
        
    }
    if (resp_obj.hasOwnProperty("success")){

        current_form.css("display","none"); 
        current_form.prev('.form_success_box').find('.alert-success').text(resp_obj['success']);
        current_form.prev(".form_success_box").removeClass("hidden");
    }
    if (resp_obj.hasOwnProperty("redirect_url")){

        // current_form.css("display","none"); 
        // current_form.prev(".form_success_box").removeClass("hidden");
        // current_form.prev(".form_error_box").removeClass("hidden");
        window.location = resp_obj.redirect_url ;
    }

};


var process_account_forms = function(current_form){

    current_form.find(".help-text").text("");
    current_form.find(".form-group").removeClass("has-error");  
    var dataString = current_form.serialize();
    var form_url = current_form.attr("action");
    console.log(dataString);
    $.ajax({
        url : form_url,
        data: dataString,
        type: 'post',
        beforeSend: function(){
            // show the loader 
            current_form.find(".form-loader").removeClass("hidden");
        },
        complete: function(){
            // hide the loader
            current_form.find(".form-loader").addClass("hidden");
        },
        success: function(return_data,textStatus, xhr){
            try{
                var resp_obj = $.parseJSON(return_data);
            }
            catch(err){
                // if (xhr.status == 200 ){
                //     location.reload();
                // }   
                alert("Error !");
                return;
            }
            if (resp_obj.hasOwnProperty("login_required")){
                $('#show_login_popup').click();
                return;
            }

            console.log(return_data);
            console.log(current_form);
            console.log(typeof return_data);
            parse_ajax_response(current_form,return_data);

        },
        error: function(xhr,status,errorThrown){
            console.log('Error in Ajax Request');
            console.log(errorThrown);
            console.log(status);
        }
    });
};

$('.signup_form_ajax').submit(function(event){
    event.preventDefault();
    process_account_forms($(this));
});

$('.login_form_ajax').submit(function(event){
    event.preventDefault(); 
    process_account_forms($(this));
});

$('.forgot_password_ajax').submit(function(event){
    event.preventDefault(); 
    process_account_forms($(this));
});

$('.change_password_ajax').submit(function(event){
    event.preventDefault(); 
    process_account_forms($(this));
});

$(document).on('click','.login_needed',function(event){
    event.preventDefault();
    $('#login_register_modal').modal('show');
    return;
});

$(document).on('click','.submit_form_link',function(event){

    event.preventDefault();
    if(!$(this).hasClass('disabled')){
        $(this).addClass("clicked_link");
        $(this).closest('form').submit();
    }
});
