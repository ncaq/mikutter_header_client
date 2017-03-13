Plugin.create(:mikutter_header_client) {
  class Gdk::MiraclePainter
    def header_left_markup
      if message.user[:idname]
        Pango.parse_markup("<b>#{Pango.escape(message.user.idname)}</b> #{Pango.escape(message.user.name || '')} <b>via #{Pango.escape(message[:source])}</b>")
      else
        Pango.parse_markup(Pango.escape(message.user.name || ''))
      end
    end
  end
}
