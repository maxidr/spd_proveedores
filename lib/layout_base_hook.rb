module SpdProviders
  class LayoutBaseHook < Redmine::Hook::ViewListener
    def view_layouts_base_html_head(context = {})
      stylesheet_link_tag('spd_providers.css', :plugin => 'spd_proveedores')
    end
  end
end
