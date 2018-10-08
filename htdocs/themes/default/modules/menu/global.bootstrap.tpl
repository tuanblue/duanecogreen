  
<!-- BEGIN: submenu -->
<ul class="w-nav-list level_2">
    <!-- BEGIN: loop -->
    <li id="menu-item-28" class="menu-item menu-item-type-taxonomy menu-item-object-category w-nav-item level_2 menu-item-28">
        <a class="w-nav-anchor level_2" href="{SUBMENU.link}">
            <span class="w-nav-title">{SUBMENU.target}>{SUBMENU.title_trim}</span>
            <span class="w-nav-arrow"></span>
        </a> 
    </li>
    <!-- END: loop -->
</ul>
<!-- END: submenu -->

<!-- BEGIN: main -->
<div class="l-subheader-cell at_right">
    <nav class="w-nav type_desktop animation_height ush_menu_1">
        <a class="w-nav-control" href="javascript:void(0);"></a>
        <ul class="w-nav-list level_1 hover_underline hidden">
            <li id="menu-item-30" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home w-nav-item level_1 menu-item-30">
                <a class="w-nav-anchor level_1" href="{THEME_SITE_HREF}">
                    <span class="w-nav-title">{LANG.Home}</span>
                    <span class="w-nav-arrow"></span>
                 </a>
            </li>
         <!-- BEGIN: top_menu -->
            <li  id="menu-item-26" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children w-nav-item level_1 menu-item-26">
                <a  class="w-nav-anchor level_1" href="{TOP_MENU.link}">
                    <span class="w-nav-title">{TOP_MENU.title_trim}</span>
                    <span class="w-nav-arrow"></span>
                </a>
                 
                 <!-- BEGIN: sub --> {SUB} <!-- END: sub -->

            </li>
        <!-- END: top_menu --> 
        </ul>
        <div class="w-nav-options hidden" onclick='return {"mobileWidth":900,"mobileBehavior":1}'></div>
    </nav>
    <div class="w-search layout_fullscreen ush_search_1">
        <div class="w-search-background"></div>
    </div>
</div>
<!-- END: main -->
