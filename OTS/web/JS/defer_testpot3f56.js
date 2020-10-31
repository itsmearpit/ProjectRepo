
function createCookie(name, value, days) {
    var expires;

    if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        expires = "; expires=" + date.toGMTString();
    } else {
        expires = "";
    }
    document.cookie = encodeURIComponent(name) + "=" + encodeURIComponent(value) + expires + "; path=/";
}

function readCookie(name) {
    var nameEQ = encodeURIComponent(name) + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) === ' ') c = c.substring(1, c.length);
        if (c.indexOf(nameEQ) === 0) return decodeURIComponent(c.substring(nameEQ.length, c.length));
    }
    return null;
}

function eraseCookie(name) {
    createCookie(name, "", -1);
}


function placeCaretAtEnd(el) {
    el.focus();
    if (typeof window.getSelection != "undefined"
            && typeof document.createRange != "undefined") {
        var range = document.createRange();
        // console.log(">>>>>>>>>>");
        range.selectNodeContents(el);
        range.collapse(false);
        var sel = window.getSelection();
        // console.log(sel);
        // console.log(range);
        try{
        sel.removeAllRanges();
        }
        catch(e){
            console.log(e);
        }
        sel.addRange(range);
    } else if (typeof document.body.createTextRange != "undefined") {
            // console.log(">>>>>>>>>>");
        var textRange = document.body.createTextRange();
        textRange.moveToElementText(el);
        textRange.collapse(false);
        textRange.select();
    }
}

//  Initialize Plugins 


function animateScroll($parent,$child,offset,highlight_target){
    offset = offset || 0;
    $parent.animate({
        scrollTop: $child.offset().top + offset
    },800,function(){
        if (highlight_target){
           $child.removeClass('highlight_flash').addClass("highlight_flash");
        }
    });
}
function toggleFullScreen(elem) {
    // ## The below if statement seems to work better ## if ((document.fullScreenElement && document.fullScreenElement !== null) || (document.msfullscreenElement && document.msfullscreenElement !== null) || (!document.mozFullScreen && !document.webkitIsFullScreen)) {
    if ((document.fullScreenElement !== undefined && document.fullScreenElement === null) || (document.msFullscreenElement !== undefined && document.msFullscreenElement === null) || (document.mozFullScreen !== undefined && !document.mozFullScreen) || (document.webkitIsFullScreen !== undefined && !document.webkitIsFullScreen)) {
        if (elem.requestFullScreen) {
            elem.requestFullScreen();
        } else if (elem.mozRequestFullScreen) {
            elem.mozRequestFullScreen();
        } else if (elem.webkitRequestFullScreen) {
            elem.webkitRequestFullScreen(Element.ALLOW_KEYBOARD_INPUT);
        } else if (elem.msRequestFullscreen) {
            elem.msRequestFullscreen();
        }
    } else {
        if (document.cancelFullScreen) {
            document.cancelFullScreen();
        } else if (document.mozCancelFullScreen) {
            document.mozCancelFullScreen();
        } else if (document.webkitCancelFullScreen) {
            document.webkitCancelFullScreen();
        } else if (document.msExitFullscreen) {
            document.msExitFullscreen();
        }
    }
}


function goBack() {
    window.history.go(-1);

}

//  Modal

$(document).on('click','.modal_change_btn',function(){
    var current = $(this).closest('.modal-content');
    current.addClass('hidden');
    var target = $(this).attr("data-target");
    $("#"+target).removeClass('hidden');
});





