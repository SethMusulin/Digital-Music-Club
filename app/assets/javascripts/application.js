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

  $('#dmc').animate({left: 380}, 1300);
//  $('.vert-line').animate({left: 293}, 1000);
  $('.side-toggle').animate({bottom: 400}, 1000);


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

//about
//  $('.about').click(function (event) {
//    event.stopPropagation();
//    $(this).text("Blog 8-bit wolf, lumbersexual Helvetica typewriter locavore fingerstache High Life irony Tumblr. Marfa deep v health goth lomo McSweeney's, pop-up stumptown iPhone Odd Future seitan selfies fap authentic bespoke. Artisan fap post-ironic, quinoa Vice McSweeney's farm-to-table lumbersexual chillwave organic Echo Park Kickstarter aesthetic occupy flexitarian. PBR&B kogi swag, health goth mumblecore fixie brunch Godard freegan hella next level before they sold out readymade. Flexitarian typewriter biodiesel, locavore fingerstache organic Neutra raw denim cardigan actually trust fund lomo Intelligentsia. Wes Anderson readymade 8-bit tousled, kale chips gastropub XOXO Etsy squid narwhal flannel Intelligentsia. 3 wolf moon cold-pressed sartorial, brunch trust fund bicycle rights blog swag Intelligentsia street art yr stumptown. Meggings Echo Park aesthetic four loko paleo. DIY pork belly bespoke, tofu McSweeney's YOLO chillwave drinking vinegar scenester cronut kitsch tote bag keffiyeh street art. Banh mi skateboard selfies selvage Pinterest, sustainable 3 wolf moon chambray pour-over cronut mlkshk post-ironic plaid four dollar toast. Dreamcatcher asymmetrical banh mi actually. Austin Shoreditch bespoke, gentrify actually pug readymade. Pop-up kogi tote bag chillwave. Bicycle rights Etsy Kickstarter, tousled occupy typewriter listicle Williamsburg iPhone kale chips mumblecore Neutra pickled church-key.").fadeIn("slow");;
//  });
//
//  $('html').click(function () {
//    $('.about').html("About the Club");
//  });

});