// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function () {

  $('h1').animate({right: 210}, 1300);
  $('.vert-line').animate({left: 293}, 1000);


//player toggle
  $('.open-player').click(function () {
    var pic = this.dataset.pic;
    var source = this.dataset.source;
    var title = this.dataset.title;
    var obj = $("object");
    if ($('.Pl-title').text() !== title) {
      $('.Pl-title').html(title);
      $("object param[name='flashvars']").attr("value", source);
      $("embed").attr("flashvars", source);
      $("object").remove();
      $(".player-here").append(obj);
      $('.content img').attr("src", pic);
    }
  });

  //playlist menu toggle
  $(".toggle-footer").click(function () {
    $("#footer-content").slideToggle("slow");
  });

  $(".close").click(function () {
    $("#footer-content").slideToggle("slow");
  });

  //playlist toggle on album click
  $('.open-player').click(function () {
    if ($('#footer-content').is(':visible'))
      $("#footer-content").slideToggle("slow");
  });


//song fields
  function add_fields(link, association, content) {
    var new_id = new Date().getTime();
    var regexp = new RegExp("new_" + association, "g");
    $(link).parent().before(content.replace(regexp, new_id));
  }


//sign-up
  $('#request').click(function (event) {
    event.stopPropagation();
    $(this).addClass("email");
    $('.email-send').addClass("email-send-show");
    $(this).attr("placeholder", "Enter your email...");
  });

  $('html').click(function () {
    $('#request').removeClass("email");
    $('.email-send').removeClass("email-send-show");
    $('#request').attr("placeholder", "Join the Club");
  });


});