function getSelectionBoundaryElement(isStart) {
    // to get parent call like this
    // getSelectionBoundaryElement("start")
    var range, sel, container;
    if (document.selection) {
        range = document.selection.createRange();
        range.collapse(isStart);
        return range.parentElement();
    } else {
        sel = window.getSelection();
        if (sel.getRangeAt) {
            if (sel.rangeCount > 0) {
                range = sel.getRangeAt(0);
            }
        } else {
            // Old WebKit
            range = document.createRange();
            range.setStart(sel.anchorNode, sel.anchorOffset);
            range.setEnd(sel.focusNode, sel.focusOffset);

            // Handle the case when the selection was selected backwards (from the end to the start in the document)
            if (range.collapsed !== sel.isCollapsed) {
                range.setStart(sel.focusNode, sel.focusOffset);
                range.setEnd(sel.anchorNode, sel.anchorOffset);
            }
       }

        if (range) {
           container = range[isStart ? "startContainer" : "endContainer"];

           // Check if the container is a text node and return its parent if so
           return container.nodeType === 3 ? container.parentNode : container;
        }   
    }
}

$(document).ready(function() {
    if ($('.summernote_div').length > 0){
      $('.summernote_div').summernote({
        toolbar: [
          //[groupname, [button list]]
          ['style', ['style','bold', 'italic', 'underline', 'clear']],
          ['font', ['superscript', 'subscript']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['insert',['picture','table','hr','specialChar']]
        ],
        onInit: function(){
        },
       
        onImageUpload: function(files,editor,welEditable) {
            var file = files[0];
            if (!file.type.match('image.*')) {
              console.log("Error !! Not an Image !! ");
              return;
            }
            var current_summernote = $(this);
            var old_orientation=1;
            loadImage.parseMetaData(file,function(mydata){
                console.log(mydata);
                
                if (mydata.exif) {
                    old_orientation = mydata.exif.get('Orientation');
                    console.log("Image Orientation : "+old_orientation);
                }
                var loadingImage = loadImage(file,function(img){
                    if(img.type === "error") {
                        console.log("Error loading image ");
                    } 
                    else {
                        
                        // document.body.appendChild(img);
                        var img_tag = $('<img>',{'src':img.toDataURL()});
                        current_summernote.summernote("insertImage", img.toDataURL(file.type,0.9),"awesome");
                        return;
                    }
                },{maxWidth:900,canvas:true,orientation:old_orientation});
            });
            current_summernote.closest('.modal').css('overflow-y','auto');
        }
      });
    }
    if ($('.summernote_div').length > 0){
        $('.summernote_basic').summernote({
            toolbar: [
              //[groupname, [button list]]
              ['style', ['bold', 'italic', 'underline', 'clear']],
              ['para', ['ul', 'ol', 'paragraph']],
              ['insert',['table','hr','specialChar']]
            ]
        });
    }
  // Initialize Token Input

});


function convert_to_summernote(element,init_html){
    element.summernote({
    minHeight: 60,
    focus:true,
    toolbar: [
      //[groupname, [button list]]
      ['style', ['bold', 'italic', 'underline', 'clear']],
      ['font', ['superscript', 'subscript']],
      ['color', ['color']],
      ['para', ['ul', 'ol']],
      ['insert',['picture','specialChar']]
    ],
    onInit: function(){
        if(init_html){
            $(this).summernote("insertNode",$(init_html)[0])
            $(this).summernote("insertText"," ");
        }
    },

    onImageUpload: function(files,editor,welEditable) {
        var file = files[0];
        if (!file.type.match('image.*')) {
          console.log("Error !! Not an Image !! ");
          return;
        }
        var current_summernote = $(this);
        var old_orientation=1;
        loadImage.parseMetaData(file,function(mydata){
            console.log(mydata);
            
            if (mydata.exif) {
                old_orientation = mydata.exif.get('Orientation');
                console.log("Image Orientation : "+old_orientation);
            }
            var loadingImage = loadImage(file,function(img){
                if(img.type === "error") {
                    console.log("Error loading image ");
                } 
                else {
                    
                    // document.body.appendChild(img);
                    var img_tag = $('<img>',{'src':img.toDataURL()});
                    current_summernote.summernote("insertImage", img.toDataURL(file.type,0.9),"awesome");
                    return;
                }
            },{maxWidth:900,canvas:true,orientation:old_orientation});
        });
        current_summernote.closest('.modal').css('overflow-y','auto');
    }
  });
}
if($('.minimal_summernote_div').length > 0){
    $('.minimal_summernote_div').each(function(){

        convert_to_summernote($(this));
    });
}

$(document).on('click','.dropdown_custom>a',function(event){
    event.preventDefault();
    $(this).parent().toggleClass('opened');
});


Object.defineProperty(Number.prototype,'fileSize',{value:function(a,b,c,d){
 return (a=a?[1e3,'k','B']:[1024,'K','B'],b=Math,c=b.log,
 d=c(this)/c(a[0])|0,this/b.pow(a[0],d)).toFixed(2)
 +' '+(d?(a[1]+'MGTPEZY')[--d]+a[2]:'Bytes');
},writable:false,enumerable:false});



$(document).mouseup(function (e)
{
    
    var container = $("#search_wrapper");

    if (!container.is(e.target) // if the target of the click isn't the container...
        && container.has(e.target).length === 0) // ... nor a descendant of the container
    {
        container.addClass('hidden');

    }


   

});


function isScrolledIntoView(elem)
{
    if ( elem.length == 0 ){
        return;
    }
    var $elem = $(elem);
    var $window = $(window);

    var docViewTop = $window.scrollTop();
    var docViewBottom = docViewTop + $window.height();

    var elemTop = $elem.offset().top;
    if (docViewBottom+400 >= elemTop)
     return true;
    // var elemBottom = elemTop + $elem.height();

    // return ((elemBottom <= docViewBottom) && (elemTop >= docViewTop));
}

$(window).scroll(function(){
    // console.log("scroll");
    // console.log( $(window).scrollTop());
    // console.log($('.load_more_btn').offset().top);
    if ($(window).width() >= 768){
         if (isScrolledIntoView($('.load_more_btn'))){
            $('.load_more_btn').click();
         }
     }
});






// -------------------------------------------------------------


$(function () {
  $('[data-toggle="popover"]').popover();
})




$(document).on('submit','.ajax_form',function(event){
    event.preventDefault();
    $(this).closest('.dropdown').removeClass('open');
    console.log("Form SUbmitted");
    if ($(this).hasClass('need_confirmation')){
        if(!confirm("Are you sure??")){
            return;
        }
    }
    
    var current_form = $(this);
    
    var dataString = current_form.serialize();
    var form_url = current_form.attr("action");

    console.log("form submitted to : " +form_url);
    console.log("with data: "+dataString);
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
            // current_form.find(".form-loader").addClass("hidden");
        },
        success: function(return_data){
            console.log( return_data);
            var resp_obj = $.parseJSON(return_data);
            // console.log(resp_obj);
            if (resp_obj.hasOwnProperty("success")){
                if (resp_obj.hasOwnProperty("redirect_url")){
                    // current_form.css("display","none"); 
                    window.location = resp_obj.redirect_url ;
                }
                
                if (current_form.hasClass('delete_form')) {
                    current_form.closest("div").find(".form_success_box").removeClass("hidden");
                    current_form.closest("div").find(".form_success_box > .alert").text(resp_obj['success']);
                    current_form.find(".form-loader").addClass("hidden");
                    current_form.remove();
                    return;
                }
                if (current_form.hasClass('delete_parent')) {
                    current_form.closest('div').remove();
                    return;
                }
                if(current_form.hasClass('hide-parent-modal')){
                    current_form.closest('.modal').modal('hide');
                }
                if(current_form.hasClass('no-modal')){
                    return;
                }
                
                
                
            }

            else if (resp_obj.hasOwnProperty("login_required")){
                $('#login_register_modal').modal('show');
            }

            else  if (resp_obj.hasOwnProperty("errors")){
                $.each( resp_obj.errors, function( key, value ) {
                    if (key=="__all__"){
                        console.log("form_level error");
                        current_form.closest("div").find(".form_error_box").removeClass("hidden");
                        current_form.closest("div").find(".form_error_box > .alert").text(value);
                    }
                    var cur_input = current_form.find(".form-control[name*='"+key+"']");
                    cur_input.siblings('.help-text').text(value);
                    cur_input.closest('.form-group').addClass("has-error");     
                });
            }
            current_form.find(".form-loader").addClass("hidden");
        },
        error: function(xhr,status,errorThrown){
            console.log('Error in Ajax Request');
            console.log(errorThrown);
            console.log(status);
            current_form.closest("div").find(".form_error_box").removeClass("hidden");
            current_form.closest("div").find(".form_error_box > .alert").text(errorThrown);
            current_form.find(".form-loader").addClass("hidden");
            
        }
    });
});




