(($)->
  $.fn.categoryTree = ->
    $root = $('.sidebar-menu > .category-view')
    @.each ->
      $that = $(@)
      btn = $that.children("a").first()
      menu = $that.children(".treeview-menu").first()

      menu.find("li > a").each ->
        pad = parseInt($(@).css("margin-left")) + 10
        $(@).css {"margin-left": pad + "px"}

      if $that.hasClass('t-open')
        menu.show()
        btn.children(".fa-folder").first().removeClass("fa-folder").addClass("fa-folder-open")

      btn.click (e)->
        e.preventDefault()
        $root.find("li").removeClass("active")
        $parent = btn.parent("li")
        while $parent.length > 0 && !$parent.is($root)
          $parent.addClass("active")
          $parent = $parent.parents('li').first()

        if btn.parent("li").hasClass('t-open')
          menu.slideUp()
          btn.parent("li").removeClass("t-open").addClass("t-close")
          btn.children(".fa-folder-open").first().removeClass("fa-folder-open").addClass("fa-folder")
        else
          menu.slideDown()
          btn.parent("li").removeClass("t-close").addClass("t-open")
          btn.children(".fa-folder").first().removeClass("fa-folder").addClass("fa-folder-open")

      btn.children('i.fa-caret-down').click (e)->
        $(@).trigger 'category-menu:show', $(@).parent().data('folder-id')
        e.preventDefault()
        e.stopPropagation()

  $.fn.typeTree = ->
    @.each ->
      $that = $(@)
      btn = $that.children("a").first()
      menu = $that.children(".treeview-menu").first()

      menu.find("li > a").each ->
        pad = parseInt($(@).css("margin-left")) + 10
        $(@).css {"margin-left": pad + "px"}

      menu.show() if $that.hasClass('t-open')
      btn.click (e)->
        e.preventDefault()
        btn.parent("li").addClass("active")
        if $that.hasClass('t-open')
          menu.slideUp()
          $that.removeClass("t-open").addClass('t-close')
        else
          menu.slideDown()
          $that.removeClass("t-close").addClass('t-open')

      menu.find('li > a').click (e)->
        menu.children('li').removeClass 'active'
        $(@).parent('li').addClass 'active'

)(jQuery)

$category_menu = $('#category-menu')

showCategoryMenu = (target, folder_id)->
  $trigger_ele = $(target)
  $trigger_ele.parent().addClass('menu-show')
  $category_menu.data 'trigger-folder', $trigger_ele.parent()
  offset = $trigger_ele.offset()
  $category_menu.css top: '', left: '', bottom: '', right: ''
  top = offset.top + $trigger_ele.height() - 50 + 5
  left = offset.left
  $category_menu.css top: top, left: left
  $category_menu.show()

hideCategoryMenu = ->
  $category_menu.data('trigger-folder').removeClass 'menu-show'
  $category_menu.hide()

$(window).mouseup ->
  hideCategoryMenu()

$(".sidebar .category-view").categoryTree()
$(".sidebar .type-view").typeTree()
$('.category-view > a > i.fa-caret-down').on 'category-menu:show', (e, folder_id)->
  showCategoryMenu e.target, folder_id
  
