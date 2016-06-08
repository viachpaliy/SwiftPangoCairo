s/context: ContextProtocol/context: Pango.ContextProtocol/g
s/cr: ContextProtocol/cr: cairo.ContextProtocol/g
s/FontProtocol: FontProtocol/FontProtocol: Pango.FontProtocol/
s/Font: Font/Font: Pango.Font/
s/FontMap: FontMap/FontMap: Pango.FontMap/
s/FontMapProtocol: FontMapProtocol/FontMapProtocol: Pango.FontMapProtocol/
s/pango_cairo_font_map_new_for_font_type(cast(fonttype.ptr))/pango_cairo_font_map_new_for_font_type(fonttype.ptr.pointee)/