// ########################## SEARCH #########################



// $(document).on('keydown','body',function(e){
//     if (e.keyCode == 8){
//         e.preventDefault();
//         console.log("Backspace Pressed ! Preventing going back !");
//     }
// });
// 
// 

$(document).on('click','#save_test_settings',function(event){
    event.preventDefault();
    var current_btn = $(this);
    // var test_instructions = encodeURIComponent($('.test_instructions').code());
    var current_form = $('#create_test_form');
    var error_box = current_form.find('.form_error_box');
    var error_msg="";
    if( $.trim(current_form.find('input[name="test_title"]').val()) == "" ){
        error_msg+="<p>Please Provide a <strong>Test Title</strong>.</p>";
    }
    var time_limit = $.trim(current_form.find('input[name="time_limit"]').val());
    if( parseInt(time_limit)<0){
       error_msg+="<p>Please Provide a positive value for <strong>Time Limit</strong>.</p>";
    }
    var correct_answer_marks = $.trim(current_form.find('input[name="correct_answer_marks"]').val());
    if( parseInt(time_limit)<0){
       error_msg+="<p>Please Provide a positive value for <strong>Correct Answer Marks</strong>.</p>";
    }
    error_box.addClass('hidden');
    error_box.find('.alert').html("");
    if (error_msg!=""){
        error_box.find('.alert').append(error_msg);
        error_box.removeClass('hidden');
        animateScroll($('body'),current_form,-200,false);
        return;
    }
    var dataString = $('#create_test_form').serialize();
    // dataString += "&instructions="+test_instructions;
    
    var category = current_form.find('#test_category').val();
    console.log(category);
    console.log(category+'_field');
    var value = $('.'+category+'_field').find('.form-control').val();
    dataString += '&value='+value;

    console.log(dataString);
    var form_url = $('#test_settings_form').attr("action");
    $.ajax({
        url : form_url,
        data : dataString,
        type : 'post',
        beforeSend: function(){
            current_form.find(".form-loader").removeClass("hidden");
            current_btn.button("loading");
        },
        complete: function(){
            // hide the loader
            // current_form.find(".form-loader").addClass("hidden");
            
        },
        success: function(return_data){
            console.log( return_data);
            current_btn.button('reset');
            var resp_obj = $.parseJSON(return_data);                
            if (resp_obj.hasOwnProperty("login_required")){
                $('#login_register_modal').modal('show');
                return;
            }
            if (resp_obj.hasOwnProperty("redirect_url")){
                // current_form.addClass('hidden');
                // current_form.siblings('.file_upload_form').addClass('hidden');
                
                // current_form.siblings('.file_upload_form').remove();
                // current_form.remove();
                // current_form.closest("div").find(".form_success_box").removeClass("hidden");
                // current_form.closest("div").find(".form_success_box > .alert").text(resp_obj['success']);
                window.location = resp_obj.redirect_url ;
            }
            else{
                current_form.find(".form-loader").addClass("hidden");
                
                if (resp_obj.hasOwnProperty("errors")){
                    $.each( resp_obj.errors, function( key, value ) {
                        if (key=="__all__"){
                            console.log("form_level error");
                            current_form.closest("div").find(".form_error_box").removeClass("hidden");
                            current_form.closest("div").find(".form_error_box > .alert").text(value);
                        }
                        var cur_input = current_form.find(".form-control[name*='"+key+"']");
                        cur_input.siblings('.help-text').text(value);
                        cur_input.closest('.form-group').addClass("has-error");     
                    });
                }
            }
        },
        error: function(xhr,status,errorThrown){
            console.log('Error in Ajax Request');
            console.log(errorThrown);
            console.log(status);
            current_form.closest("div").find(".form_error_box").removeClass("hidden");
            current_form.closest("div").find(".form_error_box > .alert").text(errorThrown);
            current_form.find(".form-loader").addClass("hidden");
            current_btn.button('reset');
        }
    });

});

$(document).find('select').each(function(){
  var selected_value = $(this).attr('data-selected-value');
  if (selected_value){
    $(this).find('option[value="'+selected_value+'"]').attr("selected","selected");
  }
  $(this).change();
});

$(document).on('click','a.nofollow',function(event){
    event.preventDefault();
});





$(window).scroll(function() {
  if ($(this).scrollTop() > 100) {
      $('.navbar-inverse').css({'background-color':'#37799E'});
  } else {
     $('.navbar-inverse').css({'background-color':'rgba(2,2,2,0)'});
  }
});
// $(document).on('dblclick','.start_test_btn_container',function(){
//     console.log("Ad COntainer Clicked ");
//     $('#start_test_modal').modal('show');
// });

// $(document).on('click','.start_test_btn_container > div',function(event){
//     event.stopPropagation();
//     console.log("Ad Clicked ! Propagation Stopped");
// });

$('#start_test_modal').on('show.bs.modal', function (e) {
    opened_start_test_modal = false;
});
/*
var opened_start_test_modal = false;
$(document).on('click','.start_test_btn',function(event){
    event.preventDefault();
    if(readCookie("click")!="y"){
        // this is the first time
        if(! opened_start_test_modal ){
            opened_start_test_modal = true;
            
            setTimeout(function(){
               $('#start_test_modal').modal('show');
            },3000);
            
        }
        window.scrollBy(0,75);
        createCookie("click","y",0.3);
    }
    else{
       
    }
    
    
});
$(document).on('dblclick','.start_test_btn',function(event){
    if(readCookie("click")=="y"){
        opened_start_test_modal = true;
        setTimeout(function(){
           $('#start_test_modal').modal('show');
        },300);
    }
});
*/
// -------------------------------------------
// var opened_start_test_modal = false;
// $(document).on('dblclick','.start_test_btn',function(event){
//     console.log("Double Click !");
//     var cookie_val = readCookie("click_count");
//     if(cookie_val){
//         // if the cookie exists
//         var count = parseInt(readCookie("click_count"));
//         if (count <= 1){
//             count +=1;
//             createCookie("click_count",count);
//             if(! opened_start_test_modal ){
//             opened_start_test_modal = true;
//                 setTimeout(function(){
//                    $('#start_test_modal').modal('show');
//                 },300);
//             }
//         }
//         else{
//         }
//     }
//     else{
//         // otherwise, create cookie and 
//         createCookie("click_count","1");
//         if(! opened_start_test_modal ){
//             opened_start_test_modal = true;
//             setTimeout(function(){
//                $('#start_test_modal').modal('show');
//             },300);
//         }
//     }
    
// });

// $(document).on('click','.start_test_btn',function(event){
//     event.preventDefault();

//     var cookie_val = readCookie("click_count");
//     console.log("nothing"+cookie_val);

//     if(parseInt(cookie_val)>1){
//         var count =parseInt(cookie_val);
//         count +=1;
//         createCookie("click_count",count);
//         window.scrollBy(0,75);
//         if(! opened_start_test_modal ){
//             opened_start_test_modal = true;
//             setTimeout(function(){
//                $('#start_test_modal').modal('show');
//             },3000);
            
//         }
//     }
// });

var opened_start_test_modal = false;
$(document).on('click','.start_test_btn',function(event){
    event.preventDefault();
    window.scrollBy(0,75);
    // console.log("Start Test !");
    if(! opened_start_test_modal ){
        opened_start_test_modal = true;
        setTimeout(function(){
           $('#start_test_modal').modal('show');
        },3000);
    }
});


$(document).on('click','.tab_menu a',function(event){
    event.preventDefault();
    $(this).closest('.tab_menu').find('a.active').removeClass('active');
    $(this).addClass('active');
    var $target = $($(this).attr('data-target'));
    console.log($target);
    var $target_container = $($(this).attr('data-target-container'));
    console.log($target_container);
    $target_container.find('.active.tab_targets').removeClass('active').addClass('hidden');
    $target.removeClass('hidden').addClass('active');
});



$(document).on('click','.login_required',function(event){
    event.preventDefault();
    $('#login_register_modal').modal('show');
});

$(document).on('click','.scroll_to',function(event){
    event.preventDefault();
    $target = $($(this).attr('data-scroll-target'));
    animateScroll($('body'),$target,-50,false);
});


$(document).on('click','.hide_target',function(event){
    event.preventDefault();
    $($(this).attr("data-target")).addClass("hidden");
});




// var updateProgress = function($progress_div,value){
//     $progress_div.find('.progress-bar').css('width',value+"%");
//     $progress_div.find('.progress-bar').text(value+"%");
//     $progress_div.find('.progress-bar').attr('aria-valuenow',value);
//     $progress_div.find('.progress-bar .sr-only').text(value+"%");
//     if (value == 100){
//        $progress_div.find('.progress-bar').removeClass('active'); 
//        $progress_div.removeClass('active'); 
//     }
// }
var updateProgress = function($progress_div,value){
    console.log($progress_div);
    $progress_div.find('.progress-bar').css('width',value+"%");
    $progress_div.find('.progress-bar').text(value+"%");
    $progress_div.find('.progress-bar').attr('aria-valuenow',value);
    $progress_div.find('.progress-bar .sr-only').text(value+"%");
    if (value == 100){
       $progress_div.find('.progress-bar').removeClass('active'); 
       $progress_div.addClass('uploaded').removeClass('uploading');
       console.log("Adding uploaded class from : "+$progress_div.find('.file_name').text()); 
    }
}
var sendForUpload = function(file,current_form){
    console.log(current_form);
    file_upload_wrapper = current_form.find('.file_upload_wrapper');
    formData.append('files[]',file,file.name);
    file_upload_div = current_form.find('.file_uploaded_div.template').clone();
    file_upload_div.removeClass('template').removeClass('hidden');
    var file_name = file.name;
    if (file_name.length > 45){
        file_name = file_name.slice(0,20)+"..."+$('.file_name:last').text().slice(20);
    }   
    file_upload_div.find('.file_name').text(file_name);
    file_upload_div.find('.file_name').attr('title',file.name);
    file_upload_div.find('.file_size').text(" ("+file.size.fileSize()+")");
    file_upload_wrapper.append(file_upload_div);
    console.log(file_upload_div);
    console.log(file_upload_div.find('.progress:first'));
    setTimeout(function() {
        updateProgress(file_upload_div.find('.progress:first'),50);
        setTimeout(function() {
            updateProgress(file_upload_div.find('.progress:first'),100);
        },1000);
    },500);

};
/*
xhr: function () {
    var xhr = new window.XMLHttpRequest();
    xhr.upload.addEventListener("progress", function (evt) {
        if (evt.lengthComputable) {
            var percentComplete = evt.loaded / evt.total;
            console.log(percentComplete);
            $('.progress').css({
                width: percentComplete * 100 + '%'
            });
            if (percentComplete === 1) {
                $('.progress').addClass('hide');
            }
        }
    }, false);
    xhr.addEventListener("progress", function (evt) {
        if (evt.lengthComputable) {
            var percentComplete = evt.loaded / evt.total;
            console.log(percentComplete);
            $('.progress').css({
                width: percentComplete * 100 + '%'
            });
        }
    }, false);
    return xhr;
} 
*/

var ajax_array = [];
var uploaded_count = 0;
$(document).on('ajax','.class_discussion_attach_file',function(){
    var current_index = ajax_array.length; // this will be 0 initially.
    console.log("Uploading file : "+current_index);
    var $file_input = $(this);
    // if all the files have been initiated for upload then
    console.log(ajax_array);
    console.log($file_input[0].files);
    if (typeof $file_input[0].files[uploaded_count] === 'undefined') { console.log("######## Uploaded All ###########");uploaded_count=0; $file_input.val("");return false; }
    
    var current_form = $(this).closest('form');
    // There are 
    var $corresponding_file_upload_div = $(current_form.find('.file_uploaded_div.active')[current_index]);

    var file = $(this)[0].files[uploaded_count];
    var formData = new FormData();
    formData.append('file',file,file.name);
    formData.append('file_name',file.name);
    var csrf = $('#csrf_form').find('input[name="csrfmiddlewaretoken"]').val();
    formData.append('csrfmiddlewaretoken',csrf);
    ajax_array[current_index] = $.ajax({
        url:'/upload-file/',
        data:formData,
        type : 'post',
        xhr: function () {
            var xhr = new window.XMLHttpRequest();
            xhr.upload.addEventListener("progress", function (evt) {
                if (evt.lengthComputable) {
                    console.log(evt.loaded);
                    console.log(evt.total);
                    var percentComplete = Math.round((evt.loaded / evt.total)*90);
                    // console.log(percentComplete);
                    // console.log($file_input.closest('form'));
                    
                    // console.log($corresponding_file_upload_div);
                    updateProgress($corresponding_file_upload_div,percentComplete);
                    
                }
            }, false);
            xhr.addEventListener("progress", function (evt) {
                if (evt.lengthComputable) {
                    console.log(evt.loaded);
                    console.log(evt.total);
                    var percentComplete = Math.round((evt.loaded / evt.total)*90);
                    console.log(percentComplete);
                    console.log($corresponding_file_upload_div);
                    updateProgress($corresponding_file_upload_div,percentComplete);
                }
            }, false);
            return xhr;
        } ,
        processData: false,
        contentType: false,
        beforeSend:function(){},
        complete:function(){
            
        },
        success:function(return_data){
            console.log(return_data);
            var resp_obj = $.parseJSON(return_data);  
            console.log(file.name);
            console.log(resp_obj);
            if (resp_obj.hasOwnProperty("success")){
                updateProgress($corresponding_file_upload_div,100);
                $corresponding_file_upload_div.attr("data-file_id",resp_obj['file_id']);
            }
            if (resp_obj.hasOwnProperty("errors")){
                console.log("Removing uploaded class from : "+$corresponding_file_upload_div.find('.file_name').text());
                $corresponding_file_upload_div.removeClass('uploaded').addClass('bg-danger text-muted').removeClass('uploading');
                $corresponding_file_upload_div.find('.progress').replaceWith("<span class='text-red'>"+resp_obj['errors']['file']+"</span>")
            }
        },
        error: function(xhr,status,errorThrown){
            console.log('Error in Ajax Request');
            console.log(errorThrown);
            console.log(status);
        }
        
    });
    uploaded_count++;
    $file_input.trigger('ajax');
    
});



$('.class_discussion_attach_file').change(function(){
    fileSelect = $(this)[0];
    // console.log($(this)[0]);
    current_form = $(this).closest('form');
    file_upload_wrapper = current_form.find('.file_upload_wrapper');
    var files = fileSelect.files;
    // sendForUpload(files,current_form);

    for (var i=0; i<files.length; i++){
        var file = files[i];
        file_upload_div = current_form.find('.file_uploaded_div.template').clone();
        file_upload_div.removeClass('template').removeClass('hidden').addClass("active uploading");
        // Make Ajax Call here
        var file_name = file.name;
        if (file_name.length > 20){
            file_name = file_name.slice(0,12)+"..."+file_name.slice(file_name.length -5);
            console.log("Filename Changed !!! ");
        }   
        file_upload_div.find('.file_name').text(file_name);
        file_upload_div.find('.file_name').attr('title',file.name);
        file_upload_div.find('.file_size').text(" ("+file.size.fileSize()+")");
        file_upload_wrapper.append(file_upload_div);
    }
    $(this).trigger('ajax');
});


$(document).on('click','.file_uploaded_div .delete',function(){
    // 
    var file_div = $(this).closest('.file_uploaded_div');
    file_upload_wrapper = $(this).closest('.file_upload_wrapper');
    var index_file = file_upload_wrapper.find('.file_uploaded_div.active').index(file_div); 
    console.log("The Ajax Request cancelled at index: "+index_file);
    console.log(ajax_array);
    try {
        console.log(ajax_array[index_file].abort());
    }
    catch(err){
        console.log("No Ajax Call to Abort");
    }
    file_div.removeClass('uploaded uploading').addClass('hidden');
    var file_id = file_div.attr('data-file_id');
    var file_name = file_div.find('.file_name').text();
    console.log(">>>>>>> Deleting Uploaded File with Name : "+ file_name +" , File id : "+ dataString);
    if (file_id){
        var csrf = $('#csrf_form').find('input[name="csrfmiddlewaretoken"]').val();
        var dataString = "csrfmiddlewaretoken="+csrf;
        dataString+= "&file_id="+file_id;
        $.ajax({
            url : '/delete-uploaded-file/',
            data : dataString,
            type : 'post',
            success: function(return_data){
                console.log( return_data);
                var resp_obj = $.parseJSON(return_data);                
                
            },
            error: function(xhr,status,errorThrown){
                console.log('Error in Ajax Request');
                console.log(errorThrown);
                console.log(status);
            }
        });
    }
});



$(document).on('submit','.upload_batch_material_form',function(event){
    event.preventDefault();
    console.log("Form SUbmitted");
    var current_form = $(this);
    current_form.find(".form-loader").removeClass("hidden");

    var dataString = current_form.serialize();
    
    var files ="";
    current_form.siblings('.file_upload_form').find('.file_uploaded_div.uploaded').each(function(){
        files += $(this).attr("data-file_id")+",";
    });
    if(current_form.siblings('.file_upload_form').find('.file_uploaded_div.uploading').length>0){
        alert("Please Wait ! One or more files are getting uploaded !");
        return;
    }
    console.log(files);
    dataString += "&files="+files;

    var form_url = current_form.attr("action");

    console.log("form submitted to : " +form_url);
    console.log("with data: "+dataString);
    $.ajax({
        url : form_url,
        data: dataString,
        type: 'post',
        beforeSend: function(){
            // show the loader 
            
        },
        complete: function(){
            // hide the loader
            // current_form.find(".form-loader").addClass("hidden");
        },
        success: function(return_data){
            console.log( return_data);
            var resp_obj = $.parseJSON(return_data);
            // console.log(resp_obj);
            if (resp_obj.hasOwnProperty("success")){
               // On Successful File Upload 
                if (resp_obj.hasOwnProperty("redirect_url")){
                    // current_form.css("display","none"); 
                    window.location = resp_obj.redirect_url ;
                }
            }
            else  if (resp_obj.hasOwnProperty("errors")){
                $.each( resp_obj.errors, function( key, value ) {
                    if (key=="__all__"){
                        console.log("form_level error");
                        current_form.closest("div").find(".form_error_box").removeClass("hidden");
                        current_form.closest("div").find(".form_error_box > .alert").text(value);
                    }
                    var cur_input = current_form.find(".form-control[name*='"+key+"']");
                    cur_input.siblings('.help-text').text(value);
                    cur_input.closest('.form-group').addClass("has-error");     
                });
                current_form.find(".form-loader").addClass("hidden");
            }
            
        },
        error: function(xhr,status,errorThrown){
            console.log('Error in Ajax Request');
            console.log(errorThrown);
            console.log(status);
            current_form.closest("div").find(".form_error_box").removeClass("hidden");
            current_form.closest("div").find(".form_error_box > .alert").text(errorThrown);
            current_form.find(".form-loader").addClass("hidden");
            
        }
    });
});

$(document).on('click','a.submit_current_form',function(event){
    event.preventDefault();
    $(this).closest('form').submit();
});